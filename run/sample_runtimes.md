# Some Model Clocks for 1 month runs

config         |platform | ATM(secs)| OCN(secs) 
------------------------------------|---------|------|-----------       
OM4p25 2997x1o                      | stellar |235   |747  
OM4p25 2997x1o                      |gaea.c5  |47    |364
||
AM4.0_c96L33 216x2a                 | stellar | 579  | 
AM4.0_c96L33 216x2a                 | gaea.c5 | 525  |
||
AM4.0_c192L33 864x2a                | stellar | 848  |
AM4.0_c192L33 864x2a                | gaea.c5 | 752  |
||
CM4.0_c96_OM4p25 216x2a_2997x1o     | stellar | 977  | 1033
CM4.0_c96_OM4p25 216x2a_2997x1o     | gaea.c5 | 1015 | 621
||
CM4.0_c192_OM4p25_v8 864x2a_2997x1o | stellar | 1214 | 1298
CM4.0_c192_OM4p25_v8 864x2a_2997x1o | gaea.c5 | 1499 | 768

# details

## Stellar

### OMIP_OM4p25
```
/home/nzadeh/CM4_github/workDir
[nzadeh@stellar-amd OM4p25_JRA55do1.5_r6_cycle1_2997x1o]$ clocks stdout.stellar-intel19_openmpi.prod-openmp.2997x1o.run31days.emptyDiag.20240812_1946.1348078
Main loop      1    983.922229    983.922959    983.922443      0.000136  0.933     0     0  2996
ATM         1488    229.210424    235.404031    234.240144      1.173888  0.222     0     0  2996
OCN          744    747.079153    747.404238    747.261749      0.056402  0.708     0     0  2996

[nzadeh@stellar-amd OM4p25_JRA55do1.5_r6_cycle1_2997x1o]$ clocks stdout.stellar-intel22_intelmpi.repro.2997x1o.run31days.emptyDiag.20241001_1404.1498867
Main loop      1   4035.438984   4035.536181   4035.483148      0.013465  0.985     0     0  2996
ATM         1488    857.704966    863.857133    862.627495      1.153923  0.210     0     0  2996
OCN          744   3165.526442   3167.299124   3166.256295      0.393165  0.773     0     0  2996

[nzadeh@stellar-amd OM4p25_JRA55do1.5_r6_cycle1_2997x1o]$ clocks stdout.stellar-intel22_openmpi.repro.2997x1o.run31days.emptyDiag.20241001_1717.1501567
Main loop      1   1194.656766   1194.657166   1194.657087      0.000069  0.965     0     0  2996
ATM         1488    231.806360    238.182754    236.940050      1.217914  0.191     0     0  2996
OCN          744    954.498741    955.090275    954.707132      0.084430  0.771     0     0  2996

[nzadeh@stellar-amd OM4p25_JRA55do1.5_r6_cycle1_2997x1o]$ clocks stdout.stellar-inteloneapi24_openmpi.repro.2997x1o.run31days.emptyDiag.20241024_1404.1544593
Main loop      1   7354.787554   7354.787914   7354.787777      0.000061  0.992     0     0  2996
ATM         1488   2171.738525   2260.904314   2201.614016     17.729141  0.297     0     0  2996
OCN          744   5038.474957   5080.113072   5064.213796     10.541957  0.683     0     0  2996
```

### AM4.0_c96L33
```
[nzadeh@stellar-amd AM4_c96L33_SIS2]$ clocks stdout.stellar-intel19.prod-openmp.216x2a.run31days.nobind.20240702_1207.1263492
Main loop      1   3832.262699   3832.262961   3832.262872      0.000089  0.976     0     0   215
ATM          744   3781.401426   3786.971934   3783.998501      1.222567  0.964     0     0   215

[nzadeh@stellar-amd AM4_c96L33_SIS2]$ clocks stdout.stellar-intel19.prod-openmp.216x2a.run31days.20240702_1454.1263607
Main loop      1    579.398382    579.398655    579.398574      0.000110  0.868     0     0   215
ATM          744    578.443331    578.829792    578.618176      0.065937  0.867     0     0   215

```
### AM4.0_c192L33
```
[nzadeh@stellar-amd AM4_c192L33_SIS2]$ clocks stdout.stellar-intel19_openmpi.prod-openmp.864x2a.run31days.HYPToff.20240810_1831.1345036
Main loop      1    848.410669    848.411002    848.410908      0.000083  0.614     0     0   863
ATM          744    847.971589    848.094738    848.038985      0.024573  0.614     0     0   863
216x2a_2997x1o
[nzadeh@stellar-amd AM4_c192L33_SIS2]$ clocks stdout.stellar-intel19_openmpi.prod-openmp.864x2a.run31days.noHYPToff.20240809_1941.1342689
Main loop      1    978.683449    978.684125    978.683723      0.000152  0.824     0     0   863
ATM          744    978.205260    978.349430    978.296027      0.027450  0.824     0     0   863
```

### CM4.0_c96_OM4p25
```
[nzadeh@stellar-amd CM4_piControl_c96_OM4p25]$ clocks stdout.stellar-intel19.prod-openmp.216x2a_2997x1o.run31days.20240720_0048.1293040
Main loop      1   1297.922435   1297.923564   1297.923118      0.000168  0.889     0     0  3212
ATM         2976    900.934439    976.797110    960.978699     18.768132  0.658     0     0   215
OCN         1488   1031.868826   1033.042675   1032.500101      0.248434  0.707     0   216  3212
```

### CM4_piControl_c192_OM4p25_v8
```
[nzadeh@stellar-amd CM4_piControl_c192_OM4p25_v8]$ clocks stdout.stellar-intel19_openmpi.prod-openmp.864x2a_2997x1o.run31days.emptyDiag.20241011_1439.1535669
Main loop      1   1453.287797   1453.288559   1453.288105      0.000151  0.842     0     0  3860
ATM         4464   1167.900356   1214.142892   1205.856934     12.675604  0.699     0     0   863
OCN         2232   1297.708286   1298.465174   1298.111268      0.137222  0.752     0   864  3860
```

## gaea.c5

### OMIP_OM4p25
```
/ncrc/home2/Niki.Zadeh/projects/CM4_github/workdirs
Niki.Zadeh@gaea58:~/projects/CM4_github> clocks workdirs/OM4p25_JRA55do1.5_r6_cycle1_2997x1o/stdout.ncrc5-intel23cl.prod-openmp.2997x1o.run31days.emptyDiag.20240702_1234.135054097
Main loop      1    412.499833    412.500450    412.499958      0.000109  0.478     0     0  2996
ATM         1488     41.506524     47.408294     46.659599      1.165670  0.054     0     0  2996
OCN          744    364.138298    364.284376    364.195944      0.013303  0.422     0     0  2996
```

### AM4.0_c96L33
```
Niki.Zadeh@gaea58:~/projects/CM4_github> clocks workdirs/AM4_c96L33_SIS2/stdout.ncrc5-intel23cl.prod-openmp.216x2a.run31days.20240701_1051.135049462
Main loop      1    525.397875    525.397913    525.397891      0.000011  0.611     0     0   215
ATM          744    524.534193    524.839845    524.613928      0.064055  0.610     0     0   215
```

### AM4.0_c192L33
```
Niki.Zadeh@gaea58:~/projects/CM4_github> clocks workdirs/AM4_c192L33_SIS2/stdout.ncrc5-intel23cl.prod-openmp.864x2a.run31days.emptyDiag.20240711_1750.135065524
Main loop      1    752.513947    752.514020    752.513984      0.000024  0.613     0     0   863
ATM          744    752.184532    752.245948    752.215852      0.011825  0.612     0     0   863
```
### CM4.0_c96_OM4p25
```
Niki.Zadeh@gaea58:~/projects/CM4_github> clocks workdirs/CM4_piControl_C_216x2a_2997x1o/stdout.ncrc5-intel23cl.prod-openmp.216x2a_2997x1o.run31days.20240701_1312.135049731
Main loop      1   1168.083738   1168.083866   1168.083785      0.000031  0.774     0     0  3212
ATM         2976    930.867274   1015.661759   1003.036980     19.822936  0.664     0     0   215
OCN         1488    620.820223    621.126439    620.995139      0.054093  0.411     0   216  3212
```

### CM4_piControl_c192_OM4p25_v8
```
Niki.Zadeh@gaea58:~/projects/CM4_github> clocks workdirs/CM4_piControl_c192_OM4p25_v8/stdout.ncrc5-intel23cl.prod.864x2a_2997x1o.run31days.20240702_1627.135055026
Main loop      1   1557.512291   1557.512407   1557.512339      0.000016  0.795     0     0  3860
ATM         4464   1414.667107   1499.290768   1486.780229     22.374076  0.759     0     0   863
OCN         2232    768.045934    768.488651    768.186074      0.048650  0.392     0   864  3860
```
