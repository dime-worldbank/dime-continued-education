
***************
* Folder globals

* KB root path
if c(username) == "wb462869" global clonefolder "C:/Users/wb462869/github/dime-continued-education"

* BBD root path
if c(username) == "bbdaniels" global clonefolder "/Users/bbdaniels/GitHub/dime-continued-education"


* Session folder
global sessionfldr "${clonefolder}/ra-sessions/data-intake-stata"
global data        "${sessionfldr}/data"

***************
***************


***************
* Prep data

* Get data as shared from project
use "${data}/LWH_FUP2.dta", clear

** ieduplicates
* Gen string to simulate uuid key string
gen      key    = _n
gen      keystr = ""
replace  keystr = "X"   if key < 1000
replace  keystr = "XX"  if key < 100
replace  keystr = "XXX" if key < 10
tostring key    , replace
replace  key    = "uuid_" + keystr + key
drop     keystr


***************
* Save data

saveold "${data}/ce-intake-stata.dta" , version(12) replace
