srcSourceCodeView
srcResizeWindow 0 0 804 500
debExit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       wvResizeWindow -win $_nWave3 0 461 1493 431
wvGoToTime -win $_nWave3 130
wvSelectSignal -win $_nWave3 {( "G1" 8 )}
aliasAddAliasTable -table -row "red" "0"
aliasAddAliasTable -table -row "yellow" "1"
aliasAddAliasTable -table -row "green" "2"
aliasAddAliasTable -table "light_package"
aliasAddAliasTable -table "light_package" -row "red" "0"
aliasAddAliasTable -table "light_package" -row "yellow" "1"
aliasAddAliasTable -table "light_package" -row "green" "2"
wvSetAliasTable -win $_nWave3 -table "light_package" -global -signal {("G1" 8)}
wvSetAliasTable -win $_nWave3 -table "light_package" -global -signal {("G1" 8)}
wvSelectSignal -win $_nWave3 {( "G1" 2 )}
wvSelectSignal -win $_nWave3 {( "G1" 10 )}
wvSelectSignal -win $_nWave3 {( "G1" 9 )}
wvSetAliasTable -win $_nWave3 -table "light_package" -global -signal {("G1" 9)}
wvSelectSignal -win $_nWave3 {( "G1" 10 )}
wvSetAliasTable -win $_nWave3 -table "light_package" -global -signal {("G1" 10)}
aliasSaveAliasTable -file \
           "C:\\Users\\xinyuan\\Desktop\\traffic_light\\traffic_light_part2\\light"
wvSelectSignal -win $_nWave3 {( "G1" 5 )}
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G1" 8 )}
wvGoToTime -win $_nWave3 -marker 130
wvSetCursor -win $_nWave3 155.164622 -snap {("G1" 10)}
wvSelectSignal -win $_nWave3 {( "G1" 6 )}
wvSetCursor -win $_nWave3 134.416648 -snap {("G1" 10)}
srcActiveTrace "lab3_part2_tb.dut.e_left_light\[1:0\]" -win $_nTrace1
wvSetCursor -win $_nWave3 36.634116 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 8 )}
wvSetCursor -win $_nWave3 135.649201 -snap {("G1" 8)}
srcActiveTrace "lab3_part2_tb.dut.e_str_light\[1:0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "present_state" -win $_nTrace1
srcAction -pos 365 4 7 -win $_nTrace1 -name "present_state" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "present_state" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave3 126.405054 -snap {("G1" 5)}
srcDeselectAll -win $_nTrace1
aliasAddAliasFile \
           "C:\\Users\\xinyuan\\Desktop\\traffic_light\\traffic_light_part2\\tcl_stages.alias"
wvSetAliasTable -win $_nWave3 -table "tcl_stages" -global -signal {("G2" 1)}
wvResizeWindow -win $_nWave3 -8 -8 1509 901
wvResizeWindow -win $_nWave3 0 461 1493 431
wvSetCursor -win $_nWave3 34.374436 -snap {("G1" 10)}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {102 102 4 5 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {158 158 10 11 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {171 171 4 5 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "ctr10" -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {212 212 10 11 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {256 256 10 11 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {300 300 10 11 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {256 256 10 11 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {212 212 10 11 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {171 171 4 5 1 1}
wvSetCursor -win $_nWave3 134.622073 -snap {("G1" 10)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "eb" -win $_nTrace1
srcAction -pos 174 8 0 -win $_nTrace1 -name "eb" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_left_sensor" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {102 102 4 5 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {158 158 10 11 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {171 171 4 5 1 1}
wvGoToTime -win $_nWave3 130
srcDeselectAll -win $_nTrace1
srcSelect -signal "ctr10" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G1" 11 )}
wvSetAliasTable -win $_nWave3 -table "light_package" -global -signal {("G1" 11)}
wvSetCursor -win $_nWave3 33.552734 -snap {("G1" 7)}
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvResizeWindow -win $_nWave3 0 461 1493 431
wvReloadFile -win $_nWave3
wvSetAliasTable -win $_nWave3 -table "light_package" -global -signal {("G1" 12)}
wvGoToTime -win $_nWave3 280
wvSelectSignal -win $_nWave3 {( "G1" 10 )}
wvSelectSignal -win $_nWave3 {( "G1" 9 )}
wvSelectSignal -win $_nWave3 {( "G1" 9 10 11 )}
wvSelectSignal -win $_nWave3 {( "G1" 9 )}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 11)}
wvScrollDown -win $_nWave3 3
srcSearchString "RRGRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {204 204 10 11 1 1}
srcSearchString "RRGRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {217 217 4 5 1 1}
wvGoToTime -win $_nWave3 570
srcSearchString "RRRRG" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {252 252 10 11 1 1}
srcSearchString "RRRRG" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {296 296 10 11 1 1}
srcSearchString "RRRRG" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {309 309 4 5 1 1}
wvGoToTime -win $_nWave3 830
srcDeselectAll -win $_nTrace1
srcSelect -signal "n_falling_edge_flag" -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
srcHBSelect "lab3_part2_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {9 9 3 4 1 1}
wvSelectSignal -win $_nWave3 {( "G1" 6 )}
wvGoToTime -win $_nWave3 130
wvGoToTime -win $_nWave3 140
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {350 350 10 11 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {383 383 3 4 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {102 102 4 5 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {158 158 10 11 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {171 171 4 5 1 1}
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
srcHBSelect "lab3_part2_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {9 9 3 4 1 1}
wvSetCursor -win $_nWave3 135.377927 -snap {("G1" 8)}
wvSetCursor -win $_nWave3 137.432181 -snap {("G1" 8)}
wvSetCursor -win $_nWave3 150.990264 -snap {("G1" 8)}
wvSetCursor -win $_nWave3 134.350799 -snap {("G1" 8)}
wvSetCursor -win $_nWave3 140.718989 -snap {("G1" 4)}
wvSetCursor -win $_nWave3 140.513564 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 155.715050 -snap {("G1" 6)}
wvSetCursor -win $_nWave3 154.482497 -snap {("G1" 8)}
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
srcHBSelect "lab3_part2_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {9 9 3 4 1 1}
wvGoToTime -win $_nWave3 130
wvSetCursor -win $_nWave3 61.079749 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvSetCursor -win $_nWave3 59.641771 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvGoToTime -win $_nWave3 130
wvGoToTime -win $_nWave3 830
wvGoToTime -win $_nWave3 1050
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
srcHBSelect "lab3_part2_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {9 9 3 4 1 1}
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
srcHBSelect "lab3_part2_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {9 9 3 4 1 1}
wvGoToTime -win $_nWave3 130
wvSelectSignal -win $_nWave3 {( "G1" 5 )}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 858927921
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 858927919
srcSearchString "RGRRR" -win $_nTrace1 -prev -case
srcSelect -win $_nTrace1 -range {114 114 4 5 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {170 170 10 11 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {183 183 4 5 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "e_falling_edge" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 13)}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G2" 1)}
wvSetPosition -win $_nWave3 {("G2" 2)}
wvSetPosition -win $_nWave3 {("G2" 2)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 3)}
wvScrollUp -win $_nWave3 3
wvScrollDown -win $_nWave3 2
wvSetCursor -win $_nWave3 119.009736 -snap {("G2" 3)}
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927921
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 858927917
srcDeselectAll -win $_nTrace1
srcSelect -signal "ctr5" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 858927916
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927916
srcDeselectAll -win $_nTrace1
srcSelect -signal "e_falling_edge_flag" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 858927917
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 858927919
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 858927917
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 858927916
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 858927919
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927915
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 858927919
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927915
wvSetCursor -win $_nWave3 199.947378 -snap {("G2" 4)}
wvZoomAll -win $_nWave3
wvZoom -win $_nWave3 463.693931 672.585752
wvZoomAll -win $_nWave3
wvZoom -win $_nWave3 2261.081794 2600.817942
wvZoomAll -win $_nWave3
wvZoom -win $_nWave3 34.432718 172.163588
srcDeselectAll -win $_nTrace1
srcSelect -signal "eb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
srcHBSelect "lab3_part2_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {9 9 3 4 1 1}
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 858927914
srcDeselectAll -win $_nTrace1
srcSelect -signal "eb" -win $_nTrace1
srcAction -pos 184 8 1 -win $_nTrace1 -name "eb" -ctrlKey off
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 858927917
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 858927919
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927921
wvSetCursor -win $_nWave3 120.196532 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 858927914
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927914
wvSetCursor -win $_nWave3 125.041945 -snap {("G2" 4)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
srcHBSelect "lab3_part2_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {9 9 3 4 1 1}
wvZoom -win $_nWave3 75.751979 190.527704
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927921
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927914
wvGoToTime -win $_nWave3 130
wvSetCursor -win $_nWave3 125.406952 -snap {("G2" 5)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G2" 5 )}
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927914
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {114 114 4 5 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {170 170 10 11 1 1}
srcSearchString "RGRRR" -win $_nTrace1 -next -case
srcSelect -win $_nTrace1 -range {181 181 4 5 1 1}
srcDeselectAll -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
srcHBSelect "lab3_part2_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {9 9 3 4 1 1}
wvSelectSignal -win $_nWave3 {( "G2" 4 )}
wvSelectSignal -win $_nWave3 {( "G2" 5 )}
wvSetCursor -win $_nWave3 133.248863 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvGoToTime -win $_nWave3 2420
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927914
wvGoToTime -win $_nWave3 140
srcDeselectAll -win $_nTrace1
srcSelect -signal "eb" -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
srcHBSelect "lab3_part2_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {9 9 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "eb" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "conflict" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927912
wvSelectSignal -win $_nWave3 {( "G2" 7 )}
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 8)}
wvSetPosition -win $_nWave3 {("G2" 7)}
wvGoToTime -win $_nWave3 2420
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927913
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ctr5" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
debReload
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
srcHBSelect "lab3_part2_tb.dut" -win $_nTrace1
srcSelect -win $_nTrace1 -range {9 9 3 4 1 1}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927912
wvSelectSignal -win $_nWave3 {( "G2" 6 )}
wvSelectSignal -win $_nWave3 {( "G2" 5 )}
wvSelectSignal -win $_nWave3 {( "G2" 4 )}
wvSelectSignal -win $_nWave3 {( "G2" 5 )}
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927921
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 858927917
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 858927914
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 858927913
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 858927912
wvZoom -win $_nWave3 2484.826825 2507.842538
