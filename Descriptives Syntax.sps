* Encoding: UTF-8.

FREQUENCIES VARIABLES=Group Gender Ac_year Sex_Or Box_Race MBox_Race DBox_Race Nativity Dad_edu 
    Mom_edu P_Inc RC_Nbrhd
  /ORDER=ANALYSIS.

DESCRIPTIVES VARIABLES=Age HS_GPA GPA
  /STATISTICS=MEAN STDDEV MIN MAX.

SORT CASES  BY Group.
SPLIT FILE LAYERED BY Group.
