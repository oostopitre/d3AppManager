&PROJFIL
11
1
0
ManilaTDM
MT
00
Manila Voyager Travel Demand Model
Manila Voyager Travel Demand Model
Wed Jan 30 19:16:29 2013


C:\_Viz\myAppManager\manilaCatalog\ManilaTDM.app
VOYAGER
C:\Abishek\Projects\Consulting\Manila\Working1\ManilaModel_Voyager_Send\Media\Basic.VPR

1
Travel Demand Model - Manila, Philippines 
1118,-120,0,0,Arial,18,700,0,0,8388736
&End_TextAnnotation
English
#PROGRAM0
1
1
2

C:\_Viz\myAppManager\manilaCatalog\HASSIGN.APP
Highway Assignment

0
1
0


999999
1049
-868
1325
-976
0
0
0
#INFIL0
Link/Net. 1

0
0
*
{SCENARIO_DIR}\HNET_{Year}.NET
1
0000
      
999999
862
-880
1042
-920
1
1
0
#INFIL1
Matrix File 1

0
0
*
{SCENARIO_DIR}\TripTable_{Year}.MAT
1
0101
      
999999
862
-923
1042
-963
1
0
0
#OUTFIL0
Network File

0
0
*
{SCENARIO_DIR}\HNET_{YEAR}_3.NET
1
0000
      
999999
1335
-775
1512
-815
0
#OUTFIL1
Screenlines

0
0
*
{SCENARIO_DIR}\Screenline_{YEAR}.NET
1
0130
      
999999
1335
-818
1512
-858
0
#OUTFIL2
Intercept File

0
0
*
{SCENARIO_DIR}\ICP_{YEAR}.NET
1
0131
      
999999
1335
-861
1512
-901
0
#OUTFIL3
Path File 1

0
0
*
{SCENARIO_DIR}\Loaded_{YEAR}.PTH
1
0132
      
999999
1335
-904
1512
-944
0
#OUTFIL4
Network File

0
0
*
{SCENARIO_DIR}\LoadedSummary_{Year}.net
1
0201
      
255
1335
-947
1512
-987
0
#OUTFIL5
Print Data 1
Pre ME Asgn
0
0
*
{SCENARIO_DIR}\LoadedSummary_{Year}.csv
1
0204
      
255
1335
-990
1512
-1030
0
#OUTFIL6
Print Data 1
TPLAN vs Voyager
0
0
*
{SCENARIO_DIR}\Trnplan_Voyager_Compare_{Year}.prn
1
0304
      
255
1335
-1033
1512
-1073
0
#PROGRAM1
2
1
1

C:\_Viz\myAppManager\manilaCatalog\CONVERT.APP
Convert TPLAN Inputs to Voyager

0
1
0


999999
1016
-546
1292
-654
0
0
0
#INFIL0
Matrix File 1

0
0
*
{TTAB}
1
0001
      
999999
829
-558
1009
-598
-1
-1
0
#INFIL1
Link/Net. 1

0
0
*
{HNET}
1
0101
      
999999
829
-601
1009
-641
-1
-1
0
#OUTFIL0
Matrix File 1

0
0
*
{SCENARIO_DIR}\TripTable_{Year}.MAT
1
0001
      
999999
1302
-537
1479
-577
0
#OUTFIL1
Network File

0
0
*
{SCENARIO_DIR}\HNET_{Year}.NET
1
0201
      
999999
1302
-580
1479
-620
0
#OUTFIL2
Print Data 1
TPLAN Asgn
0
0
*
{SCENARIO_DIR}\TPLANLoadedSummary.csv
1
0304
      
255
1302
-623
1479
-663
0
#PROGRAM2
3
1
3

C:\_Viz\myAppManager\manilaCatalog\MATRIXESTIMATION00.APP
Matrix Estimation

0
1
0


999999
1044
-1242
1320
-1350
0
0
0
#INFIL0
Screenlines

0
0
*
{SCENARIO_DIR}\Screenline_{YEAR}.NET
1
0005
      
999999
857
-1212
1037
-1252
0
1
0
#INFIL1
Voyager Paths

0
0
*
{SCENARIO_DIR}\Loaded_{YEAR}.PTH
1
0009
      
999999
857
-1255
1037
-1295
0
3
0
#INFIL2
Network File

0
0
*
{SCENARIO_DIR}\HNET_{YEAR}_3.NET
1
0121
      
999999
857
-1298
1037
-1338
0
0
0
#INFIL3
Matrix File 1

0
0
*
{SCENARIO_DIR}\TripTable_{Year}.MAT
1
0601
      
999999
857
-1341
1037
-1381
-1
-1
0
#OUTFIL0
Network File

0
0
*
{SCENARIO_DIR}\MELoaded_{Year}.net
1
0122
      
32768
1330
-1233
1507
-1273
0
#OUTFIL1
Print Data 1
Post ME Asgn
0
0
*
{SCENARIO_DIR}\MELoadedSummary_{Year}.csv
1
0504
      
32768
1330
-1276
1507
-1316
0
#OUTFIL2
Print Data 1
Post ME Trips
0
0
*
{SCENARIO_DIR}\DeltaTripTable_{Year}.prn
1
1036
      
32768
1330
-1319
1507
-1359
0
