
***************
* Folder globals

* root path to clone
if c(username) == "" global sessionfldr ""

global data   "${sessionfldr}/data"
global iecb  "${sessionfldr}/demo-files/iecodebook"

***************
***************


***************
* Prep data

* Get data as shared from project
use "${data}/ce-intake-stata.dta", clear



****************
* Step 1: Create template for adjustments to dataset

* iecodebook template using "${iecb}/codebook.xlsx"

****************
* Step 2: Complete template

****************
* Step 3: Apply template of adjustments to dataset

* iecodebook apply using "${iecb}/codebook-completed.xlsx"

// End of file
