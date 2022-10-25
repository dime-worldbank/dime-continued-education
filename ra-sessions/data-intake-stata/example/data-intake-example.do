
***************
* Folder globals

* root path to clone
if c(username) == "" global sessionfldr ""

global data   "${sessionfldr}\data"
global exmpl  "${sessionfldr}\example"
global iedup  "${exmpl}\ieduplicates"

***************
***************


***************
* Open demo data

* Get data as shared from project
use "${data}\ce-intake-stata.dta", clear


***************
* Demo ieduplicates

ieduplicates ID_05 using "${iedup}/example-report.xlsx" , unique(key) 


***************
* Demo iecodebook


***************
* Demo iecorrect


***************
* Demo iesave