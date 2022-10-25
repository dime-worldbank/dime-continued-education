
***************
* Folder globals

* root path to clone
if c(username) == "" global sessionfldr ""

global data   "${sessionfldr}\data"
global iecorr "${sessionfldr}\demo-files/iecorrect"

***************
***************


***************
* Prep data

* Get data as shared from project
use "${data}\ce-intake-stata.dta", clear


****************
* Step 1

// iecorrect template using "${iecorr}/demo-corrections.xlsx", idvar(key)


****************
* Step 2

// iecorrect apply using "${iecorr}/demo-corrections.xlsx", idvar(key) noisily



