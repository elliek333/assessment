==================!=DISCLAIMER=!=======================
to run the script necessary for work flow the user must 
have have the necessary r packages.
=======================================================
Initial Version 1.0.0
Date: 29/12/20

The work flow and files contained within this folder 
allow analysis of dementia determinants and linear
discriminant analysis.

---------------------------------------------------
Run Order
---------------------------------------------------
main.Rmd:
1. Run all chunks or knit

dementia_grouping_questionnaire.Rmd:
1. run shiny-questionnaire chunk and complete 
questionnaire
2. knit, do not re do questionnaire
---------------------------------------------------
PACKAGES AND ADDINS
---------------------------------------------------
code can be copied into R and run to install the 
necessary packages and addins:

install.packages("devtools")
devtools::install_github("benmarwick/wordcountaddin",
type = "source", dependencies = TRUE)
devtools::install_github("daattali/shinyforms")
install.packages("tidyverse")
install.packages("caret")
install.packages("kableExtra")
install.packages("readxl")
install.packages("ggpubr")
install.packages("shiny")

---------------------------------------------------
VERSIONS
---------------------------------------------------
The versions of softwares used to generate work flow

R version 4.0.2
RStudio Version 1.4.1010
R Markdown Version 2.6
Tidyverse Version 1.3.0
Caret Version 6.0-86
KableExtra Version 1.3.1
Readxl Version 1.3.1
Ggpubr Version 0.4.0
Shiny Version 1.5.0

---------------------------------------------------
Compatibility/Troubleshooting
---------------------------------------------------
Work flow is not compatible with the plyr package
Word count addin not compatible for R Version 4.0.3
Error in dementia_grouping_questionnaire.Rmd: object
'age' not found: there is no file in the responses
folder, complete the questionnaire. 
---------------------------------------------------
SET UP:
---------------------------------------------------
excel file containing visit data and patient data
sheets should be deposited in the raw_data file. 
visit data columns: Subject ID, MRI Number, Visit,
Age, MMSE, CDR, eTIV, nWBV, ASF
patient data columns: Subject ID, Group, M/F, EDUC
SES
---------------------------------------------------
PROCESSING:
---------------------------------------------------
to process the raw data open the R markdown file, if 
processing data other than the set included the code
in the code chunks can be altered to work with new
data. 

If data set has different columns user will need to 
specify these in the following code chunks:

Independent group columns (could be replaced with
differing experimental conditions): Age, MMSE, CDR,
eTIV, nWBV, ASF, M/F, EDUC, SES, Visit, Group

Dependent group columns: CDR

Please note some columns may need to be removed as well,
some analysis requires only numeric classed columns.