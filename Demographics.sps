* Encoding: UTF-8.

DATASET ACTIVATE DataSet3.
DESCRIPTIVES VARIABLES=Gender Age Ac_year Box_Race Nativity Dad_edu Mom_edu P_Inc RC_Nbrhd HS_GPA 
    GPA
  /STATISTICS=MEAN STDDEV MIN MAX.

FREQUENCIES VARIABLES=Gender Age Ac_year Box_Race Nativity Dad_edu Mom_edu P_Inc RC_Nbrhd HS_GPA 
    GPA
  /ORDER=ANALYSIS.
