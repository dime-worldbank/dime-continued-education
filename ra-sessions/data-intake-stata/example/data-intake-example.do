
***************
* Folder globals

* root path to clone
if c(username) == "" global sessionfldr ""

global data   "${sessionfldr}/data"
global exmpl  "${sessionfldr}/example"
global iedup  "${exmpl}/ieduplicates"
global iecb   "${exmpl}/iecodebook"
global iecorr "${exmpl}/iecorrect"
global iesave "${exmpl}/iesave"

global project_version 14

***************
***************

ieboilstart, v(${project_version})
`r(version)'

***************
* Open data

* Get data as shared from project
use "${data}/ce-intake-stata.dta", clear

***************
* Demo ieduplicates

ieduplicates ID_05 using "${iedup}/duplicates-report.xlsx" , unique(key) 

***************
* Demo iecodebook

* Apply template of adjustments to dataset
iecodebook apply using "${iecb}/codebook-completed.xlsx"

* Create dataset record
iecodebook export using "${iecb}/codebook-data.xlsx", replace

***************
* Demo iecorrect

iecorrect apply using "${iecorr}/corrections-completed.xlsx", idvar(id_05) noisily

***************
* Demo iesave

${load_iesave}
iesave using "${iesave}/data-intake.dta", id(id_05) report dtaversion(${project_version}) replace

char list _dta[]