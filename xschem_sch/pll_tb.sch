v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -50 240 -50 {
lab=VCp}
N 240 80 240 100 {
lab=GND}
N 290 10 290 90 {
lab=GND}
N 240 90 290 90 {
lab=GND}
N 200 90 240 90 {
lab=GND}
N 270 -50 290 -50 {
lab=#net1}
N 240 20 270 20 {
lab=#net1}
N -260 -60 -260 -50 {
lab=GND}
N -260 -140 -260 -120 {
lab=Vref}
N 590 -50 620 -50 {
lab=Vfed}
N -110 -30 -100 -30 {
lab=#net1}
N -110 -50 -100 -50 {
lab=Vref}
N 240 -50 250 -50 {
lab=VCp}
N 250 -50 250 -30 {
lab=VCp}
N 250 -30 290 -30 {
lab=VCp}
N 200 -30 230 -30 {
lab=VCn}
N 230 -30 230 -10 {
lab=VCn}
N 230 -10 290 -10 {
lab=VCn}
N 270 -50 270 20 {
lab=#net1}
N -100 10 -100 90 {
lab=GND}
N -100 90 200 90 {
lab=GND}
N -110 -10 -100 -10 {
lab=Vfed}
N 210 20 240 20 {
lab=#net1}
N 210 20 210 70 {
lab=#net1}
N -110 70 210 70 {
lab=#net1}
N -160 70 -110 70 {
lab=#net1}
N -160 -30 -160 70 {
lab=#net1}
N -160 -30 -110 -30 {
lab=#net1}
N 110 220 110 240 {
lab=GND}
N 190 230 190 240 {
lab=#net2}
N 190 300 190 320 {
lab=GND}
N 110 240 110 320 {
lab=GND}
N 110 320 110 330 {
lab=GND}
N 110 320 190 320 {
lab=GND}
N 190 150 190 170 {
lab=VCp}
N 110 150 190 150 {
lab=VCp}
N 110 150 110 160 {
lab=VCp}
N 280 220 280 240 {
lab=GND}
N 360 230 360 240 {
lab=#net3}
N 360 300 360 320 {
lab=GND}
N 280 240 280 320 {
lab=GND}
N 280 320 280 330 {
lab=GND}
N 280 320 360 320 {
lab=GND}
N 360 150 360 170 {
lab=VCn}
N 280 150 360 150 {
lab=VCn}
N 280 150 280 160 {
lab=VCn}
C {devices/vsource.sym} -260 -90 0 0 {name=V1 value="PULSE(0 1.8 0n 0.1p 0.1p 50n 100n)" savecurrent=false}
C {devices/code.sym} -100 -250 0 0 {name=s1 only_toplevel=false value="
.option wnflag=1
.option savecurrents
.control
save all
tran 1n 50u 0
plot VCp VCn
plot Vref Vfed
plot Vfed
.endc
"}
C {devices/code.sym} -240 -250 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.param mc_mmm_cwitch=0
.param mc_pr_switch=1
"
spice_ignore=false}
C {ring-oscillator_with_tg.sym} 440 -20 0 0 {name=x1}
C {devices/vsource.sym} 240 50 0 0 {name=V4 value=1.8 savecurrent=false}
C {devices/gnd.sym} 240 100 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -260 -50 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -260 -140 0 0 {name=p1 sig_type=std_logic lab=Vref}
C {devices/lab_pin.sym} 620 -50 0 1 {name=p3 sig_type=std_logic lab=Vfed}
C {devices/lab_pin.sym} -110 -10 0 0 {name=p4 sig_type=std_logic lab=Vfed}
C {devices/lab_pin.sym} -110 -50 0 0 {name=p5 sig_type=std_logic lab=Vref}
C {devices/lab_pin.sym} 230 -50 3 1 {name=p2 sig_type=std_logic lab=VCp}
C {devices/lab_pin.sym} 210 -30 3 1 {name=p6 sig_type=std_logic lab=VCn}
C {pfd_ver6.sym} 50 -20 0 0 {name=x2}
C {devices/capa.sym} 110 190 0 0 {name=C2
m=1
value= 10p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 190 270 0 0 {name=C5
m=1
value= 10p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 190 200 0 0 {name=R1
value=1.6k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 110 330 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 110 150 2 1 {name=p7 sig_type=std_logic lab=VCp}
C {devices/capa.sym} 280 190 0 0 {name=C1
m=1
value= 10p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 360 270 0 0 {name=C3
m=1
value= 10p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 360 200 0 0 {name=R2
value=1.6k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 280 330 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 280 150 2 1 {name=p8 sig_type=std_logic lab=VCn}
