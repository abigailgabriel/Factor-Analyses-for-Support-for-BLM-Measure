* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT 
 cc_tot
 cc_Racism 
 cc_Classism 
 cc_Het spc_tot
cobras_tot
cobras_blatant
cobras_unaware
cobras_institutional
mmm_achieve
mmm_mobility
mrs_tot
dass_tot
dass_depress
dass_anxiety
dass_stress
swl_tot
panas_pos
panas_neg
bel_tot
open_tot
  /METHOD=ENTER BLM_Black BLM_Inter.

* Encoding: UTF-8.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT 
Eth_St_Tot
BLM_PartN
  /METHOD=ENTER BLM_Black BLM_Inter.

DATASET ACTIVATE DataSet1.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT 
Gender
Age
Nativity
P_Inc
Dad_edu
Mom_edu
GPA
  /METHOD=ENTER BLM_Black BLM_Inter.

*******************POC Variables****************************

DATASET ACTIVATE DataSet1.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT 
aros_tot
aros_er
aros_am
aros_dev
aros_thi
pedq_tot
pedq_er
pedq_sd
pedq_ws
pedq_ta
mibi_cen
mibi_pri
mibi_pub
rse_tot
  /METHOD=ENTER BLM_Black BLM_Inter.

*******************White Variables****************************
DATASET ACTIVATE DataSet1.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT 
pcwr_tot
pcwr_e
pcwr_g
pcwr_f
bel_tot
open_tot
wpas_tot
wpas_con
wpas_ant
wpas_awr
wpas_rem
  /METHOD=ENTER BLM_Black BLM_Inter.
