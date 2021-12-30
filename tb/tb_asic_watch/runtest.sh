#$1
TOP=../..
      
vlib asic_watch
vmap work $PWD/asic_watch
vlog +acc=rn +incdir+$TOP/src/ $TOP/src/asic_watch.v \
$TOP/src/count10m.v \
$TOP/src/count24h.v \
$TOP/src/count60m.v \
$TOP/src/count60s.v \
$TOP/src/crystal2hz.v \
$TOP/src/segment7.v tb_asic_watch.sv ./colors.vh
vmake asic_watch/ > Makefile

if [ -z "$1" ]
then
      vsim work.tb_asic_watch -do "view wave -new" -do "do wave.do" -do "run -all"
else
      vsim work.tb_asic_watch $1 -do "do save_wave.do; exit"
fi
