srcSourceCodeView
srcResizeWindow 1443 271 1494 867
debImport "-f" "C:\\Users\\xinyuan\\Desktop\\alarm_part1\\simulation\\filelist.f" \
          "-sv" -path {C:\Users\xinyuan\Desktop\alarm_part1\simulation}
wvCreateWindow
wvResizeWindow -win $_nWave2 50 214 960 332
wvResizeWindow -win $_nWave2 50 214 960 332
srcHBSelect "lab2_tb.sd" -win $_nTrace1
srcSetScope -win $_nTrace1 "lab2_tb.sd" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {19 20 8 7 1 9}
srcAddSelectedToWave -win $_nTrace1
wvResizeWindow -win $_nWave2 3422 751 960 331
wvResizeWindow -win $_nWave2 3422 751 965 330
wvResizeWindow -win $_nWave2 3422 751 1037 349
wvResizeWindow -win $_nWave2 3422 751 1139 374
wvResizeWindow -win $_nWave2 3422 751 1249 392
wvResizeWindow -win $_nWave2 3422 751 1355 425
wvResizeWindow -win $_nWave2 3422 751 1384 440
wvResizeWindow -win $_nWave2 3422 751 1413 449
wvResizeWindow -win $_nWave2 3422 751 1428 454
wvResizeWindow -win $_nWave2 3422 751 1442 457
wvResizeWindow -win $_nWave2 3422 751 1447 458
wvResizeWindow -win $_nWave2 3951 40 1447 458
srcDeselectAll -win $_nTrace1
wvResizeWindow -win $_nWave2 2528 696 1447 458
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {19 20 8 7 1 1}
wvOpenFile -win $_nWave2 \
           {C:\Users\xinyuan\Desktop\alarm_part1\simulation\novas.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvResizeWindow -win $_nWave2 2309 718 1447 458
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {19 20 8 7 1 1} -backward
srcAddSelectedToWave -win $_nTrace1
wvResizeWindow -win $_nWave2 2309 718 1447 458
wvResizeWindow -win $_nWave2 2309 718 1447 458
wvSelectSignal -win $_nWave2 {( "G1" 5 )}
wvSetRadix -win $_nWave2 -format UDec {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )}
wvSetRadix -win $_nWave2 -format UDec {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )}
wvSetRadix -win $_nWave2 -format UDec {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )}
wvSetRadix -win $_nWave2 -format UDec {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 1 )}
wvSetRadix -win $_nWave2 -format UDec {("G1" 1)}
wvZoom -win $_nWave2 20222.100444 129999.217142
wvSetCursor -win $_nWave2 117332.626754 -snap {("G1" 1)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 616807.879773 828284.867124
wvZoom -win $_nWave2 653409.666046 677634.036670
srcDeselectAll -win $_nTrace1
srcSelect -signal "THen" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "THen" -win $_nTrace1
srcAction -pos 60 18 2 -win $_nTrace1 -name "THen" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "M_tick" -win $_nTrace1
srcAction -pos 9 8 2 -win $_nTrace1 -name "M_tick" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {28 28 4 5 1 1}
wvSetCursor -win $_nWave2 658554.306630 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 658392.270706 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 658655.579082 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 658513.797649 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 658513.797649 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 327190.842242 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 712836.341139 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 657744.127010 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 307098.387677 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 594226.044839 -snap {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )}
wvSelectSignal -win $_nWave2 {( "G1" 3 )}
wvZoom -win $_nWave2 519689.519842 681725.443749
wvZoom -win $_nWave2 589733.476916 616423.340636
wvSetCursor -win $_nWave2 598481.325225 -snap {("G1" 6)}
srcActiveTrace "lab2_tb.sd.THen" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "M_tick" -win $_nTrace1
srcAction -pos 9 8 3 -win $_nTrace1 -name "M_tick" -ctrlKey off
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {28 28 4 5 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "Mzero" -win $_nTrace1
srcAction -pos 28 18 2 -win $_nTrace1 -name "Mzero" -ctrlKey off
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {55 55 13 14 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "NS" -win $_nTrace1
wvSetCursor -win $_nWave2 599485.542506 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 599440.910627 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 598548.273044 -snap {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 656279.608699 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 649852.618105 676274.690550
wvSetCursor -win $_nWave2 658468.511293 -snap {("G1" 6)}
srcActiveTrace "lab2_tb.sd.THen" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "M_tick" -win $_nTrace1
srcAction -pos 9 8 4 -win $_nTrace1 -name "M_tick" -ctrlKey off
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {28 28 4 5 1 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "Mzero" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "Mzero" -win $_nTrace1
srcAction -pos 28 18 4 -win $_nTrace1 -name "Mzero" -ctrlKey off
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {55 55 13 14 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "TMin" -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 676075.862246 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 671392.351076 -snap {("G1" 2)}
wvCloseWindow -win $_nWave2
wvGetSignalClose -win $_nWave2
debExit
