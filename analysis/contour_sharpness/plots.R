sheet <- read.csv(file="~/Kardio/ImageQuality/analysis/contour_sharpness/results/out.csv", sep=",", head=TRUE,na.strings = "")
lookup <- read.csv(file="~/Kardio/ImageQuality/analysis/contour_sharpness/lookup.csv", sep=",", head=TRUE,na.strings = "")

d1_a_t8_a0 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
d1_a_t8_a1 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
d1_a_t8_a2 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
d1_a_t8_a3 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
d1_a_t8_a5 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
d1_a_t8_a7 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

d1_f_t8_a0 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
d1_f_t8_a1 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
d1_f_t8_a2 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
d1_f_t8_a3 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
d1_f_t8_a5 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
d1_f_t8_a7 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

d2_a_t8_a0 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
d2_a_t8_a1 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
d2_a_t8_a2 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
d2_a_t8_a3 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
d2_a_t8_a5 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
d2_a_t8_a7 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

d2_f_t8_a0 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
d2_f_t8_a1 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
d2_f_t8_a2 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
d2_f_t8_a3 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
d2_f_t8_a5 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
d2_f_t8_a7 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

d3_a_t8_a0 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
d3_a_t8_a1 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
d3_a_t8_a2 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
d3_a_t8_a3 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
d3_a_t8_a5 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
d3_a_t8_a7 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

d3_f_t8_a0 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
d3_f_t8_a1 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
d3_f_t8_a2 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
d3_f_t8_a3 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
d3_f_t8_a5 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
d3_f_t8_a7 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

d4_a_t8_a0 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
d4_a_t8_a1 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
d4_a_t8_a2 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
d4_a_t8_a3 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
d4_a_t8_a5 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
d4_a_t8_a7 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

d4_f_t8_a0 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
d4_f_t8_a1 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
d4_f_t8_a2 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
d4_f_t8_a3 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
d4_f_t8_a5 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
d4_f_t8_a7 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]


h1_a_t8_a0 <- (sheet$max1-sheet$min1)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
h1_a_t8_a1 <- (sheet$max1-sheet$min1)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
h1_a_t8_a2 <- (sheet$max1-sheet$min1)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
h1_a_t8_a3 <- (sheet$max1-sheet$min1)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
h1_a_t8_a5 <- (sheet$max1-sheet$min1)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
h1_a_t8_a7 <- (sheet$max1-sheet$min1)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

h1_f_t8_a0 <- (sheet$max1-sheet$min1)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
h1_f_t8_a1 <- (sheet$max1-sheet$min1)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
h1_f_t8_a2 <- (sheet$max1-sheet$min1)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
h1_f_t8_a3 <- (sheet$max1-sheet$min1)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
h1_f_t8_a5 <- (sheet$max1-sheet$min1)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
h1_f_t8_a7 <- (sheet$max1-sheet$min1)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

h2_a_t8_a0 <- (sheet$max2-sheet$min2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
h2_a_t8_a1 <- (sheet$max2-sheet$min2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
h2_a_t8_a2 <- (sheet$max2-sheet$min2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
h2_a_t8_a3 <- (sheet$max2-sheet$min2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
h2_a_t8_a5 <- (sheet$max2-sheet$min2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
h2_a_t8_a7 <- (sheet$max2-sheet$min2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

h2_f_t8_a0 <- (sheet$max2-sheet$min2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
h2_f_t8_a1 <- (sheet$max2-sheet$min2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
h2_f_t8_a2 <- (sheet$max2-sheet$min2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
h2_f_t8_a3 <- (sheet$max2-sheet$min2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
h2_f_t8_a5 <- (sheet$max2-sheet$min2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
h2_f_t8_a7 <- (sheet$max2-sheet$min2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

h3_a_t8_a0 <- (sheet$max3-sheet$min3)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
h3_a_t8_a1 <- (sheet$max3-sheet$min3)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
h3_a_t8_a2 <- (sheet$max3-sheet$min3)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
h3_a_t8_a3 <- (sheet$max3-sheet$min3)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
h3_a_t8_a5 <- (sheet$max3-sheet$min3)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
h3_a_t8_a7 <- (sheet$max3-sheet$min3)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

h3_f_t8_a0 <- (sheet$max3-sheet$min3)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
h3_f_t8_a1 <- (sheet$max3-sheet$min3)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
h3_f_t8_a2 <- (sheet$max3-sheet$min3)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
h3_f_t8_a3 <- (sheet$max3-sheet$min3)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
h3_f_t8_a5 <- (sheet$max3-sheet$min3)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
h3_f_t8_a7 <- (sheet$max3-sheet$min3)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

h4_a_t8_a0 <- (sheet$max4-sheet$min4)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
h4_a_t8_a1 <- (sheet$max4-sheet$min4)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
h4_a_t8_a2 <- (sheet$max4-sheet$min4)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
h4_a_t8_a3 <- (sheet$max4-sheet$min4)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
h4_a_t8_a5 <- (sheet$max4-sheet$min4)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
h4_a_t8_a7 <- (sheet$max4-sheet$min4)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

h4_f_t8_a0 <- (sheet$max4-sheet$min4)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
h4_f_t8_a1 <- (sheet$max4-sheet$min4)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
h4_f_t8_a2 <- (sheet$max4-sheet$min4)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
h4_f_t8_a3 <- (sheet$max4-sheet$min4)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
h4_f_t8_a5 <- (sheet$max4-sheet$min4)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
h4_f_t8_a7 <- (sheet$max4-sheet$min4)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]

m1_a_t8_a0 <- h1_a_t8_a0 / d1_a_t8_a0
m1_a_t8_a1 <- h1_a_t8_a1 / d1_a_t8_a1
m1_a_t8_a2 <- h1_a_t8_a2 / d1_a_t8_a2
m1_a_t8_a3 <- h1_a_t8_a3 / d1_a_t8_a3
m1_a_t8_a5 <- h1_a_t8_a5 / d1_a_t8_a5
m1_a_t8_a7 <- h1_a_t8_a7 / d1_a_t8_a7

m1_f_t8_a0 <- h1_f_t8_a0 / d1_f_t8_a0
m1_f_t8_a1 <- h1_f_t8_a1 / d1_f_t8_a1
m1_f_t8_a2 <- h1_f_t8_a2 / d1_f_t8_a2
m1_f_t8_a3 <- h1_f_t8_a3 / d1_f_t8_a3
m1_f_t8_a5 <- h1_f_t8_a5 / d1_f_t8_a5
m1_f_t8_a7 <- h1_f_t8_a7 / d1_f_t8_a7

m2_a_t8_a0 <- h2_a_t8_a0 / d2_a_t8_a0
m2_a_t8_a1 <- h2_a_t8_a1 / d2_a_t8_a1
m2_a_t8_a2 <- h2_a_t8_a2 / d2_a_t8_a2
m2_a_t8_a3 <- h2_a_t8_a3 / d2_a_t8_a3
m2_a_t8_a5 <- h2_a_t8_a5 / d2_a_t8_a5
m2_a_t8_a7 <- h2_a_t8_a7 / d2_a_t8_a7

m2_f_t8_a0 <- h2_f_t8_a0 / d2_f_t8_a0
m2_f_t8_a1 <- h2_f_t8_a1 / d2_f_t8_a1
m2_f_t8_a2 <- h2_f_t8_a2 / d2_f_t8_a2
m2_f_t8_a3 <- h2_f_t8_a3 / d2_f_t8_a3
m2_f_t8_a5 <- h2_f_t8_a5 / d2_f_t8_a5
m2_f_t8_a7 <- h2_f_t8_a7 / d2_f_t8_a7

m3_a_t8_a0 <- h3_a_t8_a0 / d3_a_t8_a0
m3_a_t8_a1 <- h3_a_t8_a1 / d3_a_t8_a1
m3_a_t8_a2 <- h3_a_t8_a2 / d3_a_t8_a2
m3_a_t8_a3 <- h3_a_t8_a3 / d3_a_t8_a3
m3_a_t8_a5 <- h3_a_t8_a5 / d3_a_t8_a5
m3_a_t8_a7 <- h3_a_t8_a7 / d3_a_t8_a7

m3_f_t8_a0 <- h3_f_t8_a0 / d3_f_t8_a0
m3_f_t8_a1 <- h3_f_t8_a1 / d3_f_t8_a1
m3_f_t8_a2 <- h3_f_t8_a2 / d3_f_t8_a2
m3_f_t8_a3 <- h3_f_t8_a3 / d3_f_t8_a3
m3_f_t8_a5 <- h3_f_t8_a5 / d3_f_t8_a5
m3_f_t8_a7 <- h3_f_t8_a7 / d3_f_t8_a7

m4_a_t8_a0 <- h4_a_t8_a0 / d4_a_t8_a0
m4_a_t8_a1 <- h4_a_t8_a1 / d4_a_t8_a1
m4_a_t8_a2 <- h4_a_t8_a2 / d4_a_t8_a2
m4_a_t8_a3 <- h4_a_t8_a3 / d4_a_t8_a3
m4_a_t8_a5 <- h4_a_t8_a5 / d4_a_t8_a5
m4_a_t8_a7 <- h4_a_t8_a7 / d4_a_t8_a7

m4_f_t8_a0 <- h4_f_t8_a0 / d4_f_t8_a0
m4_f_t8_a1 <- h4_f_t8_a1 / d4_f_t8_a1
m4_f_t8_a2 <- h4_f_t8_a2 / d4_f_t8_a2
m4_f_t8_a3 <- h4_f_t8_a3 / d4_f_t8_a3
m4_f_t8_a5 <- h4_f_t8_a5 / d4_f_t8_a5
m4_f_t8_a7 <- h4_f_t8_a7 / d4_f_t8_a7


d1_a_t8_means <- c(mean(d1_a_t8_a0),mean(d1_a_t8_a1),mean(d1_a_t8_a2),mean(d1_a_t8_a3),mean(d1_a_t8_a5),mean(d1_a_t8_a7))
d1_a_t8_sds <- c(sd(d1_a_t8_a0),sd(d1_a_t8_a1),sd(d1_a_t8_a2),sd(d1_a_t8_a3),sd(d1_a_t8_a5),sd(d1_a_t8_a7))

d1_f_t8_means <- c(mean(d1_f_t8_a0),mean(d1_f_t8_a1),mean(d1_f_t8_a2),mean(d1_f_t8_a3),mean(d1_f_t8_a5),mean(d1_f_t8_a7))
d1_f_t8_sds <- c(sd(d1_f_t8_a0),sd(d1_f_t8_a1),sd(d1_f_t8_a2),sd(d1_f_t8_a3),sd(d1_f_t8_a5),sd(d1_f_t8_a7))

m1_a_t8_means <- c(mean(m1_a_t8_a0),mean(m1_a_t8_a1),mean(m1_a_t8_a2),mean(m1_a_t8_a3),mean(m1_a_t8_a5),mean(m1_a_t8_a7))
m1_a_t8_sds <- c(sd(m1_a_t8_a0),sd(m1_a_t8_a1),sd(m1_a_t8_a2),sd(m1_a_t8_a3),sd(m1_a_t8_a5),sd(m1_a_t8_a7))

m1_f_t8_means <- c(mean(m1_f_t8_a0),mean(m1_f_t8_a1),mean(m1_f_t8_a2),mean(m1_f_t8_a3),mean(m1_f_t8_a5),mean(m1_f_t8_a7))
m1_f_t8_sds <- c(sd(m1_f_t8_a0),sd(m1_f_t8_a1),sd(m1_f_t8_a2),sd(m1_f_t8_a3),sd(m1_f_t8_a5),sd(m1_f_t8_a7))

d2_a_t8_means <- c(mean(d2_a_t8_a0),mean(d2_a_t8_a1),mean(d2_a_t8_a2),mean(d2_a_t8_a3),mean(d2_a_t8_a5),mean(d2_a_t8_a7))
d2_a_t8_sds <- c(sd(d2_a_t8_a0),sd(d2_a_t8_a1),sd(d2_a_t8_a2),sd(d2_a_t8_a3),sd(d2_a_t8_a5),sd(d2_a_t8_a7))

d2_f_t8_means <- c(mean(d2_f_t8_a0),mean(d2_f_t8_a1),mean(d2_f_t8_a2),mean(d2_f_t8_a3),mean(d2_f_t8_a5),mean(d2_f_t8_a7))
d2_f_t8_sds <- c(sd(d2_f_t8_a0),sd(d2_f_t8_a1),sd(d2_f_t8_a2),sd(d2_f_t8_a3),sd(d2_f_t8_a5),sd(d2_f_t8_a7))

m2_a_t8_means <- c(mean(m2_a_t8_a0),mean(m2_a_t8_a1),mean(m2_a_t8_a2),mean(m2_a_t8_a3),mean(m2_a_t8_a5),mean(m2_a_t8_a7))
m2_a_t8_sds <- c(sd(m2_a_t8_a0),sd(m2_a_t8_a1),sd(m2_a_t8_a2),sd(m2_a_t8_a3),sd(m2_a_t8_a5),sd(m2_a_t8_a7))

m2_f_t8_means <- c(mean(m2_f_t8_a0),mean(m2_f_t8_a1),mean(m2_f_t8_a2),mean(m2_f_t8_a3),mean(m2_f_t8_a5),mean(m2_f_t8_a7))
m2_f_t8_sds <- c(sd(m2_f_t8_a0),sd(m2_f_t8_a1),sd(m2_f_t8_a2),sd(m2_f_t8_a3),sd(m2_f_t8_a5),sd(m2_f_t8_a7))

d3_a_t8_means <- c(mean(d3_a_t8_a0),mean(d3_a_t8_a1),mean(d3_a_t8_a2),mean(d3_a_t8_a3),mean(d3_a_t8_a5),mean(d3_a_t8_a7))
d3_a_t8_sds <- c(sd(d3_a_t8_a0),sd(d3_a_t8_a1),sd(d3_a_t8_a2),sd(d3_a_t8_a3),sd(d3_a_t8_a5),sd(d3_a_t8_a7))

d3_f_t8_means <- c(mean(d3_f_t8_a0),mean(d3_f_t8_a1),mean(d3_f_t8_a2),mean(d3_f_t8_a3),mean(d3_f_t8_a5),mean(d3_f_t8_a7))
d3_f_t8_sds <- c(sd(d3_f_t8_a0),sd(d3_f_t8_a1),sd(d3_f_t8_a2),sd(d3_f_t8_a3),sd(d3_f_t8_a5),sd(d3_f_t8_a7))

m3_a_t8_means <- c(mean(m3_a_t8_a0),mean(m3_a_t8_a1),mean(m3_a_t8_a2),mean(m3_a_t8_a3),mean(m3_a_t8_a5),mean(m3_a_t8_a7))
m3_a_t8_sds <- c(sd(m3_a_t8_a0),sd(m3_a_t8_a1),sd(m3_a_t8_a2),sd(m3_a_t8_a3),sd(m3_a_t8_a5),sd(m3_a_t8_a7))

m3_f_t8_means <- c(mean(m3_f_t8_a0),mean(m3_f_t8_a1),mean(m3_f_t8_a2),mean(m3_f_t8_a3),mean(m3_f_t8_a5),mean(m3_f_t8_a7))
m3_f_t8_sds <- c(sd(m3_f_t8_a0),sd(m3_f_t8_a1),sd(m3_f_t8_a2),sd(m3_f_t8_a3),sd(m3_f_t8_a5),sd(m3_f_t8_a7))

d4_a_t8_means <- c(mean(d4_a_t8_a0),mean(d4_a_t8_a1),mean(d4_a_t8_a2),mean(d4_a_t8_a3),mean(d4_a_t8_a5),mean(d4_a_t8_a7))
d4_a_t8_sds <- c(sd(d4_a_t8_a0),sd(d4_a_t8_a1),sd(d4_a_t8_a2),sd(d4_a_t8_a3),sd(d4_a_t8_a5),sd(d4_a_t8_a7))

d4_f_t8_means <- c(mean(d4_f_t8_a0),mean(d4_f_t8_a1),mean(d4_f_t8_a2),mean(d4_f_t8_a3),mean(d4_f_t8_a5),mean(d4_f_t8_a7))
d4_f_t8_sds <- c(sd(d4_f_t8_a0),sd(d4_f_t8_a1),sd(d4_f_t8_a2),sd(d4_f_t8_a3),sd(d4_f_t8_a5),sd(d4_f_t8_a7))

m4_a_t8_means <- c(mean(m4_a_t8_a0),mean(m4_a_t8_a1),mean(m4_a_t8_a2),mean(m4_a_t8_a3),mean(m4_a_t8_a5),mean(m4_a_t8_a7))
m4_a_t8_sds <- c(sd(m4_a_t8_a0),sd(m4_a_t8_a1),sd(m4_a_t8_a2),sd(m4_a_t8_a3),sd(m4_a_t8_a5),sd(m4_a_t8_a7))

m4_f_t8_means <- c(mean(m4_f_t8_a0),mean(m4_f_t8_a1),mean(m4_f_t8_a2),mean(m4_f_t8_a3),mean(m4_f_t8_a5),mean(m4_f_t8_a7))
m4_f_t8_sds <- c(sd(m4_f_t8_a0),sd(m4_f_t8_a1),sd(m4_f_t8_a2),sd(m4_f_t8_a3),sd(m4_f_t8_a5),sd(m4_f_t8_a7))

plot(c(1,2,3,4,5,6), d1_a_t8_means, ylim = c(0,4))
points(c(1,2,3,4,5,6), d1_f_t8_means, col="red")
for(i in 1:6){
    lines(c(i,i),c((d1_a_t8_means-d1_a_t8_sds)[i], (d1_a_t8_means+d1_a_t8_sds)[i]), lend="butt")
    lines(c(i-0.1, i+0.1), c((d1_a_t8_means-d1_a_t8_sds)[i], (d1_a_t8_means-d1_a_t8_sds)[i]))
    lines(c(i-0.1, i+0.1), c((d1_a_t8_means+d1_a_t8_sds)[i], (d1_a_t8_means+d1_a_t8_sds)[i]))
}

plot(c(1,2,3,4,5,6), m1_a_t8_means, ylim = c(0,300))
points(c(1,2,3,4,5,6), m1_f_t8_means, col="red")
for(i in 1:6){
    lines(c(i,i),c((m1_a_t8_means-m1_a_t8_sds)[i], (m1_a_t8_means+m1_a_t8_sds)[i]), lend="butt")
    lines(c(i-0.1, i+0.1), c((m1_a_t8_means-m1_a_t8_sds)[i], (m1_a_t8_means-m1_a_t8_sds)[i]))
    lines(c(i-0.1, i+0.1), c((m1_a_t8_means+m1_a_t8_sds)[i], (m1_a_t8_means+m1_a_t8_sds)[i]))
}

plot(c(1,2,3,4,5,6), d2_a_t8_means, ylim = c(0,4))
points(c(1,2,3,4,5,6), d2_f_t8_means, col="red")
for(i in 1:6){
    lines(c(i,i),c((d2_a_t8_means-d2_a_t8_sds)[i], (d2_a_t8_means+d2_a_t8_sds)[i]), lend="butt")
    lines(c(i-0.1, i+0.1), c((d2_a_t8_means-d2_a_t8_sds)[i], (d2_a_t8_means-d2_a_t8_sds)[i]))
    lines(c(i-0.1, i+0.1), c((d2_a_t8_means+d2_a_t8_sds)[i], (d2_a_t8_means+d2_a_t8_sds)[i]))
}

plot(c(1,2,3,4,5,6), m2_a_t8_means, ylim = c(0,300))
points(c(1,2,3,4,5,6), m2_f_t8_means, col="red")
for(i in 1:6){
    lines(c(i,i),c((m2_a_t8_means-m2_a_t8_sds)[i], (m2_a_t8_means+m2_a_t8_sds)[i]), lend="butt")
    lines(c(i-0.1, i+0.1), c((m2_a_t8_means-m2_a_t8_sds)[i], (m2_a_t8_means-m2_a_t8_sds)[i]))
    lines(c(i-0.1, i+0.1), c((m2_a_t8_means+m2_a_t8_sds)[i], (m2_a_t8_means+m2_a_t8_sds)[i]))
}

plot(c(1,2,3,4,5,6), d3_a_t8_means, ylim = c(0,7))
points(c(1,2,3,4,5,6), d3_f_t8_means, col="red")
for(i in 1:6){
    lines(c(i,i),c((d3_a_t8_means-d3_a_t8_sds)[i], (d3_a_t8_means+d3_a_t8_sds)[i]), lend="butt")
    lines(c(i-0.1, i+0.1), c((d3_a_t8_means-d3_a_t8_sds)[i], (d3_a_t8_means-d3_a_t8_sds)[i]))
    lines(c(i-0.1, i+0.1), c((d3_a_t8_means+d3_a_t8_sds)[i], (d3_a_t8_means+d3_a_t8_sds)[i]))
}

plot(c(1,2,3,4,5,6), m3_a_t8_means, ylim = c(0,300))
points(c(1,2,3,4,5,6), m3_f_t8_means, col="red")
for(i in 1:6){
    lines(c(i,i),c((m3_a_t8_means-m3_a_t8_sds)[i], (m3_a_t8_means+m3_a_t8_sds)[i]), lend="butt")
    lines(c(i-0.1, i+0.1), c((m3_a_t8_means-m3_a_t8_sds)[i], (m3_a_t8_means-m3_a_t8_sds)[i]))
    lines(c(i-0.1, i+0.1), c((m3_a_t8_means+m3_a_t8_sds)[i], (m3_a_t8_means+m3_a_t8_sds)[i]))
}

plot(c(1,2,3,4,5,6), d4_a_t8_means, ylim = c(0,4))
points(c(1,2,3,4,5,6), d4_f_t8_means, col="red")
for(i in 1:6){
    lines(c(i,i),c((d4_a_t8_means-d4_a_t8_sds)[i], (d4_a_t8_means+d4_a_t8_sds)[i]), lend="butt")
    lines(c(i-0.1, i+0.1), c((d4_a_t8_means-d4_a_t8_sds)[i], (d4_a_t8_means-d4_a_t8_sds)[i]))
    lines(c(i-0.1, i+0.1), c((d4_a_t8_means+d4_a_t8_sds)[i], (d4_a_t8_means+d4_a_t8_sds)[i]))
}

plot(c(1,2,3,4,5,6), m4_a_t8_means, ylim = c(0,800))
points(c(1,2,3,4,5,6), m4_f_t8_means, col="red")
for(i in 1:6){
    lines(c(i,i),c((m4_a_t8_means-m4_a_t8_sds)[i], (m4_a_t8_means+m4_a_t8_sds)[i]), lend="butt")
    lines(c(i-0.1, i+0.1), c((m4_a_t8_means-m4_a_t8_sds)[i], (m4_a_t8_means-m4_a_t8_sds)[i]))
    lines(c(i-0.1, i+0.1), c((m4_a_t8_means+m4_a_t8_sds)[i], (m4_a_t8_means+m4_a_t8_sds)[i]))
}