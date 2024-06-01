v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 -170 380 -170 {
lab=VCp}
N 380 -170 380 -150 {
lab=VCp}
N 380 -150 400 -150 {
lab=VCp}
N 360 -150 370 -150 {
lab=VCn}
N 370 -150 370 -130 {
lab=VCn}
N 370 -130 400 -130 {
lab=VCn}
N 110 -60 120 -60 {
lab=VPWR}
N 110 -40 120 -40 {
lab=VGND}
N 110 -20 120 -20 {
lab=VCn}
N 110 0 120 0 {
lab=VCp}
N 50 -150 60 -150 {
lab=VPWR}
N 50 -110 60 -110 {
lab=VGND}
N 50 -130 60 -130 {
lab=FEEDBACK}
N 50 -170 60 -170 {
lab=REF}
N 700 -170 710 -170 {
lab=OUT}
N 90 20 100 20 {
lab=OUT}
N 400 -180 400 -170 {
lab=VPWR}
N 400 -110 400 -100 {
lab=VGND}
N 400 -190 400 -180 {
lab=VPWR}
N 400 -100 400 -90 {
lab=VGND}
C {pfd_ver6.sym} 210 -140 0 0 {name=x1}
C {ring-oscillator_with_tg.sym} 550 -140 0 0 {name=x2}
C {devices/ipin.sym} 110 -60 0 0 {name=p1 lab=VPWR}
C {devices/ipin.sym} 110 -40 0 0 {name=p2 lab=VGND}
C {devices/lab_pin.sym} 370 -130 3 0 {name=p6 sig_type=std_logic lab=VCn}
C {devices/lab_pin.sym} 370 -170 1 0 {name=p7 sig_type=std_logic lab=VCp}
C {devices/opin.sym} 100 20 0 0 {name=p8 lab=OUT}
C {devices/lab_pin.sym} 710 -170 2 0 {name=p9 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 400 -190 2 0 {name=p10 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 400 -90 2 0 {name=p11 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 50 -150 2 1 {name=p12 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 50 -110 2 1 {name=p13 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 50 -130 2 1 {name=p14 sig_type=std_logic lab=FEEDBACK}
C {devices/lab_pin.sym} 50 -170 2 1 {name=p15 sig_type=std_logic lab=REF}
C {devices/ipin.sym} 110 40 0 0 {name=p16 lab=REF}
C {devices/ipin.sym} 110 60 0 0 {name=p17 lab=FEEDBACK}
C {devices/iopin.sym} 110 -20 0 1 {name=p5 lab=VCn}
C {devices/iopin.sym} 110 0 0 1 {name=p18 lab=VCp}
