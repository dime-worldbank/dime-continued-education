
***************
* Folder globals

* root path to clone
if c(username) == "" global sessionfldr ""

global data   "${sessionfldr}\data"
global exmpl  "${sessionfldr}\example"
global iedup  "${exmpl}\ieduplicates"
global iecd   "${exmpl}\iecodebook"
global iecorr "${exmpl}\iecorrect"

***************
***************

ieboilstart, v(14)
`r(version)'

***************
* Open data

* Get data as shared from project
use "${data}\ce-intake-stata.dta", clear


***************
* Demo ieduplicates

ieduplicates ID_05 using "${iedup}/duplicates-report.xlsx" , unique(key) 


***************
* Demo iecodebook

* Apply template of adjustments to dataset
iecodebook apply using "${iecb}/codebook-completed.xlsx"

* Create dataset record
iecodebook export using "${iecb}/codebook-data.xlsx"

***************
* Demo iecorrect

iecorrect apply using "${iecorr}/demo-corrections.xlsx", idvar(key) noisily

***************
* Demo iesave