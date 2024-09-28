srcSourceCodeView
srcResizeWindow 2646 448 1165 674
debImport "-f" "C:\\Users\\xinyuan\\Desktop\\alarm_part3\\simulation\\filelist.f" \
          "-sv" -path {C:\Users\xinyuan\Desktop\alarm_part3\simulation}
wvCreateWindow
wvResizeWindow -win $_nWave2 50 214 960 332
wvResizeWindow -win $_nWave2 50 214 960 332
wvOpenFile -win $_nWave2 \
           {C:\Users\xinyuan\Desktop\alarm_part3\simulation\novas.fsdb}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvResizeWindow -win $_nWave2 2962 783 961 332
wvResizeWindow -win $_nWave2 2962 783 1001 341
wvResizeWindow -win $_nWave2 2962 783 1053 352
wvResizeWindow -win $_nWave2 2962 783 1092 367
wvResizeWindow -win $_nWave2 2962 783 1146 388
wvResizeWindow -win $_nWave2 2962 783 1205 415
wvResizeWindow -win $_nWave2 2962 783 1223 421
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "lab2_3_tb" -win $_nTrace1
srcHBSelect "lab2_3_tb.top" -win $_nTrace1
srcSetScope -win $_nTrace1 "lab2_3_tb.top" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {5 19 2 1 3 1}
srcAddSelectedToWave -win $_nTrace1
wvResizeWindow -win $_nWave2 3557 723 1224 422
wvResizeWindow -win $_nWave2 3557 723 1302 485
wvResizeWindow -win $_nWave2 3557 723 1353 503
wvResizeWindow -win $_nWave2 3557 723 1421 536
wvResizeWindow -win $_nWave2 3557 723 1466 558
wvResizeWindow -win $_nWave2 3557 723 1475 558
wvResizeWindow -win $_nWave2 3557 723 1485 555
wvResizeWindow -win $_nWave2 3557 723 1491 551
wvResizeWindow -win $_nWave2 3557 723 1497 547
wvResizeWindow -win $_nWave2 3557 723 1518 543
wvResizeWindow -win $_nWave2 3557 723 1531 540
wvResizeWindow -win $_nWave2 3557 723 1531 540
wvSelectSignal -win $_nWave2 {( "G1" 11 )}
wvSelectSignal -win $_nWave2 {( "G1" 16 )}
wvSetRadix -win $_nWave2 -format UDec {("G1" 16)}
wvSelectSignal -win $_nWave2 {( "G1" 15 )}
wvSetRadix -win $_nWave2 -format UDec {("G1" 15)}
wvSelectSignal -win $_nWave2 {( "G1" 17 )}
wvSelectSignal -win $_nWave2 {( "G1" 11 12 13 14 15 16 17 )}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSelectSignal -win $_nWave2 {( "G1" 11 )}
wvSelectSignal -win $_nWave2 {( "G1" 11 12 13 )}
wvSelectSignal -win $_nWave2 {( "G1" 11 12 13 14 )}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetCursor -win $_nWave2 20030.931292 -snap {("G1" 9)}
wvZoomAll -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "H0disp" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {20 23 7 1 1 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "Month" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "date" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 11 )}
wvSetRadix -win $_nWave2 -format UDec {("G1" 11)}
wvSelectSignal -win $_nWave2 {( "G1" 12 )}
wvSetRadix -win $_nWave2 -format UDec {("G1" 12)}
wvSetCursor -win $_nWave2 403841.623188 -snap {("G1" 9)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )}
wvZoom -win $_nWave2 149091.478261 202964.869565
wvZoom -win $_nWave2 164099.685500 179064.516418
wvZoom -win $_nWave2 165400.975145 166111.864859
wvZoom -win $_nWave2 165645.951633 165693.458755
wvSetCursor -win $_nWave2 165663.011356 -snap {("G1" 12)}
srcActiveTrace "lab2_3_tb.top.date\[5:0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "Month" -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
wvSetCursor -win $_nWave2 165663.852867 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 172880.910705 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 172871.501082 -snap {("G1" 12)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 101482.434783 -snap {("G1" 5)}
wvGoToTime -win $_nWave2 4
wvGoToTime -win $_nWave2 172868
wvZoom -win $_nWave2 137815.652174 174148.869565
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 162067.050900 178917.238675
wvZoom -win $_nWave2 172459.356726 173829.621593
wvZoom -win $_nWave2 172806.887671 173135.662977
wvZoom -win $_nWave2 172858.242267 172964.657463
wvSetCursor -win $_nWave2 172870.922983 -snap {("G1" 12)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 165366.081266 -snap {("G1" 12)}
wvZoom -win $_nWave2 164576.449668 169138.765566
wvSetCursor -win $_nWave2 165671.111614 -snap {("G1" 12)}
srcActiveTrace "lab2_3_tb.top.date\[5:0\]" -win $_nTrace1
wvSetCursor -win $_nWave2 166391.090613 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 165726.212048 -snap {("G1" 12)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 166809.853908 -snap {("G1" 10)}
wvSetCursor -win $_nWave2 166802.507183 -snap {("G1" 11)}
srcActiveTrace "lab2_3_tb.top.Month\[3:0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "Monthadv" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 172845.653801 -snap {("G2" 0)}
wvZoom -win $_nWave2 172764.839831 173154.216228
wvZoom -win $_nWave2 172860.773147 172901.215623
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 172883.566813 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 172870.053425 -snap {("G1" 12)}
wvSetCursor -win $_nWave2 172869.955738 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 172870.997734 -snap {("G1" 12)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 172880.668761 -snap {("G1" 11)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 162677.767970 167079.159757
wvSetCursor -win $_nWave2 165633.291924 -snap {("G1" 11)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 165532.157608 -snap {("G1" 12)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "Month" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "Monthadv" -win $_nTrace1
srcAction -pos 216 7 1 -win $_nTrace1 -name "Monthadv" -ctrlKey off
srcResizeWindow 3967 585 1340 766
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pospulse_31" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pospulse_31" -win $_nTrace1
srcAction -pos 220 8 3 -win $_nTrace1 -name "pospulse_31" -ctrlKey off
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 176985.698876 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 166269.266699 -snap {("G1" 14)}
srcActiveTrace "lab2_3_tb.top.pospulse_31" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "posepulse_28" -win $_nTrace1
srcAction -pos 44 4 4 -win $_nTrace1 -name "posepulse_28" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pospulse_30" -win $_nTrace1
srcAction -pos 44 11 2 -win $_nTrace1 -name "pospulse_30" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -inst "month_adv_logic" -win $_nTrace1
srcAction -pos 42 3 4 -win $_nTrace1 -name "month_adv_logic" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst_counter30" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "date28_zero" -win $_nTrace1
srcAction -pos 51 4 8 -win $_nTrace1 -name "date28_zero" -ctrlKey off
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {10 10 4 5 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "count" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 174207.364608 -snap {("G1" 4)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "count\[4\]" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 171712.533837 -snap {("G1" 16)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 149091.478261 207976.347826
wvSetCursor -win $_nWave2 165306.152489 -snap {("G1" 15)}
srcDeselectAll -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {113 113 4 5 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "date28_zero" -win $_nTrace1
srcSearchString "date28_zero" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {34 34 4 5 1 1}
srcSearchString "date28_zero" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {52 52 5 6 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "posepulse_28" -win $_nTrace1
srcSearchString "posepulse_28" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {35 35 4 5 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "pospulse_30" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "date30_zero" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pospulse_30" -win $_nTrace1
srcSearchString "pospulse_30" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {45 45 10 11 1 1}
srcSearchString "pospulse_30" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {45 45 12 13 1 1}
srcSearchString "pospulse_30" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {35 35 7 8 1 1}
srcSearchString "pospulse_30" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {45 45 10 11 1 1}
srcSearchString "pospulse_30" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {45 45 12 13 1 1}
