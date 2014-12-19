#!/usr/bin/env Rscript
suppressPackageStartupMessages(library(strucchange))
suppressPackageStartupMessages(library(optparse))

option_list <- list(
    make_option(c("-b", "--breakpoints"), type="character", default="keine",
                help="Use user given breakpoints instead of searching;"),
    make_option(c("-i", "--inputfiles"), type="character", default="keine",
                help="Input files to analyse;"),
    make_option(c("-o", "--outputdirectory"), type="character", default="keine",
                help="Directory for pdfs (control plots) to be saved\n
                if non is given, the path of the inputfiles is used")
    )   

opt <- parse_args(OptionParser(option_list=option_list))

# use given breakpoints ?
search_bps = TRUE
bps <- vector()
if (opt$breakpoints!="keine") {
    search_bps = FALSE
    bps <- as.numeric(unlist(strsplit(opt$breakpoints,":")))
}

print(bps)

# inputfiles ?
if (opt$inputfiles!="keine") {
    files <-(unlist(strsplit(opt$inputfiles,":")))
} else {
    files <- c("~/Desktop/sarah/iq/test/tables/Pat-18_Thickness_0_Addition_0_Phase_8_rec_FBP.csv",
               "~/Desktop/sarah/iq/test/tables/Pat-18_Thickness_0_Addition_2_Phase_9_rec_FBP.csv",
               "~/Desktop/sarah/iq/test/tables/Pat-18_Thickness_5_Addition_0_Phase_8_rec_FBP.csv",
               "~/Desktop/sarah/iq/test/tables/Pat-18_Thickness_5_Addition_2_Phase_8_rec_FBP.csv",
               "~/Desktop/sarah/iq/test/tables/Pat-18_Thickness_8_Addition_0_Phase_8_rec_FBP.csv",
               "~/Desktop/sarah/iq/test/tables/Pat-18_Thickness_8_Addition_2_Phase_8_rec_FBP.csv")
#                Steier6.csv",
#                "~/Desktop/sarah/iq/Luedecke7.csv",
#                "~/Desktop/sarah/iq/Eck10.csv",
#                "~/Desktop/sarah/iq/Adams8.csv",
#                    "~/Desktop/sarah/iq/Cin.csv",
#                "~/Desktop/sarah/iq/Eckert5.csv")
}

# outputpath
outpath <- character()
if (opt$outputdirectory!="keine") {
    outpath = opt$outputdirectory
} else {
    # get path by path of first input file
    x = unlist(strsplit(files[1],"/"))
    if (length(x) > 1) outpath = paste(x[1:(length(x) -1)], collapse = "/")
}

gab = 7
sepgab = 5
nbreaks = 4
myocutup = 130
myocutdown = 0

bpson  = 1
myoon = 0
exon = 1
updown = 1

upslope <- c(0,1,0,0)

#####################
# for testing: Vector begin with index 1


# loop over files
for(f in files){
    sheet <- read.csv(file=f, sep=",", head=TRUE)
    xvec <- sheet$Length
    yvec <- sheet$HU
    
    # extract file name
    name <- unlist(strsplit( tail( unlist(strsplit(f,"/")), 1), ".csv"))
    empty_str <- character()

    if (length(outpath) == 0) pdffile = paste(name,".pdf", sep="")
    else pdffile = paste(outpath,"/",name,".pdf", sep="")

    
    if (opt$inputfiles!="keine") pdf(pdffile, width=16, height=9)
    plot( xvec, yvec, main=f, pch=20)#, xlim = c(70,80), ylim = c(-820, 150))

    septum <- vector()  # points of septum for breakpointssearch
    seple = NA          # first point of septum from left
    sepri = NA          # last (or first from right)
    sepbp <- vector()   # breakpoints for the septum
    wall <- vector()    # points of outer wall for breakpointssearch
    wallle = NA 
    wallri = NA         # first point of outer wall form right
    wallbp <- vector()  # breakpoints for the wall
    exle <- vector()    # left extrema
    exri <- vector()    # right extrema

    if (search_bps) {
        # find outer myocardial wall
        for (i in length(xvec):1) {
            count = 0
            y = yvec[i]
            if (y > 0) {
                wallri = i
                # more points ?
                for (j in wallri:(wallri-20)) {
                    if (yvec[j] > 0) count = count + 1
                }
                if (count > 12) {
                    # find last point
                    for (j in wallri:1) {
                        if (yvec[j] > myocutup) {
                            #really the last?
                            islast = TRUE
                            for (k in j:(j-5)) {
                                if (yvec[k] < myocutup) islast = FALSE
                            }
                            if (islast) {
                                wallle = j
                                break
                            }            
                        }
                    }
                }
                if (myoon) {
                    lines(c(xvec[wallle-gab],xvec[wallle-gab]), c(1500, -1500), lty=3, col="red")
                    lines(c(xvec[wallri+gab],xvec[wallri+gab]), c(1500, -1500), lty=3, col="red")
                }
                wall <- yvec[(wallle-gab):(wallri+gab)]
                bptmp <- breakpoints(wall ~ 1, breaks=2, h=5)[[1]]
                wallbp = bptmp+wallle-gab
                break
            }
        }
        
        # find septum area
        tmpvec <- yvec[1:(wallle-20)]
        xmin = which.min(tmpvec)
        ymin = min(tmpvec)
        diff = 100
        
        # find next left and right with +100
        # left:
        for (i in xmin:0) {
            if (yvec[i] > (ymin + diff)) {
                seple = i
                break
            }
        }
        # right:
        for (i in xmin:wallle) {
            if (yvec[i] > (ymin + diff)) {
                sepri = i
                break
            }
        }
        if (myoon) {
            lines(c(xvec[seple-sepgab],xvec[seple-sepgab]), c(1500, -1500), lty=3, col="green")
            lines(c(xvec[sepri+sepgab],xvec[sepri+sepgab]), c(1500, -1500), lty=3, col="green")
        }
        septum <- yvec[(seple-sepgab):(sepri+sepgab)]
        bptmp <- breakpoints(septum ~ 1, breaks=2, h=5)[[1]]
        sepbp <- bptmp+seple-gab
        
        bps <- c(sepbp,wallbp)
        cat("breakpoints=",paste(bps[1], bps[2], bps[3], bps[4], sep=":"),"\n")
    }
    
    # 1st loop over breakpoints
    for(i in 1:nbreaks) {
        
        bp = bps[i]
        if (bpson == 1) lines(c(xvec[bp],xvec[bp]), c(1500, -1500), lty=2)
        
        if (exon){
            # find local extrema left
            for (j in bp:1) {
                #upslope ?
                a = yvec[j]
                b = yvec[j+1]
                if (upslope[i] == 1) {
                    a = yvec[j+1]
                    b = yvec[j]
                }
                if (a < b ) {
                    exle[i] = j+1
                    lines(c(xvec[exle[i]],xvec[exle[i]]), c(1500,-1500), col="blue", lty=3)
                    break
                }      
            }
            
            # find local extrema right
            for (j in bp:length(xvec)) {
                #upslope ?
                a = yvec[j]
                b = yvec[j-1]
                if (upslope[i] == 1) {
                    a = yvec[j-1]
                    b = yvec[j]
                }
                if (a > b ) {
                    exri[i] = j-1
                    lines(c(xvec[exri[i]],xvec[exri[i]]), c(1500,-1500), col="blue", lty=3)
                    break
                }      
            }
        }
    }
    
    # find 25% and 75% lines
    if (updown == 1) {

        cat("index,delta,y0pc,y100pc\n")
        
        for(i in 1:nbreaks) {
            bp = bps[i]
            upex = yvec[exri[i]]
            downex = yvec[exle[i]]

            up =  downex + (upex - downex)*0.75
            down = downex + (upex - downex)*0.25
            lines(c(xvec[exle[i]],xvec[exri[i]]), c(up, up), col="red", lty=3)
            lines(c(xvec[exle[i]],xvec[exri[i]]), c(down, down), col="red", lty=3)
            lines(c(xvec[exle[i]],xvec[exri[i]]), c(upex, upex), col="blue", lty=3)
            lines(c(xvec[exle[i]],xvec[exri[i]]), c(downex, downex), col="blue", lty=3)

            # find excact x-value for 25% and 75%
            delta_le_x = xvec[exle[i]]
            delta_le_y = exle[i]
            delta_ri_x = xvec[exri[i]]
            delta_ri_y = exri[i]
  
            # left
            x = delta_le_x
            for(k in exle[i]:exri[i]) {
                j = xvec[k]
                if (upslope[i]) {
                    if (yvec[k] > down) {
                        x = k-1
                        break
                    }
                }
                else {
                    if (yvec[k] < down) {
                        x = k-1
                        break
                    }
                }
            }  
 
            # f(x) = mx + n
            lines(c(xvec[x+1], xvec[x]), c(yvec[x+1],yvec[x]))
            m = (yvec[x+1] - yvec[x])/(xvec[x+1]-xvec[x])
            n = yvec[x] - m*xvec[x]                    
            delta_le_x = (down - n)/m
            
            lines(c(delta_le_x,delta_le_x), c(1500,-1500), col="red", lty=3)
            
            # right
            for(k in exri[i]:exle[i]) {
                j = xvec[k]
                if (upslope[i]) {
                    if (yvec[k] < up) {
                        x = k
                        break
                    }
                }
                else {
                    if (yvec[k] > up) {
                        x = k
                        break
                    }
                }
            }  
            # f(x) = mx + n
            lines(c(xvec[x+1], xvec[x]), c(yvec[x+1],yvec[x]))
            m = (yvec[x+1] - yvec[x])/(xvec[x+1]-xvec[x])
            n = yvec[x] - m*xvec[x]                    
            delta_ri_x = (up - n)/m
            
            
            delta = delta_ri_x - delta_le_x
            
            lines(c(delta_ri_x,delta_ri_x), c(1500,-1500), col="red", lty=3)

            # something's wrong here, have to change down and up later
            # because downex = upvalue and upex = downvalue
            if (upslope[i]) {
                downex = yvec[exri[i]]
                upex = yvec[exle[i]]            
            }
            cat(paste("d_",i,",", delta,",", upex, ",", downex, sep=""), "\n")
        }
    }
    if (opt$inputfiles!="keine") dev.off()
    
}
