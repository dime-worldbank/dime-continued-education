
***************
* Folder globals

* KB root path
if c(username) == "wb462869" global clonefolder "C:\Users\wb462869\github\dime-continued-education"

* BBD root path
if c(username) == "" global clonefolder ""


* Session folder
global sessionfldr "${clonefolder}\ra-sessions\data-intake-stata"
global data        "${sessionfldr}\data"

***************
***************


***************
* Prep data

* Get data as shared from project
use "${data}\LWH_FUP2.dta"








***************
* Save data

saveold "${data}\ce-intake-stata.dta" , version(12)