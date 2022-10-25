
***************
* Folder globals

* root path to clone
if c(username) == "" global sessionfldr ""

global data   "${sessionfldr}\data"
global iedup  "${sessionfldr}\demo-files/ieduplicates"

***************
***************


***************
* Prep data

* Get data as shared from project
use "${data}\ce-intake-stata.dta", clear



****************
* Step 1

// count
// ieduplicates ID_05 using "${iedup}/demo-report.xlsx" , unique(key)


****************
* Step 2

// count
// ieduplicates ID_05 using "${iedup}/demo-report.xlsx" , unique(key) force
// count


****************
* Step 3 

* Fill in report and run step 2 again


****************
* Step 4

* Run without force

// count
// ieduplicates ID_05 using "${iedup}/demo-report.xlsx" , unique(key)
// count
