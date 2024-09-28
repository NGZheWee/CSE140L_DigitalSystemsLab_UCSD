srcSourceCodeView
srcResizeWindow -8 -8 1509 901
debImport "-f" \
          "C:\\Users\\xinyuan\\Desktop\\traffic_light\\traffic_light_part1\\simulation\\filelist.f" \
          "-sv" -path \
          {C:\Users\xinyuan\Desktop\traffic_light\traffic_light_part1\simulation}
srcHBSelect "lab3_part1_tb.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "lab3_part1_tb.dut" -delim "."
srcHBSelect "lab3_part1_tb.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "lab3_part1_tb.dut" -delim "."
srcDeselectAll -win $_nTrace1
debReload
srcHBSelect "lab3_part1_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {10 10 3 4 1 1}
wvCreateWindow
wvResizeWindow -win $_nWave2 50 214 960 332
wvResizeWindow -win $_nWave2 50 214 960 332
wvOpenFile -win $_nWave2 \
           {C:\Users\xinyuan\Desktop\traffic_light\traffic_light_part1\simulation\novas.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {11 13 3 15 7 2}
srcDeselectAll -win $_nTrace1
srcSelect -signal "ns_light" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {11 13 3 14 7 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {11 13 3 13 9 1}
srcAddSelectedToWave -win $_nTrace1
wvResizeWindow -win $_nWave2 2545 -4 960 332
srcResizeWindow 0 0 1493 469
wvResizeWindow -win $_nWave2 0 461 1493 431
wvSetCursor -win $_nWave2 44.095376 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )}
wvResizeWindow -win $_nWave2 0 461 1493 431
wvResizeWindow -win $_nWave2 0 461 1493 431
wvSelectSignal -win $_nWave2 {( "G1" 4 )}
wvSaveSignal -win $_nWave2 \
           "C:\\Users\\xinyuan\\Desktop\\traffic_light\\traffic_light_part1\\simulation\\signal.rc"
wvSetCursor -win $_nWave2 48.865964 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 8 )}
wvSelectSignal -win $_nWave2 {( "G1" 6 )}
wvSetCursor -win $_nWave2 119.974366 -snap {("G1" 0)}
wvSetCursor -win $_nWave2 140.194765 -snap {("G1" 0)}
wvSetCursor -win $_nWave2 156.708090 -snap {("G1" 1)}
wvGoToTime -win $_nWave2 93
wvSetCursor -win $_nWave2 91.665808 -snap {("G1" 7)}
srcActiveTrace "lab3_part1_tb.dut.ew_left_light\[1:0\]" -win $_nTrace1
wvSetCursor -win $_nWave2 36.059711 -snap {("G1" 7)}
srcActiveTrace "lab3_part1_tb.dut.ew_left_light\[1:0\]" -win $_nTrace1
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 7 )}
wvSelectSignal -win $_nWave2 {( "G1" 8 )}
wvSetCursor -win $_nWave2 232.534585 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 59.313170 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 46.843924 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 65.716296 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 55.269090 -snap {("G1" 7)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "ns_light" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "present_state" -win $_nTrace1
wvSetCursor -win $_nWave2 95.035874 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 103.798047 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 124.355452 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 36.059711 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 36.059711 -snap {("G1" 7)}
srcActiveTrace "lab3_part1_tb.dut.ew_left_light\[1:0\]" -win $_nTrace1
wvGoToTime -win $_nWave2 100
wvSetCursor -win $_nWave2 100.090974 -snap {("G1" 1)}
srcActiveTrace "lab3_part1_tb.dut.clk" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
wvSetCursor -win $_nWave2 29.319578 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 35.048691 -snap {("G1" 7)}
srcActiveTrace "lab3_part1_tb.dut.ew_left_light\[1:0\]" -win $_nTrace1
wvSetCursor -win $_nWave2 100.090974 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 104.472060 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 89.643768 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 94.024854 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 101.439000 -snap {("G1" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "present_state" -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "present_state" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "present_state" -win $_nTrace1
srcAction -pos 215 3 10 -win $_nTrace1 -name "present_state" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "present_state" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "present_state" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSearchString "RGR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {99 99 9 10 1 1}
srcSearchString "RGR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {109 109 3 4 1 1}
wvSetCursor -win $_nWave2 106.157093 -snap {("G1" 1)}
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvResizeWindow -win $_nWave2 0 461 1493 431
srcHBSelect "lab3_part1_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {10 10 3 4 1 1}
wvGoToTime -win $_nWave2 200
srcDeselectAll -win $_nTrace1
srcSelect -signal "present_state" -win $_nTrace1
wvGoToTime -win $_nWave2 690
wvGoToTime -win $_nWave2 1100
wvSetCursor -win $_nWave2 1105.729113 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 1105.729113 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 1101.348027 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 6 )}
wvSetCursor -win $_nWave2 929.474637 -snap {("G2" 1)}
wvGoToTime -win $_nWave2 810
wvSetRadix -win $_nWave2 -format UDec {("G2" 1)}
wvSetCursor -win $_nWave2 737.206564 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvGoToTime -win $_nWave2 810
wvSetCursor -win $_nWave2 821.121219 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 787.420555 -snap {("G1" 7)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 67.453626 779.932546
wvSetCursor -win $_nWave2 217.638896 -snap {("G2" 1)}
wvGoToTime -win $_nWave2 215810
wvGoToTime -win $_nWave2 810
wvGoToTime -win $_nWave2 110
wvGoToTime -win $_nWave2 1100
wvZoom -win $_nWave2 1030.314035 1190.711903
wvSetCursor -win $_nWave2 1105.103260 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 1099.152580 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 1100.640250 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvGoToTime -win $_nWave2 680
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
srcHBSelect "lab3_part1_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {10 10 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rising_edge_ew_left_sensor" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvGoToTime -win $_nWave2 1230
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
srcHBSelect "lab3_part1_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {10 10 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "conflict" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 1191.050096 -snap {("G1" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 623.946037 938.026981
srcDeselectAll -win $_nTrace1
srcSelect -signal "conflict_posedge" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSearchString "RRG" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {149 149 9 10 1 1}
srcSearchString "RRG" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {161 161 6 6 18 21}
srcSearchString "RRG" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {203 203 9 10 1 1}
srcSearchString "RRG" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {212 212 6 6 18 21}
srcSearchString "RRG" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {219 219 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "ctr10" -win $_nTrace1
wvSetCursor -win $_nWave2 693.065031 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "ctr10" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ctr10" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ctr10" -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
srcHBSelect "lab3_part1_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {10 10 3 4 1 1}
wvGoToTime -win $_nWave2 920
wvSelectSignal -win $_nWave2 {( "G1" 5 )}
wvSelectSignal -win $_nWave2 {( "G1" 7 )}
wvGoToTime -win $_nWave2 950
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 858927920
wvSelectSignal -win $_nWave2 {( "G2" 1 )}
wvGoToTime -win $_nWave2 910
wvSelectSignal -win $_nWave2 {( "G1" 7 )}
wvGoToTime -win $_nWave2 350
wvSetCursor -win $_nWave2 353.442708 -snap {("G2" 1)}
wvGoToTime -win $_nWave2 820
wvSelectSignal -win $_nWave2 {( "G1" 8 )}
wvSelectSignal -win $_nWave2 {( "G1" 7 )}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 841.062395 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 7 )}
wvZoom -win $_nWave2 714.586847 1656.829680
wvZoom -win $_nWave2 758.282762 1342.219088
wvSetCursor -win $_nWave2 933.562131 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 926.669122 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 933.069774 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 0.000000 556.492411
wvSetCursor -win $_nWave2 111.673857 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 5.630615 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 8.445922 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 0.000000 -snap {("G1" 6)}
wvGoToTime -win $_nWave2 810
wvZoom -win $_nWave2 771.993351 946.542404
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 858927920
srcDeselectAll -win $_nTrace1
srcSelect -signal "ctr5" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
srcHBSelect "lab3_part1_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {10 10 3 4 1 1}
wvSetCursor -win $_nWave2 784.404769 -snap {("G2" 6)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 784.257595 -snap {("G2" 6)}
srcActiveTrace "lab3_part1_tb.dut.ctr5\[31:0\]" -win $_nTrace1
wvGoToTime -win $_nWave2 820
wvSetCursor -win $_nWave2 779.379816 -snap {("G2" 6)}
srcActiveTrace "lab3_part1_tb.dut.ctr5\[31:0\]" -win $_nTrace1
wvSetCursor -win $_nWave2 801.750352 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 805.871240 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvGoToTime -win $_nWave2 1350
wvGoToTime -win $_nWave2 1490
wvGoToTime -win $_nWave2 1480
wvSetCursor -win $_nWave2 1478.822603 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
debExit
