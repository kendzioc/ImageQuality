sheet <- read.csv(file="~/charite/ImageQuality/analysis/contour_sharpness/results/out_test.csv", sep=",", head=TRUE,na.strings = "")
outcsv="~/charite/ImageQuality/analysis/contour_sharpness/results/results.csv"
pv_d_csv="~/charite/ImageQuality/analysis/contour_sharpness/results/pvalues_d.csv"
pv_m_csv="~/charite/ImageQuality/analysis/contour_sharpness/results/pvalues_m.csv"
savepdf=TRUE

# fill delta vectors
{
  d1_a_t0_a0 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  d1_a_t0_a1 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  d1_a_t0_a2 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  d1_a_t0_a3 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  d1_a_t0_a5 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  d1_a_t0_a7 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  d1_f_t0_a0 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  d1_f_t0_a1 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  d1_f_t0_a2 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  d1_f_t0_a3 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  d1_f_t0_a5 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  d1_f_t0_a7 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  d2_a_t0_a0 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  d2_a_t0_a1 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  d2_a_t0_a2 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  d2_a_t0_a3 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  d2_a_t0_a5 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  d2_a_t0_a7 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  d2_f_t0_a0 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  d2_f_t0_a1 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  d2_f_t0_a2 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  d2_f_t0_a3 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  d2_f_t0_a5 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  d2_f_t0_a7 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  d3_a_t0_a0 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  d3_a_t0_a1 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  d3_a_t0_a2 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  d3_a_t0_a3 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  d3_a_t0_a5 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  d3_a_t0_a7 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  d3_f_t0_a0 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  d3_f_t0_a1 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  d3_f_t0_a2 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  d3_f_t0_a3 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  d3_f_t0_a5 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  d3_f_t0_a7 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  d4_a_t0_a0 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  d4_a_t0_a1 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  d4_a_t0_a2 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  d4_a_t0_a3 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  d4_a_t0_a5 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  d4_a_t0_a7 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  d4_f_t0_a0 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  d4_f_t0_a1 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  d4_f_t0_a2 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  d4_f_t0_a3 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  d4_f_t0_a5 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  d4_f_t0_a7 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  
  d1_a_t5_a0 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  d1_a_t5_a1 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  d1_a_t5_a2 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  d1_a_t5_a3 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  d1_a_t5_a5 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  d1_a_t5_a7 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  d1_f_t5_a0 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  d1_f_t5_a1 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  d1_f_t5_a2 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  d1_f_t5_a3 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  d1_f_t5_a5 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  d1_f_t5_a7 <- sheet$d1[ !is.na(sheet$d1) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  d2_a_t5_a0 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  d2_a_t5_a1 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  d2_a_t5_a2 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  d2_a_t5_a3 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  d2_a_t5_a5 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  d2_a_t5_a7 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  d2_f_t5_a0 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  d2_f_t5_a1 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  d2_f_t5_a2 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  d2_f_t5_a3 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  d2_f_t5_a5 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  d2_f_t5_a7 <- sheet$d2[ !is.na(sheet$d2) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  d3_a_t5_a0 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  d3_a_t5_a1 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  d3_a_t5_a2 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  d3_a_t5_a3 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  d3_a_t5_a5 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  d3_a_t5_a7 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  d3_f_t5_a0 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  d3_f_t5_a1 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  d3_f_t5_a2 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  d3_f_t5_a3 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  d3_f_t5_a5 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  d3_f_t5_a7 <- sheet$d3[ !is.na(sheet$d3) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  d4_a_t5_a0 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  d4_a_t5_a1 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  d4_a_t5_a2 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  d4_a_t5_a3 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  d4_a_t5_a5 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  d4_a_t5_a7 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  d4_f_t5_a0 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  d4_f_t5_a1 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  d4_f_t5_a2 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  d4_f_t5_a3 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  d4_f_t5_a5 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  d4_f_t5_a7 <- sheet$d4[ !is.na(sheet$d4) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  
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
  
}

#fill slope vectors
{  
  # min1 and max1 are 0 and 100 %, but we need 25 and 75 %... so divide by 2
  h1_a_t0_a0 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  h1_a_t0_a1 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  h1_a_t0_a2 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  h1_a_t0_a3 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  h1_a_t0_a5 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  h1_a_t0_a7 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  h1_f_t0_a0 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  h1_f_t0_a1 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  h1_f_t0_a2 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  h1_f_t0_a3 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  h1_f_t0_a5 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  h1_f_t0_a7 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  h2_a_t0_a0 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  h2_a_t0_a1 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  h2_a_t0_a2 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  h2_a_t0_a3 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  h2_a_t0_a5 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  h2_a_t0_a7 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  h2_f_t0_a0 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  h2_f_t0_a1 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  h2_f_t0_a2 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  h2_f_t0_a3 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  h2_f_t0_a5 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  h2_f_t0_a7 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  h3_a_t0_a0 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  h3_a_t0_a1 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  h3_a_t0_a2 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  h3_a_t0_a3 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  h3_a_t0_a5 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  h3_a_t0_a7 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  h3_f_t0_a0 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  h3_f_t0_a1 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  h3_f_t0_a2 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  h3_f_t0_a3 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  h3_f_t0_a5 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  h3_f_t0_a7 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  h4_a_t0_a0 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  h4_a_t0_a1 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  h4_a_t0_a2 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  h4_a_t0_a3 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  h4_a_t0_a5 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  h4_a_t0_a7 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  h4_f_t0_a0 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 0 & sheet$best == 1]
  h4_f_t0_a1 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 1 & sheet$best == 1]
  h4_f_t0_a2 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 2 & sheet$best == 1]
  h4_f_t0_a3 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 3 & sheet$best == 1]
  h4_f_t0_a5 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 5 & sheet$best == 1]
  h4_f_t0_a7 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 0 & sheet$add == 7 & sheet$best == 1]
  
  m1_a_t0_a0 <- h1_a_t0_a0 / d1_a_t0_a0
  m1_a_t0_a1 <- h1_a_t0_a1 / d1_a_t0_a1
  m1_a_t0_a2 <- h1_a_t0_a2 / d1_a_t0_a2
  m1_a_t0_a3 <- h1_a_t0_a3 / d1_a_t0_a3
  m1_a_t0_a5 <- h1_a_t0_a5 / d1_a_t0_a5
  m1_a_t0_a7 <- h1_a_t0_a7 / d1_a_t0_a7
  
  m1_f_t0_a0 <- h1_f_t0_a0 / d1_f_t0_a0
  m1_f_t0_a1 <- h1_f_t0_a1 / d1_f_t0_a1
  m1_f_t0_a2 <- h1_f_t0_a2 / d1_f_t0_a2
  m1_f_t0_a3 <- h1_f_t0_a3 / d1_f_t0_a3
  m1_f_t0_a5 <- h1_f_t0_a5 / d1_f_t0_a5
  m1_f_t0_a7 <- h1_f_t0_a7 / d1_f_t0_a7
  
  m2_a_t0_a0 <- h2_a_t0_a0 / d2_a_t0_a0
  m2_a_t0_a1 <- h2_a_t0_a1 / d2_a_t0_a1
  m2_a_t0_a2 <- h2_a_t0_a2 / d2_a_t0_a2
  m2_a_t0_a3 <- h2_a_t0_a3 / d2_a_t0_a3
  m2_a_t0_a5 <- h2_a_t0_a5 / d2_a_t0_a5
  m2_a_t0_a7 <- h2_a_t0_a7 / d2_a_t0_a7
  
  m2_f_t0_a0 <- h2_f_t0_a0 / d2_f_t0_a0
  m2_f_t0_a1 <- h2_f_t0_a1 / d2_f_t0_a1
  m2_f_t0_a2 <- h2_f_t0_a2 / d2_f_t0_a2
  m2_f_t0_a3 <- h2_f_t0_a3 / d2_f_t0_a3
  m2_f_t0_a5 <- h2_f_t0_a5 / d2_f_t0_a5
  m2_f_t0_a7 <- h2_f_t0_a7 / d2_f_t0_a7
  
  m3_a_t0_a0 <- h3_a_t0_a0 / d3_a_t0_a0
  m3_a_t0_a1 <- h3_a_t0_a1 / d3_a_t0_a1
  m3_a_t0_a2 <- h3_a_t0_a2 / d3_a_t0_a2
  m3_a_t0_a3 <- h3_a_t0_a3 / d3_a_t0_a3
  m3_a_t0_a5 <- h3_a_t0_a5 / d3_a_t0_a5
  m3_a_t0_a7 <- h3_a_t0_a7 / d3_a_t0_a7
  
  m3_f_t0_a0 <- h3_f_t0_a0 / d3_f_t0_a0
  m3_f_t0_a1 <- h3_f_t0_a1 / d3_f_t0_a1
  m3_f_t0_a2 <- h3_f_t0_a2 / d3_f_t0_a2
  m3_f_t0_a3 <- h3_f_t0_a3 / d3_f_t0_a3
  m3_f_t0_a5 <- h3_f_t0_a5 / d3_f_t0_a5
  m3_f_t0_a7 <- h3_f_t0_a7 / d3_f_t0_a7
  
  m4_a_t0_a0 <- h4_a_t0_a0 / d4_a_t0_a0
  m4_a_t0_a1 <- h4_a_t0_a1 / d4_a_t0_a1
  m4_a_t0_a2 <- h4_a_t0_a2 / d4_a_t0_a2
  m4_a_t0_a3 <- h4_a_t0_a3 / d4_a_t0_a3
  m4_a_t0_a5 <- h4_a_t0_a5 / d4_a_t0_a5
  m4_a_t0_a7 <- h4_a_t0_a7 / d4_a_t0_a7
  
  m4_f_t0_a0 <- h4_f_t0_a0 / d4_f_t0_a0
  m4_f_t0_a1 <- h4_f_t0_a1 / d4_f_t0_a1
  m4_f_t0_a2 <- h4_f_t0_a2 / d4_f_t0_a2
  m4_f_t0_a3 <- h4_f_t0_a3 / d4_f_t0_a3
  m4_f_t0_a5 <- h4_f_t0_a5 / d4_f_t0_a5
  m4_f_t0_a7 <- h4_f_t0_a7 / d4_f_t0_a7
  
  
  h1_a_t5_a0 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  h1_a_t5_a1 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  h1_a_t5_a2 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  h1_a_t5_a3 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  h1_a_t5_a5 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  h1_a_t5_a7 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  h1_f_t5_a0 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  h1_f_t5_a1 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  h1_f_t5_a2 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  h1_f_t5_a3 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  h1_f_t5_a5 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  h1_f_t5_a7 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  h2_a_t5_a0 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  h2_a_t5_a1 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  h2_a_t5_a2 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  h2_a_t5_a3 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  h2_a_t5_a5 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  h2_a_t5_a7 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  h2_f_t5_a0 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  h2_f_t5_a1 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  h2_f_t5_a2 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  h2_f_t5_a3 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  h2_f_t5_a5 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  h2_f_t5_a7 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  h3_a_t5_a0 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  h3_a_t5_a1 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  h3_a_t5_a2 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  h3_a_t5_a3 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  h3_a_t5_a5 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  h3_a_t5_a7 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  h3_f_t5_a0 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  h3_f_t5_a1 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  h3_f_t5_a2 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  h3_f_t5_a3 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  h3_f_t5_a5 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  h3_f_t5_a7 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  h4_a_t5_a0 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  h4_a_t5_a1 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  h4_a_t5_a2 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  h4_a_t5_a3 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  h4_a_t5_a5 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  h4_a_t5_a7 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  h4_f_t5_a0 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 0 & sheet$best == 1]
  h4_f_t5_a1 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 1 & sheet$best == 1]
  h4_f_t5_a2 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 2 & sheet$best == 1]
  h4_f_t5_a3 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 3 & sheet$best == 1]
  h4_f_t5_a5 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 5 & sheet$best == 1]
  h4_f_t5_a7 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 5 & sheet$add == 7 & sheet$best == 1]
  
  m1_a_t5_a0 <- h1_a_t5_a0 / d1_a_t5_a0
  m1_a_t5_a1 <- h1_a_t5_a1 / d1_a_t5_a1
  m1_a_t5_a2 <- h1_a_t5_a2 / d1_a_t5_a2
  m1_a_t5_a3 <- h1_a_t5_a3 / d1_a_t5_a3
  m1_a_t5_a5 <- h1_a_t5_a5 / d1_a_t5_a5
  m1_a_t5_a7 <- h1_a_t5_a7 / d1_a_t5_a7
  
  m1_f_t5_a0 <- h1_f_t5_a0 / d1_f_t5_a0
  m1_f_t5_a1 <- h1_f_t5_a1 / d1_f_t5_a1
  m1_f_t5_a2 <- h1_f_t5_a2 / d1_f_t5_a2
  m1_f_t5_a3 <- h1_f_t5_a3 / d1_f_t5_a3
  m1_f_t5_a5 <- h1_f_t5_a5 / d1_f_t5_a5
  m1_f_t5_a7 <- h1_f_t5_a7 / d1_f_t5_a7
  
  m2_a_t5_a0 <- h2_a_t5_a0 / d2_a_t5_a0
  m2_a_t5_a1 <- h2_a_t5_a1 / d2_a_t5_a1
  m2_a_t5_a2 <- h2_a_t5_a2 / d2_a_t5_a2
  m2_a_t5_a3 <- h2_a_t5_a3 / d2_a_t5_a3
  m2_a_t5_a5 <- h2_a_t5_a5 / d2_a_t5_a5
  m2_a_t5_a7 <- h2_a_t5_a7 / d2_a_t5_a7
  
  m2_f_t5_a0 <- h2_f_t5_a0 / d2_f_t5_a0
  m2_f_t5_a1 <- h2_f_t5_a1 / d2_f_t5_a1
  m2_f_t5_a2 <- h2_f_t5_a2 / d2_f_t5_a2
  m2_f_t5_a3 <- h2_f_t5_a3 / d2_f_t5_a3
  m2_f_t5_a5 <- h2_f_t5_a5 / d2_f_t5_a5
  m2_f_t5_a7 <- h2_f_t5_a7 / d2_f_t5_a7
  
  m3_a_t5_a0 <- h3_a_t5_a0 / d3_a_t5_a0
  m3_a_t5_a1 <- h3_a_t5_a1 / d3_a_t5_a1
  m3_a_t5_a2 <- h3_a_t5_a2 / d3_a_t5_a2
  m3_a_t5_a3 <- h3_a_t5_a3 / d3_a_t5_a3
  m3_a_t5_a5 <- h3_a_t5_a5 / d3_a_t5_a5
  m3_a_t5_a7 <- h3_a_t5_a7 / d3_a_t5_a7
  
  m3_f_t5_a0 <- h3_f_t5_a0 / d3_f_t5_a0
  m3_f_t5_a1 <- h3_f_t5_a1 / d3_f_t5_a1
  m3_f_t5_a2 <- h3_f_t5_a2 / d3_f_t5_a2
  m3_f_t5_a3 <- h3_f_t5_a3 / d3_f_t5_a3
  m3_f_t5_a5 <- h3_f_t5_a5 / d3_f_t5_a5
  m3_f_t5_a7 <- h3_f_t5_a7 / d3_f_t5_a7
  
  m4_a_t5_a0 <- h4_a_t5_a0 / d4_a_t5_a0
  m4_a_t5_a1 <- h4_a_t5_a1 / d4_a_t5_a1
  m4_a_t5_a2 <- h4_a_t5_a2 / d4_a_t5_a2
  m4_a_t5_a3 <- h4_a_t5_a3 / d4_a_t5_a3
  m4_a_t5_a5 <- h4_a_t5_a5 / d4_a_t5_a5
  m4_a_t5_a7 <- h4_a_t5_a7 / d4_a_t5_a7
  
  m4_f_t5_a0 <- h4_f_t5_a0 / d4_f_t5_a0
  m4_f_t5_a1 <- h4_f_t5_a1 / d4_f_t5_a1
  m4_f_t5_a2 <- h4_f_t5_a2 / d4_f_t5_a2
  m4_f_t5_a3 <- h4_f_t5_a3 / d4_f_t5_a3
  m4_f_t5_a5 <- h4_f_t5_a5 / d4_f_t5_a5
  m4_f_t5_a7 <- h4_f_t5_a7 / d4_f_t5_a7
  
  
  h1_a_t8_a0 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
  h1_a_t8_a1 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
  h1_a_t8_a2 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
  h1_a_t8_a3 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
  h1_a_t8_a5 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
  h1_a_t8_a7 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]
  
  h1_f_t8_a0 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
  h1_f_t8_a1 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
  h1_f_t8_a2 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
  h1_f_t8_a3 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
  h1_f_t8_a5 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
  h1_f_t8_a7 <- ((sheet$max1-sheet$min1)/2)[ !is.na(sheet$max1) & !is.na(sheet$min1) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]
  
  h2_a_t8_a0 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
  h2_a_t8_a1 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
  h2_a_t8_a2 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
  h2_a_t8_a3 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
  h2_a_t8_a5 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
  h2_a_t8_a7 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]
  
  h2_f_t8_a0 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
  h2_f_t8_a1 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
  h2_f_t8_a2 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
  h2_f_t8_a3 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
  h2_f_t8_a5 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
  h2_f_t8_a7 <- ((sheet$max2-sheet$min2)/2)[ !is.na(sheet$max2) & !is.na(sheet$min2) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]
  
  h3_a_t8_a0 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
  h3_a_t8_a1 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
  h3_a_t8_a2 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
  h3_a_t8_a3 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
  h3_a_t8_a5 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
  h3_a_t8_a7 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]
  
  h3_f_t8_a0 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
  h3_f_t8_a1 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
  h3_f_t8_a2 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
  h3_f_t8_a3 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
  h3_f_t8_a5 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
  h3_f_t8_a7 <- ((sheet$max3-sheet$min3)/2)[ !is.na(sheet$max3) & !is.na(sheet$min3) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]
  
  h4_a_t8_a0 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
  h4_a_t8_a1 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
  h4_a_t8_a2 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
  h4_a_t8_a3 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
  h4_a_t8_a5 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
  h4_a_t8_a7 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "AIDR" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]
  
  h4_f_t8_a0 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 0 & sheet$best == 1]
  h4_f_t8_a1 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 1 & sheet$best == 1]
  h4_f_t8_a2 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 2 & sheet$best == 1]
  h4_f_t8_a3 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 3 & sheet$best == 1]
  h4_f_t8_a5 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 5 & sheet$best == 1]
  h4_f_t8_a7 <- ((sheet$max4-sheet$min4)/2)[ !is.na(sheet$max4) & !is.na(sheet$min4) & sheet$rec == "FBP" & sheet$thick == 8 & sheet$add == 7 & sheet$best == 1]
  
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
}

# fill mean and sd vectors
{
  d1_a_t0_means <- c(mean(d1_a_t0_a0),mean(d1_a_t0_a1),mean(d1_a_t0_a2),mean(d1_a_t0_a3),mean(d1_a_t0_a5),mean(d1_a_t0_a7))
  d1_a_t0_sds <- c(sd(d1_a_t0_a0),sd(d1_a_t0_a1),sd(d1_a_t0_a2),sd(d1_a_t0_a3),sd(d1_a_t0_a5),sd(d1_a_t0_a7))
  
  d1_f_t0_means <- c(mean(d1_f_t0_a0),mean(d1_f_t0_a1),mean(d1_f_t0_a2),mean(d1_f_t0_a3),mean(d1_f_t0_a5),mean(d1_f_t0_a7))
  d1_f_t0_sds <- c(sd(d1_f_t0_a0),sd(d1_f_t0_a1),sd(d1_f_t0_a2),sd(d1_f_t0_a3),sd(d1_f_t0_a5),sd(d1_f_t0_a7))
  
  m1_a_t0_means <- c(mean(m1_a_t0_a0),mean(m1_a_t0_a1),mean(m1_a_t0_a2),mean(m1_a_t0_a3),mean(m1_a_t0_a5),mean(m1_a_t0_a7))
  m1_a_t0_sds <- c(sd(m1_a_t0_a0),sd(m1_a_t0_a1),sd(m1_a_t0_a2),sd(m1_a_t0_a3),sd(m1_a_t0_a5),sd(m1_a_t0_a7))
  
  m1_f_t0_means <- c(mean(m1_f_t0_a0),mean(m1_f_t0_a1),mean(m1_f_t0_a2),mean(m1_f_t0_a3),mean(m1_f_t0_a5),mean(m1_f_t0_a7))
  m1_f_t0_sds <- c(sd(m1_f_t0_a0),sd(m1_f_t0_a1),sd(m1_f_t0_a2),sd(m1_f_t0_a3),sd(m1_f_t0_a5),sd(m1_f_t0_a7))
  
  d2_a_t0_means <- c(mean(d2_a_t0_a0),mean(d2_a_t0_a1),mean(d2_a_t0_a2),mean(d2_a_t0_a3),mean(d2_a_t0_a5),mean(d2_a_t0_a7))
  d2_a_t0_sds <- c(sd(d2_a_t0_a0),sd(d2_a_t0_a1),sd(d2_a_t0_a2),sd(d2_a_t0_a3),sd(d2_a_t0_a5),sd(d2_a_t0_a7))
  
  d2_f_t0_means <- c(mean(d2_f_t0_a0),mean(d2_f_t0_a1),mean(d2_f_t0_a2),mean(d2_f_t0_a3),mean(d2_f_t0_a5),mean(d2_f_t0_a7))
  d2_f_t0_sds <- c(sd(d2_f_t0_a0),sd(d2_f_t0_a1),sd(d2_f_t0_a2),sd(d2_f_t0_a3),sd(d2_f_t0_a5),sd(d2_f_t0_a7))
  
  m2_a_t0_means <- c(mean(m2_a_t0_a0),mean(m2_a_t0_a1),mean(m2_a_t0_a2),mean(m2_a_t0_a3),mean(m2_a_t0_a5),mean(m2_a_t0_a7))
  m2_a_t0_sds <- c(sd(m2_a_t0_a0),sd(m2_a_t0_a1),sd(m2_a_t0_a2),sd(m2_a_t0_a3),sd(m2_a_t0_a5),sd(m2_a_t0_a7))
  
  m2_f_t0_means <- c(mean(m2_f_t0_a0),mean(m2_f_t0_a1),mean(m2_f_t0_a2),mean(m2_f_t0_a3),mean(m2_f_t0_a5),mean(m2_f_t0_a7))
  m2_f_t0_sds <- c(sd(m2_f_t0_a0),sd(m2_f_t0_a1),sd(m2_f_t0_a2),sd(m2_f_t0_a3),sd(m2_f_t0_a5),sd(m2_f_t0_a7))
  
  d3_a_t0_means <- c(mean(d3_a_t0_a0),mean(d3_a_t0_a1),mean(d3_a_t0_a2),mean(d3_a_t0_a3),mean(d3_a_t0_a5),mean(d3_a_t0_a7))
  d3_a_t0_sds <- c(sd(d3_a_t0_a0),sd(d3_a_t0_a1),sd(d3_a_t0_a2),sd(d3_a_t0_a3),sd(d3_a_t0_a5),sd(d3_a_t0_a7))
  
  d3_f_t0_means <- c(mean(d3_f_t0_a0),mean(d3_f_t0_a1),mean(d3_f_t0_a2),mean(d3_f_t0_a3),mean(d3_f_t0_a5),mean(d3_f_t0_a7))
  d3_f_t0_sds <- c(sd(d3_f_t0_a0),sd(d3_f_t0_a1),sd(d3_f_t0_a2),sd(d3_f_t0_a3),sd(d3_f_t0_a5),sd(d3_f_t0_a7))
  
  m3_a_t0_means <- c(mean(m3_a_t0_a0),mean(m3_a_t0_a1),mean(m3_a_t0_a2),mean(m3_a_t0_a3),mean(m3_a_t0_a5),mean(m3_a_t0_a7))
  m3_a_t0_sds <- c(sd(m3_a_t0_a0),sd(m3_a_t0_a1),sd(m3_a_t0_a2),sd(m3_a_t0_a3),sd(m3_a_t0_a5),sd(m3_a_t0_a7))
  
  m3_f_t0_means <- c(mean(m3_f_t0_a0),mean(m3_f_t0_a1),mean(m3_f_t0_a2),mean(m3_f_t0_a3),mean(m3_f_t0_a5),mean(m3_f_t0_a7))
  m3_f_t0_sds <- c(sd(m3_f_t0_a0),sd(m3_f_t0_a1),sd(m3_f_t0_a2),sd(m3_f_t0_a3),sd(m3_f_t0_a5),sd(m3_f_t0_a7))
  
  d4_a_t0_means <- c(mean(d4_a_t0_a0),mean(d4_a_t0_a1),mean(d4_a_t0_a2),mean(d4_a_t0_a3),mean(d4_a_t0_a5),mean(d4_a_t0_a7))
  d4_a_t0_sds <- c(sd(d4_a_t0_a0),sd(d4_a_t0_a1),sd(d4_a_t0_a2),sd(d4_a_t0_a3),sd(d4_a_t0_a5),sd(d4_a_t0_a7))
  
  d4_f_t0_means <- c(mean(d4_f_t0_a0),mean(d4_f_t0_a1),mean(d4_f_t0_a2),mean(d4_f_t0_a3),mean(d4_f_t0_a5),mean(d4_f_t0_a7))
  d4_f_t0_sds <- c(sd(d4_f_t0_a0),sd(d4_f_t0_a1),sd(d4_f_t0_a2),sd(d4_f_t0_a3),sd(d4_f_t0_a5),sd(d4_f_t0_a7))
  
  m4_a_t0_means <- c(mean(m4_a_t0_a0),mean(m4_a_t0_a1),mean(m4_a_t0_a2),mean(m4_a_t0_a3),mean(m4_a_t0_a5),mean(m4_a_t0_a7))
  m4_a_t0_sds <- c(sd(m4_a_t0_a0),sd(m4_a_t0_a1),sd(m4_a_t0_a2),sd(m4_a_t0_a3),sd(m4_a_t0_a5),sd(m4_a_t0_a7))
  
  m4_f_t0_means <- c(mean(m4_f_t0_a0),mean(m4_f_t0_a1),mean(m4_f_t0_a2),mean(m4_f_t0_a3),mean(m4_f_t0_a5),mean(m4_f_t0_a7))
  m4_f_t0_sds <- c(sd(m4_f_t0_a0),sd(m4_f_t0_a1),sd(m4_f_t0_a2),sd(m4_f_t0_a3),sd(m4_f_t0_a5),sd(m4_f_t0_a7))
  
  
  
  
  d1_a_t5_means <- c(mean(d1_a_t5_a0),mean(d1_a_t5_a1),mean(d1_a_t5_a2),mean(d1_a_t5_a3),mean(d1_a_t5_a5),mean(d1_a_t5_a7))
  d1_a_t5_sds <- c(sd(d1_a_t5_a0),sd(d1_a_t5_a1),sd(d1_a_t5_a2),sd(d1_a_t5_a3),sd(d1_a_t5_a5),sd(d1_a_t5_a7))
  
  d1_f_t5_means <- c(mean(d1_f_t5_a0),mean(d1_f_t5_a1),mean(d1_f_t5_a2),mean(d1_f_t5_a3),mean(d1_f_t5_a5),mean(d1_f_t5_a7))
  d1_f_t5_sds <- c(sd(d1_f_t5_a0),sd(d1_f_t5_a1),sd(d1_f_t5_a2),sd(d1_f_t5_a3),sd(d1_f_t5_a5),sd(d1_f_t5_a7))
  
  m1_a_t5_means <- c(mean(m1_a_t5_a0),mean(m1_a_t5_a1),mean(m1_a_t5_a2),mean(m1_a_t5_a3),mean(m1_a_t5_a5),mean(m1_a_t5_a7))
  m1_a_t5_sds <- c(sd(m1_a_t5_a0),sd(m1_a_t5_a1),sd(m1_a_t5_a2),sd(m1_a_t5_a3),sd(m1_a_t5_a5),sd(m1_a_t5_a7))
  
  m1_f_t5_means <- c(mean(m1_f_t5_a0),mean(m1_f_t5_a1),mean(m1_f_t5_a2),mean(m1_f_t5_a3),mean(m1_f_t5_a5),mean(m1_f_t5_a7))
  m1_f_t5_sds <- c(sd(m1_f_t5_a0),sd(m1_f_t5_a1),sd(m1_f_t5_a2),sd(m1_f_t5_a3),sd(m1_f_t5_a5),sd(m1_f_t5_a7))
  
  d2_a_t5_means <- c(mean(d2_a_t5_a0),mean(d2_a_t5_a1),mean(d2_a_t5_a2),mean(d2_a_t5_a3),mean(d2_a_t5_a5),mean(d2_a_t5_a7))
  d2_a_t5_sds <- c(sd(d2_a_t5_a0),sd(d2_a_t5_a1),sd(d2_a_t5_a2),sd(d2_a_t5_a3),sd(d2_a_t5_a5),sd(d2_a_t5_a7))
  
  d2_f_t5_means <- c(mean(d2_f_t5_a0),mean(d2_f_t5_a1),mean(d2_f_t5_a2),mean(d2_f_t5_a3),mean(d2_f_t5_a5),mean(d2_f_t5_a7))
  d2_f_t5_sds <- c(sd(d2_f_t5_a0),sd(d2_f_t5_a1),sd(d2_f_t5_a2),sd(d2_f_t5_a3),sd(d2_f_t5_a5),sd(d2_f_t5_a7))
  
  m2_a_t5_means <- c(mean(m2_a_t5_a0),mean(m2_a_t5_a1),mean(m2_a_t5_a2),mean(m2_a_t5_a3),mean(m2_a_t5_a5),mean(m2_a_t5_a7))
  m2_a_t5_sds <- c(sd(m2_a_t5_a0),sd(m2_a_t5_a1),sd(m2_a_t5_a2),sd(m2_a_t5_a3),sd(m2_a_t5_a5),sd(m2_a_t5_a7))
  
  m2_f_t5_means <- c(mean(m2_f_t5_a0),mean(m2_f_t5_a1),mean(m2_f_t5_a2),mean(m2_f_t5_a3),mean(m2_f_t5_a5),mean(m2_f_t5_a7))
  m2_f_t5_sds <- c(sd(m2_f_t5_a0),sd(m2_f_t5_a1),sd(m2_f_t5_a2),sd(m2_f_t5_a3),sd(m2_f_t5_a5),sd(m2_f_t5_a7))
  
  d3_a_t5_means <- c(mean(d3_a_t5_a0),mean(d3_a_t5_a1),mean(d3_a_t5_a2),mean(d3_a_t5_a3),mean(d3_a_t5_a5),mean(d3_a_t5_a7))
  d3_a_t5_sds <- c(sd(d3_a_t5_a0),sd(d3_a_t5_a1),sd(d3_a_t5_a2),sd(d3_a_t5_a3),sd(d3_a_t5_a5),sd(d3_a_t5_a7))
  
  d3_f_t5_means <- c(mean(d3_f_t5_a0),mean(d3_f_t5_a1),mean(d3_f_t5_a2),mean(d3_f_t5_a3),mean(d3_f_t5_a5),mean(d3_f_t5_a7))
  d3_f_t5_sds <- c(sd(d3_f_t5_a0),sd(d3_f_t5_a1),sd(d3_f_t5_a2),sd(d3_f_t5_a3),sd(d3_f_t5_a5),sd(d3_f_t5_a7))
  
  m3_a_t5_means <- c(mean(m3_a_t5_a0),mean(m3_a_t5_a1),mean(m3_a_t5_a2),mean(m3_a_t5_a3),mean(m3_a_t5_a5),mean(m3_a_t5_a7))
  m3_a_t5_sds <- c(sd(m3_a_t5_a0),sd(m3_a_t5_a1),sd(m3_a_t5_a2),sd(m3_a_t5_a3),sd(m3_a_t5_a5),sd(m3_a_t5_a7))
  
  m3_f_t5_means <- c(mean(m3_f_t5_a0),mean(m3_f_t5_a1),mean(m3_f_t5_a2),mean(m3_f_t5_a3),mean(m3_f_t5_a5),mean(m3_f_t5_a7))
  m3_f_t5_sds <- c(sd(m3_f_t5_a0),sd(m3_f_t5_a1),sd(m3_f_t5_a2),sd(m3_f_t5_a3),sd(m3_f_t5_a5),sd(m3_f_t5_a7))
  
  d4_a_t5_means <- c(mean(d4_a_t5_a0),mean(d4_a_t5_a1),mean(d4_a_t5_a2),mean(d4_a_t5_a3),mean(d4_a_t5_a5),mean(d4_a_t5_a7))
  d4_a_t5_sds <- c(sd(d4_a_t5_a0),sd(d4_a_t5_a1),sd(d4_a_t5_a2),sd(d4_a_t5_a3),sd(d4_a_t5_a5),sd(d4_a_t5_a7))
  
  d4_f_t5_means <- c(mean(d4_f_t5_a0),mean(d4_f_t5_a1),mean(d4_f_t5_a2),mean(d4_f_t5_a3),mean(d4_f_t5_a5),mean(d4_f_t5_a7))
  d4_f_t5_sds <- c(sd(d4_f_t5_a0),sd(d4_f_t5_a1),sd(d4_f_t5_a2),sd(d4_f_t5_a3),sd(d4_f_t5_a5),sd(d4_f_t5_a7))
  
  m4_a_t5_means <- c(mean(m4_a_t5_a0),mean(m4_a_t5_a1),mean(m4_a_t5_a2),mean(m4_a_t5_a3),mean(m4_a_t5_a5),mean(m4_a_t5_a7))
  m4_a_t5_sds <- c(sd(m4_a_t5_a0),sd(m4_a_t5_a1),sd(m4_a_t5_a2),sd(m4_a_t5_a3),sd(m4_a_t5_a5),sd(m4_a_t5_a7))
  
  m4_f_t5_means <- c(mean(m4_f_t5_a0),mean(m4_f_t5_a1),mean(m4_f_t5_a2),mean(m4_f_t5_a3),mean(m4_f_t5_a5),mean(m4_f_t5_a7))
  m4_f_t5_sds <- c(sd(m4_f_t5_a0),sd(m4_f_t5_a1),sd(m4_f_t5_a2),sd(m4_f_t5_a3),sd(m4_f_t5_a5),sd(m4_f_t5_a7))
  
  
  
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
  
}

# function for plotting delta plots
make_d_plot <- function(edge_num, thick, vec_a_means, vec_f_means, vec_a_sds, vec_f_sds, ymax=4) {
  s = 0.1 # shift of fbp and aidr points
  plot(c(1,2,3,4,5,6), vec_a_means, ylim = c(0,ymax), pch=16, xaxt="n", bty="n", xlab="Combinations", adj=1, ylab="delta [mm]")
  points(c(1+s,2+s,3+s,4+s,5+s,6+s), vec_f_means, pch=16, col="red")
  for(i in 1:6){
    lines(c(i,i),c((vec_a_means-vec_a_sds)[i], (vec_a_means+vec_a_sds)[i]), lend="butt")
    lines(c(i-0.1, i+0.1), c((vec_a_means-vec_a_sds)[i], (vec_a_means-vec_a_sds)[i]))
    lines(c(i-0.1, i+0.1), c((vec_a_means+vec_a_sds)[i], (vec_a_means+vec_a_sds)[i]))
    
    lines(c(i+s,i+s),c((vec_f_means-vec_f_sds)[i], (vec_f_means+vec_f_sds)[i]), lend="butt", col="red")
    lines(c(i+s-0.1, i+s+0.1), c((vec_f_means-vec_f_sds)[i], (vec_f_means-vec_f_sds)[i]), col="red")
    lines(c(i+s-0.1, i+s+0.1), c((vec_f_means+vec_f_sds)[i], (vec_f_means+vec_f_sds)[i]), col="red")
    
  }
  axis(1, at=1:6, labels=c(1,2,3,4,6,8), pos=0)
  
  # legend
  tit=paste("Edge ",edge_num, ", Thickness = ", thick, "mm", sep="")
  legend(1,ymax,c("AIDR","FBP"), lwd=2.5, 
         col=c("black","red"), 
         pch=c(16,16),bty="n", title=tit)
}

# function for plotting slope plots
make_m_plot <- function(edge_num, thick, vec_a_means, vec_f_means, vec_a_sds, vec_f_sds, ymax=150) {
  s = 0.1 # shift of fbp and aidr points
  plot(c(1,2,3,4,5,6), vec_a_means, ylim=c(0,ymax), pch=16, xaxt = "n", bty="n", xlab="Combinations", adj=1, ylab="slope [HU/mm]")
  points(c(1+s,2+s,3+s,4+s,5+s,6+s), vec_f_means, pch=16, col="red")
  for(i in 1:6){
    lines(c(i,i),c((vec_a_means-vec_a_sds)[i], (vec_a_means+vec_a_sds)[i]), lend="butt")
    lines(c(i-0.1, i+0.1), c((vec_a_means-vec_a_sds)[i], (vec_a_means-vec_a_sds)[i]))
    lines(c(i-0.1, i+0.1), c((vec_a_means+vec_a_sds)[i], (vec_a_means+vec_a_sds)[i]))
    
    lines(c(i+s,i+s),c((vec_f_means-vec_f_sds)[i], (vec_f_means+vec_f_sds)[i]), lend="butt", col="red")
    lines(c(i+s-0.1, i+s+0.1), c((vec_f_means-vec_f_sds)[i], (vec_f_means-vec_f_sds)[i]), col="red")
    lines(c(i+s-0.1, i+s+0.1), c((vec_f_means+vec_f_sds)[i], (vec_f_means+vec_f_sds)[i]), col="red")
    
  }  
  axis(1, at=1:6, labels=c(1,2,3,4,6,8), pos=0)
  
  # legend
  tit=paste("Edge ",edge_num, ", Thickness = ", thick, "mm", sep="")
  legend(4.5,ymax,c("AIDR","FBP"), lwd=2.5, 
         col=c("black","red"), 
         pch=c(16,16),bty="n", title=tit)
}

# print plots
{
  pdfwidth=16
  pdfheight=10
  if (savepdf==TRUE) pdf("~/charite/ImageQuality/analysis/contour_sharpness/results/plots.pdf", width=pdfwidth, height=pdfheight)
  make_d_plot(1,0,d1_a_t0_means, d1_f_t0_means, d1_a_t0_sds, d1_f_t0_sds, 5)
  make_m_plot(1,0,m1_a_t0_means, m1_f_t0_means, m1_a_t0_sds, m1_f_t0_sds, 600)
  
  make_d_plot(2,0,d2_a_t0_means, d2_f_t0_means, d2_a_t0_sds, d2_f_t0_sds)
  make_m_plot(2,0,m2_a_t0_means, m2_f_t0_means, m2_a_t0_sds, m2_f_t0_sds, 400)
  
  make_d_plot(3,0,d3_a_t0_means, d3_f_t0_means, d3_a_t0_sds, d3_f_t0_sds, 6)
  make_m_plot(3,0,m3_a_t0_means, m3_f_t0_means, m3_a_t0_sds, m3_f_t0_sds, 400)
  
  make_d_plot(4,0,d4_a_t0_means, d4_f_t0_means, d4_a_t0_sds, d4_f_t0_sds)
  make_m_plot(4,0,m4_a_t0_means, m4_f_t0_means, m4_a_t0_sds, m4_f_t0_sds, 700)
  
  
  make_d_plot(1,5,d1_a_t5_means, d1_f_t5_means, d1_a_t5_sds, d1_f_t5_sds)
  make_m_plot(1,5,m1_a_t5_means, m1_f_t5_means, m1_a_t5_sds, m1_f_t5_sds, 250)
  
  make_d_plot(2,5,d2_a_t5_means, d2_f_t5_means, d2_a_t5_sds, d2_f_t5_sds)
  make_m_plot(2,5,m2_a_t5_means, m2_f_t5_means, m2_a_t5_sds, m2_f_t5_sds, 250)
  
  make_d_plot(3,5,d3_a_t5_means, d3_f_t5_means, d3_a_t5_sds, d3_f_t5_sds, 8)
  make_m_plot(3,5,m3_a_t5_means, m3_f_t5_means, m3_a_t5_sds, m3_f_t5_sds)
  
  make_d_plot(4,5,d4_a_t5_means, d4_f_t5_means, d4_a_t5_sds, d4_f_t5_sds)
  make_m_plot(4,5,m4_a_t5_means, m4_f_t5_means, m4_a_t5_sds, m4_f_t5_sds, 500)
  
  
  make_d_plot(1,8,d1_a_t8_means, d1_f_t8_means, d1_a_t8_sds, d1_f_t8_sds, 6)
  make_m_plot(1,8,m1_a_t8_means, m1_f_t8_means, m1_a_t8_sds, m1_f_t8_sds, 250)
  
  make_d_plot(2,8,d2_a_t8_means, d2_f_t8_means, d2_a_t8_sds, d2_f_t8_sds, 6)
  make_m_plot(2,8,m2_a_t8_means, m2_f_t8_means, m2_a_t8_sds, m2_f_t8_sds, 200)
  
  make_d_plot(3,8,d3_a_t8_means, d3_f_t8_means, d3_a_t8_sds, d3_f_t8_sds, 8)
  make_m_plot(3,8,m3_a_t8_means, m3_f_t8_means, m3_a_t8_sds, m3_f_t8_sds)
  
  make_d_plot(4,8,d4_a_t8_means, d4_f_t8_means, d4_a_t8_sds, d4_f_t8_sds)
  make_m_plot(4,8,m4_a_t8_means, m4_f_t8_means, m4_a_t8_sds, m4_f_t8_sds, 500)
  
  if (savepdf==TRUE) dev.off()
}

# write means and sd valuse to csv
{
  write(print("type,edge_num,rec,thick,add,num_of_elements,mean,sd"), outcsv)
  val=c("d", "m")
  rec=c("a", "f")
  thick=c(0,5,8)
  add=c(0,1,2,3,5,7)
  for (v in val){
    for (e in 1:4){
      for (r in rec){
        for (t in thick) {
          for (a in add){
            vecname = paste(v,e,"_",r,"_t",t,"_a",a, sep="")
            write(print(paste(v, e, r, t, a, length( get(vecname)), mean(get(vecname)), sd(get(vecname)), sep=",")), outcsv, append=TRUE)
          }
        }
      }
    }
  }
}

# function for creating cross table for p-values
write_pvalues <- function(value, outfile){
  # create header lines
  {
    line_v <- character()
    line_e <- character()
    line_r <- character()
    line_t <- character()
    line_a <- character()
    
    val=value
    for (v in val){# x2
      for (e in 1:4){# x4
        for (r in rec){ # x2
          for (t in thick) { # x3
            for (a in add){ # x6
              tmp = line_v
              line_v = paste(tmp,v,sep=",")
              tmp = line_e
              line_e = paste(tmp,e,sep=",")
              tmp = line_r
              line_r = paste(tmp,r,sep=",")
              tmp = line_t
              line_t = paste(tmp,t,sep=",")
              tmp = line_a
              line_a = paste(tmp,a,sep=",")
            }
          }
        }
      }
    }
    write(print(paste(",,,,",line_v,sep="")), outfile, append=FALSE)
    write(print(paste(",,,,",line_e,sep="")), outfile, append=TRUE)
    write(print(paste(",,,,",line_r,sep="")), outfile, append=TRUE)
    write(print(paste(",,,,",line_t,sep="")), outfile, append=TRUE)
    write(print(paste(",,,,",line_a,sep="")), outfile, append=TRUE)
  } 
  
  # fill p-values
  {
    # loop over rows in table
    for (v in val){
      for (e in 1:4){
        for (r in rec){
          for (t in thick) {
            for (a in add){
              vecname = paste(v,e,"_",r,"_t",t,"_a",a, sep="")
              line = paste(v,e,r,t,a, sep=",")
              
              # loop over columns in table
              for (v2 in val){
                for (e2 in 1:4){
                  for (r2 in rec){
                    for (t2 in thick) {
                      for (a2 in add){
                        vecname_2 = paste(v2,e2,"_",r2,"_t",t2,"_a",a2, sep="")
                        # paired t.test for same edge
                        if (e == e2) tst <- t.test(get(vecname), get(vecname_2), paired=TRUE)
                        else tst <- t.test(get(vecname), get(vecname_2), paired=FALSE)
                        tmp = line
                        line = paste(line,tst$p.value,sep=",")
                        
                      }
                    }
                  }
                }
              }
              write(print(line), outfile, append=TRUE)
              
            }
          }
        }
      }
    }
  }
}

# create p values
write_pvalues(c("d"), pv_d_csv)
write_pvalues(c("m"), pv_m_csv)


# backup
{
  # 
  # plot(c(1,2,3,4,5,6), m1_a_t8_means, ylim = c(0,300))
  # points(c(1,2,3,4,5,6), m1_f_t8_means, col="red")
  # for(i in 1:6){
  #     lines(c(i,i),c((m1_a_t8_means-m1_a_t8_sds)[i], (m1_a_t8_means+m1_a_t8_sds)[i]), lend="butt")
  #     lines(c(i-0.1, i+0.1), c((m1_a_t8_means-m1_a_t8_sds)[i], (m1_a_t8_means-m1_a_t8_sds)[i]))
  #     lines(c(i-0.1, i+0.1), c((m1_a_t8_means+m1_a_t8_sds)[i], (m1_a_t8_means+m1_a_t8_sds)[i]))
  # }
  # 
  # plot(c(1,2,3,4,5,6), d2_a_t8_means, ylim = c(0,4))
  # points(c(1,2,3,4,5,6), d2_f_t8_means, col="red")
  # for(i in 1:6){
  #     lines(c(i,i),c((d2_a_t8_means-d2_a_t8_sds)[i], (d2_a_t8_means+d2_a_t8_sds)[i]), lend="butt")
  #     lines(c(i-0.1, i+0.1), c((d2_a_t8_means-d2_a_t8_sds)[i], (d2_a_t8_means-d2_a_t8_sds)[i]))
  #     lines(c(i-0.1, i+0.1), c((d2_a_t8_means+d2_a_t8_sds)[i], (d2_a_t8_means+d2_a_t8_sds)[i]))
  # }
  # 
  # plot(c(1,2,3,4,5,6), m2_a_t8_means, ylim = c(0,300))
  # points(c(1,2,3,4,5,6), m2_f_t8_means, col="red")
  # for(i in 1:6){
  #     lines(c(i,i),c((m2_a_t8_means-m2_a_t8_sds)[i], (m2_a_t8_means+m2_a_t8_sds)[i]), lend="butt")
  #     lines(c(i-0.1, i+0.1), c((m2_a_t8_means-m2_a_t8_sds)[i], (m2_a_t8_means-m2_a_t8_sds)[i]))
  #     lines(c(i-0.1, i+0.1), c((m2_a_t8_means+m2_a_t8_sds)[i], (m2_a_t8_means+m2_a_t8_sds)[i]))
  # }
  # 
  # plot(c(1,2,3,4,5,6), d3_a_t8_means, ylim = c(0,7))
  # points(c(1,2,3,4,5,6), d3_f_t8_means, col="red")
  # for(i in 1:6){
  #     lines(c(i,i),c((d3_a_t8_means-d3_a_t8_sds)[i], (d3_a_t8_means+d3_a_t8_sds)[i]), lend="butt")
  #     lines(c(i-0.1, i+0.1), c((d3_a_t8_means-d3_a_t8_sds)[i], (d3_a_t8_means-d3_a_t8_sds)[i]))
  #     lines(c(i-0.1, i+0.1), c((d3_a_t8_means+d3_a_t8_sds)[i], (d3_a_t8_means+d3_a_t8_sds)[i]))
  # }
  # 
  # plot(c(1,2,3,4,5,6), m3_a_t8_means, ylim = c(0,300))
  # points(c(1,2,3,4,5,6), m3_f_t8_means, col="red")
  # for(i in 1:6){
  #     lines(c(i,i),c((m3_a_t8_means-m3_a_t8_sds)[i], (m3_a_t8_means+m3_a_t8_sds)[i]), lend="butt")
  #     lines(c(i-0.1, i+0.1), c((m3_a_t8_means-m3_a_t8_sds)[i], (m3_a_t8_means-m3_a_t8_sds)[i]))
  #     lines(c(i-0.1, i+0.1), c((m3_a_t8_means+m3_a_t8_sds)[i], (m3_a_t8_means+m3_a_t8_sds)[i]))
  # }
  # 
  # plot(c(1,2,3,4,5,6), d4_a_t8_means, ylim = c(0,4))
  # points(c(1,2,3,4,5,6), d4_f_t8_means, col="red")
  # for(i in 1:6){
  #     lines(c(i,i),c((d4_a_t8_means-d4_a_t8_sds)[i], (d4_a_t8_means+d4_a_t8_sds)[i]), lend="butt")
  #     lines(c(i-0.1, i+0.1), c((d4_a_t8_means-d4_a_t8_sds)[i], (d4_a_t8_means-d4_a_t8_sds)[i]))
  #     lines(c(i-0.1, i+0.1), c((d4_a_t8_means+d4_a_t8_sds)[i], (d4_a_t8_means+d4_a_t8_sds)[i]))
  # }
  # 
  # plot(c(1,2,3,4,5,6), m4_a_t8_means, ylim = c(0,800))
  # points(c(1,2,3,4,5,6), m4_f_t8_means, col="red")
  # for(i in 1:6){
  #     lines(c(i,i),c((m4_a_t8_means-m4_a_t8_sds)[i], (m4_a_t8_means+m4_a_t8_sds)[i]), lend="butt")
  #     lines(c(i-0.1, i+0.1), c((m4_a_t8_means-m4_a_t8_sds)[i], (m4_a_t8_means-m4_a_t8_sds)[i]))
  #     lines(c(i-0.1, i+0.1), c((m4_a_t8_means+m4_a_t8_sds)[i], (m4_a_t8_means+m4_a_t8_sds)[i]))
  # }
}