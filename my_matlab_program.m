parfor i=1:2391
for j=1:3350
L_10=squeeze(z_ARRAY_LST(i,,j,61:66));
W_10=squeeze(z_ARRAY_time(,i,j,61:66));
S_10=squeeze(z_ARRAY_IMPERVIOUS(i,,j,61:66));
D_10=squeeze(z_ARRAY_WB(i,,j,61:66));
C_10=squeeze(z_ARRAY_CNDVI(i,,j,61:66));
PR_ARRAY_10=horzcat(L_10,W_10,S_10,D_10);
lm_10=fitlm(PR_ARRAY_10,C_10);
array_10=table2array(lm_10.Coefficients);
FITz_10_LST_NDVI(i,j)=array_10(2,1);
FITz_10_TIME_NDVI(i,j)=array_10(3,1);
FITz_10_IMPERV_NDVI(i,j)=array_10(4,1);
FITz_10_WB_NDVI(i,j)=array_10(5,1);
end
end
