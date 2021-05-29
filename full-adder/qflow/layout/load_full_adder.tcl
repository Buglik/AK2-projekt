gds vendor true ; gds rescale false ; gds read  /usr/share/qflow/tech/osu018/osu018_stdcells.gds2


 ; lef read  /usr/share/qflow/tech/osu018/osu018_stdcells.lef

load full_adder
select top cell
expand
