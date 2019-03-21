cd src
target extended-remote COM8
file project.elf
monitor version
monitor tpwr enable
monitor swdp_scan
attach 1
set pagination off
set mem inaccessible-by-default off
load
compare-sections
kill
quit