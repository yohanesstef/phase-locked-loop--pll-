v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1400 -50 -600 350 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="#net4"
color="4 7"
dataset=1
unitx=1
logx=0
logy=0
}
N -280 -50 -280 -40 {
lab=#net1}
N -280 20 -160 20 {
lab=GND}
N -160 10 -160 20 {
lab=GND}
N -190 20 -190 40 {
lab=GND}
N -210 -30 -160 -30 {
lab=#net2}
N -210 -70 -210 -30 {
lab=#net2}
N -280 -50 -160 -50 {
lab=#net1}
N -230 -100 -230 -10 {
lab=#net3}
N -230 -10 -160 -10 {
lab=#net3}
N -320 -70 -320 140 {
lab=#net2}
N -320 -70 -210 -70 {
lab=#net2}
N -350 -100 -350 40 {
lab=#net3}
N -350 40 -350 60 {
lab=#net3}
N -350 -100 -230 -100 {
lab=#net3}
N -420 200 -420 270 {
lab=GND}
N -320 200 -320 270 {
lab=GND}
N -420 270 -280 270 {
lab=GND}
N -420 60 -350 60 {
lab=#net3}
N -420 60 -420 140 {
lab=#net3}
N -280 270 -250 270 {
lab=GND}
N -250 20 -250 270 {
lab=GND}
C {devices/gnd.sym} -190 40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -280 -10 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -420 170 0 0 {name=V2 value=1.3 savecurrent=false}
C {devices/code.sym} -100 -250 0 0 {name=s1 only_toplevel=false value="
.option wnflag=1
.option savecurrents
.control
save all
tran 100n 1m 0
plot net4 
op
.endc
"}
C {devices/code.sym} -240 -240 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.param mc_mmm_cwitch=0
.param mc_pr_switch=1
"
spice_ignore=false}
C {/home/raditya/Documents/Projects/Silicons/Projects/ring-oscillator_with_tg.sym} -10 -20 0 0 {name=x2}
C {devices/vsource.sym} -320 170 0 0 {name=V5 value=0.5 savecurrent=false}
