
***************
* Folder globals

* root path to clone
if c(username) == "" global sessionfldr ""

global data   "${sessionfldr}/data"
global iedup  "${sessionfldr}/demo-files/ieduplicates"

***************
***************

****************
* Step 1

// * Get data as shared from project
// use "${data}/ce-intake-stata.dta", clear
//
// count
// ieduplicates ID_05 using "${iedup}/demo-report.xlsx" , unique(key)


****************
* Step 2

// * Get data as shared from project
// use "${data}/ce-intake-stata.dta", clear
//
// count
// ieduplicates ID_05 using "${iedup}/demo-report.xlsx" , unique(key) force
// count


****************
* Step 3

// * Get data as shared from project
// use "${data}/ce-intake-stata.dta", clear
//
// * Investigatge duplicates
// iecompdup ID_05 , id(3004) didifference
// iecompdup ID_05 , id(3209) didifference



****************
* Step 4

* Apply corrections and run without force

// * Get data as shared from project
// use "${data}/ce-intake-stata.dta", clear
//
// count
// ieduplicates ID_05 using "${iedup}/demo-report.xlsx" , unique(key)
// count
