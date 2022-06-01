* Encoding: UTF-8.
***Correlations for Combined Sample***

CORRELATIONS
  /VARIABLES=BLM_SA BLM_DV BLM_PartN cobras_blatant cobras_institutional cobras_unaware mrs_tot
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

CORRELATIONS
  /VARIABLES=BLM_SA BLM_DV BLM_Tot18 BLM_Tot23 cc_tot cc_Racism cc_Classism cc_Het spc_tot 
    cobras_tot cobras_blatant cobras_unaware cobras_institutional mmm_achieve mmm_mobility mrs_tot 
    dass_tot dass_depress dass_anxiety dass_stress swl_tot panas_pos panas_neg bel_tot open_tot Eth_St_Tot BLM_PartN
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

*Gender Age Nativity Dad_edu Mom_edu P_Inc HS_GPA*

DATASET ACTIVATE DataSet1.
CORRELATIONS
  /VARIABLES=BLM_SA BLM_DV BLM_Tot18 BLM_Tot23 cc_tot spc_tot 
    cobras_tot mmm_achieve mmm_mobility mrs_tot 
    dass_tot dass_depress dass_anxiety dass_stress swl_tot panas_pos panas_neg bel_tot open_tot Eth_St_Tot
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

***Correlations for POC Sample***

CORRELATIONS
  /VARIABLES= BLM_SA BLM_DV BLM_Tot18 BLM_PartN WITH  
cc_Racism cc_Classism cc_Het spc_tot cobras_blatant cobras_unaware 
    cobras_institutional mmm_achieve mmm_mobility mrs_tot dass_tot dass_depress dass_anxiety 
    dass_stress swl_tot panas_pos panas_neg aros_tot aros_er aros_am aros_dev aros_thi pedq_tot pedq_er 
    pedq_sd pedq_ws pedq_ta mibi_cen mibi_pri mibi_pub rse_tot bel_tot open_tot
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

***Correlations for White Sample***

CORRELATIONS
  /VARIABLES=  BLM_SA BLM_DV BLM_Tot18 WITH cc_Racism cc_Classism cc_Het spc_tot cobras_blatant 
    cobras_unaware cobras_institutional mmm_achieve mmm_mobility mrs_tot dass_depress dass_anxiety 
    dass_stress swl_tot panas_pos panas_neg pcwr_tot pcwr_e pcwr_g pcwr_f bel_tot open_tot wpas_tot 
    wpas_con wpas_ant wpas_awr wpas_rem
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

***Final 2 factor 12 items***

*Total 23 scale*

COMPUTE BLM_Tot23 = mean(BLM1, BLM2, BLM3, BLM4, BLM5, BLM6, BLM8, BLM9, BLM10, BLM11, BLM12, BLM13, BLM14, BLM15, BLM16, 
    BLM17, BLM18, BLM19, BLM21, BLM22, BLM23, BLM24, BLM25).
VARIABLE LABELS BLM_Tot23 'BLM 2 factor total 23 item scale'.
EXECUTE.

RELIABILITY
  /VARIABLES= BLM1 BLM2 BLM3 BLM4 BLM5 BLM6 BLM8 BLM9 BLM10 BLM11 BLM12 BLM13 BLM14 BLM15 BLM16 
    BLM17 BLM18 BLM19 BLM21 BLM22 BLM23 BLM24 BLM25
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .

*Total 18 scale*

COMPUTE BLM_Tot18 = mean(blm19, blm21, blm12, blm5, blm24, blm22, blm1, blm4, blm15, blm16, blm18, blm23, blm13, blm11, blm10, blm9, blm8, blm6).
VARIABLE LABELS BLM_Tot18 'BLM 2 factor total scale 18 items'.
EXECUTE.

RELIABILITY
  /VARIABLES= blm19, blm21, blm12, blm5, blm24, blm22, blm1, blm4, blm15, blm16, blm18, blm23, blm13, blm11, blm10, blm9, blm8, blm6
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .

*Total 12 scale*

COMPUTE BLM_Tot12 = mean(blm19, blm21, blm12, blm5, blm24, blm22, blm13, blm11, blm10, blm9, blm8, blm6).
VARIABLE LABELS BLM_Tot12 'BLM 2 factor total scale 12 items'.
EXECUTE.

RELIABILITY
  /VARIABLES= blm19, blm21, blm12, blm5, blm24, blm22, blm13, blm11, blm10, blm9, blm8, blm6
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .

  *Subscale 1*

COMPUTE BLM_SA = mean(blm19, blm21, blm12, blm5, blm24, blm22, blm1, blm4, blm15, blm16, blm18, blm23).
VARIABLE LABELS BLM_SA 'BLM 2 factor first subscale - Structural awareness'.
EXECUTE.

RELIABILITY
  /VARIABLES=blm19, blm21, blm12, blm5, blm24, blm22 blm1, blm4, blm15, blm16, blm18, blm23,
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .

*Subscale 2*

COMPUTE BLM_DV = mean(blm13, blm11, blm10, blm9, blm8, blm6).
VARIABLE LABELS BLM_Inter 'BLM 2 factor second subscale - Diversity Values'.
EXECUTE.

RELIABILITY
  /VARIABLES=blm13, blm11, blm10, blm9, blm8, blm6
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .


