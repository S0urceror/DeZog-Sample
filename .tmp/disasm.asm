L4A22:       equ  4A22h
L8121:       equ  8121h
LC95B:       equ  C95Bh
LC96B:       equ  C96Bh
LC993:       equ  C993h
LC9A5:       equ  C9A5h
LCE08:       equ  CE08h
LCE18:       equ  CE18h
LCEF3:       equ  CEF3h
LD3E2:       equ  D3E2h
LD3E3:       equ  D3E3h
LD3E4:       equ  D3E4h
LD44C:       equ  D44Ch
LD44E:       equ  D44Eh
LD451:       equ  D451h
LD452:       equ  D452h
LD453:       equ  D453h
LD606:       equ  D606h
LDE96:       equ  DE96h
LDEFE:       equ  DEFEh
LDF0B:       equ  DF0Bh
LDF3B:       equ  DF3Bh
LF368:       equ  F368h


             org 0002h


0002 L0002:
0002 DC           defb DCh    
0003 00           defb 00h    
0004 00           defb 00h    


0005 L0005:
0005 C3 06 D6     JP   LD606  


0008 00           defb 00h    
0009 00           defb 00h    
000A 00           defb 00h    
000B 00           defb 00h    
000C C3           defb C3h    
000D EE           defb EEh    
000E DD           defb DDh    
000F 00           defb 00h    
0010 00           defb 00h    
0011 00           defb 00h    
0012 00           defb 00h    
0013 00           defb 00h    
0014 C3           defb C3h    
0015 0F           defb 0Fh    
0016 DE           defb DEh    
0017 00           defb 00h    
0018 00           defb 00h    
0019 00           defb 00h    
001A 00           defb 00h    
001B 00           defb 00h    
001C C3           defb C3h    
001D 4F           defb 4Fh    
001E DE           defb DEh    
001F 00           defb 00h    
0020 00           defb 00h    
0021 00           defb 00h    
0022 00           defb 00h    
0023 00           defb 00h    


0024 L0024:
0024 C3 96 DE     JP   LDE96  


0027 00           defb 00h    
0028 00           defb 00h    
0029 00           defb 00h    
002A 00           defb 00h    
002B 00           defb 00h    
002C 00           defb 00h    
002D 00           defb 00h    
002E 00           defb 00h    
002F 00           defb 00h    
0030 C3           defb C3h    
0031 3D           defb 3Dh    
0032 DE           defb DEh    
0033 00           defb 00h    
0034 00           defb 00h    
0035 00           defb 00h    
0036 00           defb 00h    
0037 00           defb 00h    
0038 C3           defb C3h    
0039 A9           defb A9h    
003A DD           defb DDh    
003B D3           defb D3h    
003C A8           defb A8h    
003D 3A           defb 3Ah    
003E FF           defb FFh    
003F FF           defb FFh    
0040 2F           defb 2Fh    
0041 6F           defb 6Fh    
0042 A4           defb A4h    
0043 B2           defb B2h    
0044 18           defb 18h    
0045 08           defb 08h    
0046 D3           defb D3h    
0047 A8           defb A8h    
0048 7D           defb 7Dh    
0049 18           defb 18h    
004A 03           defb 03h    
004B D3           defb D3h    
004C A8           defb A8h    
004D 7B           defb 7Bh    
004E 32           defb 32h    
004F FF           defb FFh    
0050 FF           defb FFh    
0051 78           defb 78h    
0052 D3           defb D3h    
0053 A8           defb A8h    
0054 C9           defb C9h    
0055 00           defb 00h    
0056 00           defb 00h    
0057 00           defb 00h    
0058 00           defb 00h    
0059 00           defb 00h    
005A 00           defb 00h    
005B 00           defb 00h    
005C 00           defb 00h    
005D 20           defb 20h    
005E 20           defb 20h    
005F 20           defb 20h    
0060 20           defb 20h    
0061 20           defb 20h    
0062 20           defb 20h    
0063 20           defb 20h    
0064 20           defb 20h    
0065 20           defb 20h    


             org 0100h


0100 L0100:
0100 11 1D 01     LD   DE,011Dh 
0103 0E 09        LD   C,09h  
0105 CD 05 00     CALL L0005  
0108 21 28 01     LD   HL,0128h 
010B CD 0F 01     CALL L010F  
010E C9           RET         


010F L010F:
010F 7E           LD   A,(HL) 
0110 A7           AND  A      
0111 C8           RET  Z      
0112 E5           PUSH HL     
0113 5F           LD   E,A    
0114 0E 02        LD   C,02h  
0116 CD 05 00     CALL L0005  
0119 E1           POP  HL     
011A 23           INC  HL     
011B 18 F2        JR   L010F  


011D 48           defb 48h    
011E 65           defb 65h    
011F 6C           defb 6Ch    
0120 6C           defb 6Ch    
0121 6F           defb 6Fh    
0122 20           defb 20h    
0123 4D           defb 4Dh    
0124 53           defb 53h    


             org 0D71h


0D71 L0D71:
0D71 D1           defb D1h    
0D72 1A           defb 1Ah    
0D73 FE           defb FEh    
0D74 FF           defb FFh    
0D75 28           defb 28h    
0D76 16           defb 16h    
0D77 B7           defb B7h    
0D78 20           defb 20h    
0D79 05           defb 05h    
0D7A 3A           defb 3Ah    
0D7B 30           defb 30h    
0D7C 18           defb 18h    
0D7D 3C           defb 3Ch    
0D7E 12           defb 12h    
0D7F CD           defb CDh    
0D80 18           defb 18h    
0D81 12           defb 12h    
0D82 CD           defb CDh    
0D83 A5           defb A5h    
0D84 0D           defb 0Dh    
0D85 C1           defb C1h    
0D86 D1           defb D1h    
0D87 E1           defb E1h    
0D88 C9           defb C9h    
0D89 E5           defb E5h    
0D8A D5           defb D5h    
0D8B C5           defb C5h    
0D8C F5           defb F5h    
0D8D 3E           defb 3Eh    
0D8E 0B           defb 0Bh    
0D8F 90           defb 90h    
0D90 87           defb 87h    
0D91 87           defb 87h    
0D92 87           defb 87h    
0D93 4F           defb 4Fh    
0D94 06           defb 06h    
0D95 08           defb 08h    
0D96 F1           defb F1h    
0D97 1F           defb 1Fh    
0D98 C5           defb C5h    
0D99 F5           defb F5h    
0D9A DC           defb DCh    
0D9B 21           defb 21h    
0D9C 10           defb 10h    
0D9D F1           defb F1h    
0D9E C1           defb C1h    
0D9F 0C           defb 0Ch    
0DA0 10           defb 10h    
0DA1 F5           defb F5h    
0DA2 C3           defb C3h    
0DA3 38           defb 38h    
0DA4 09           defb 09h    
0DA5 30           defb 30h    
0DA6 31           defb 31h    
0DA7 32           defb 32h    
0DA8 33           defb 33h    
0DA9 34           defb 34h    
0DAA 35           defb 35h    
0DAB 36           defb 36h    
0DAC 37           defb 37h    
0DAD 38           defb 38h    
0DAE 39           defb 39h    
0DAF 2D           defb 2Dh    
0DB0 3D           defb 3Dh    
0DB1 5C           defb 5Ch    
0DB2 5B           defb 5Bh    
0DB3 5D           defb 5Dh    
0DB4 3B           defb 3Bh    
0DB5 27           defb 27h    
0DB6 60           defb 60h    
0DB7 2C           defb 2Ch    
0DB8 2E           defb 2Eh    
0DB9 2F           defb 2Fh    
0DBA FF           defb FFh    
0DBB 61           defb 61h    
0DBC 62           defb 62h    
0DBD 63           defb 63h    
0DBE 64           defb 64h    
0DBF 65           defb 65h    
0DC0 66           defb 66h    
0DC1 67           defb 67h    
0DC2 68           defb 68h    
0DC3 69           defb 69h    
0DC4 6A           defb 6Ah    
0DC5 6B           defb 6Bh    
0DC6 6C           defb 6Ch    
0DC7 6D           defb 6Dh    
0DC8 6E           defb 6Eh    
0DC9 6F           defb 6Fh    
0DCA 70           defb 70h    
0DCB 71           defb 71h    
0DCC 72           defb 72h    
0DCD 73           defb 73h    
0DCE 74           defb 74h    
0DCF 75           defb 75h    
0DD0 76           defb 76h    
0DD1 77           defb 77h    
0DD2 78           defb 78h    
0DD3 79           defb 79h    
0DD4 7A           defb 7Ah    


             org C800h


C800 LC800:
C800 D4 22 4A     CALL NC,L4A22 
C803 D4 21 81     CALL NC,L8121 
C806 00           NOP         
C807 CD 18 CE     CALL LCE18  
C80A 11 5C 00     LD   DE,005Ch 
C80D CD 6B C9     CALL LC96B  
C810 22 4C D4     LD   (LD44C),HL 
C813 LC813:
C813 CD 5B C9     CALL LC95B  
C816 20 FB        JR   NZ,LC813 
C818 11 0A D4     LD   DE,D40Ah 
C81B CD 6B C9     CALL LC96B  
C81E 79           LD   A,C    
C81F 32 E4 D3     LD   (LD3E4),A 
C822 20 04        JR   NZ,LC828 
C824 13           INC  DE     
C825 CD 08 CE     CALL LCE08  
C828 LC828:
C828 21 0A D4     LD   HL,D40Ah 
C82B 11 3E D4     LD   DE,D43Eh 
C82E ED A0        LDI         
C830 DD 21 5D 00  LD   IX,005Dh 
C834 CD 93 C9     CALL LC993  
C837 21 3F D4     LD   HL,D43Fh 
C83A CD F3 CE     CALL LCEF3  
C83D 5F           LD   E,A    
C83E EE 01        XOR  01h    
C840 4F           LD   C,A    
C841 21 5D 00     LD   HL,005Dh 
C844 CD F3 CE     CALL LCEF3  
C847 A1           AND  C      
C848 4F           LD   C,A    
C849 3A 52 D4     LD   A,(LD452) 
C84C B1           OR   C      
C84D 32 51 D4     LD   (LD451),A 
C850 32 4E D4     LD   (LD44E),A 
C853 87           ADD  A,A    
C854 B3           OR   E      
C855 32 53 D4     LD   (LD453),A 
C858 3A E2 D3     LD   A,(LD3E2) 
C85B CD A5 C9     CALL LC9A5  
C85E 3A E3 D3     LD   A,(LD3E3) 
C861 CD A5 C9     CALL LC9A5  


             org D885h


D885 LD885:
D885 CD 68 F3     CALL LF368  
D888 FB           EI          
D889 C9           RET         


D88A F5           defb F5h    
D88B CD           defb CDh    
D88C 6B           defb 6Bh    
D88D F3           defb F3h    
D88E FB           defb FBh    
D88F 3A           defb 3Ah    
D890 3D           defb 3Dh    
D891 DA           defb DAh    
D892 B7           defb B7h    
D893 28           defb 28h    
D894 15           defb 15h    
D895 4F           defb 4Fh    
D896 06           defb 06h    
D897 00           defb 00h    
D898 E5           defb E5h    
D899 ED           defb EDh    
D89A 5B           defb 5Bh    
D89B 3E           defb 3Eh    
D89C DA           defb DAh    
D89D 21           defb 21h    
D89E 40           defb 40h    
D89F DA           defb DAh    
D8A0 3C           defb 3Ch    
D8A1 20           defb 20h    
D8A2 04           defb 04h    
D8A3 1A           defb 1Ah    
D8A4 4F           defb 4Fh    
D8A5 03           defb 03h    
D8A6 03           defb 03h    
D8A7 ED           defb EDh    
D8A8 B0           defb B0h    
D8A9 E1           defb E1h    
D8AA 3A           defb 3Ah    
D8AB 06           defb 06h    
D8AC F3           defb F3h    
D8AD B7           defb B7h    
D8AE 28           defb 28h    
D8AF 08           defb 08h    
D8B0 F1           defb F1h    
D8B1 6F           defb 6Fh    
D8B2 60           defb 60h    
D8B3 ED           defb EDh    
D8B4 7B           defb 7Bh    
D8B5 04           defb 04h    
D8B6 F3           defb F3h    
D8B7 C9           defb C9h    
D8B8 F1           defb F1h    
D8B9 ED           defb EDh    
D8BA 7B           defb 7Bh    
D8BB 04           defb 04h    
D8BC F3           defb F3h    
D8BD C9           defb C9h    
D8BE 00           defb 00h    
D8BF 00           defb 00h    
D8C0 00           defb 00h    
D8C1 00           defb 00h    
D8C2 45           defb 45h    
D8C3 54           defb 54h    
D8C4 00           defb 00h    
D8C5 A7           defb A7h    
D8C6 53           defb 53h    
D8C7 00           defb 00h    
D8C8 6E           defb 6Eh    
D8C9 54           defb 54h    
D8CA 00           defb 00h    
D8CB 74           defb 74h    
D8CC 54           defb 54h    
D8CD 00           defb 00h    
D8CE 65           defb 65h    
D8CF 54           defb 54h    
D8D0 00           defb 00h    
D8D1 54           defb 54h    
D8D2 54           defb 54h    
D8D3 00           defb 00h    
D8D4 62           defb 62h    
D8D5 54           defb 54h    
D8D6 00           defb 00h    
D8D7 4E           defb 4Eh    
D8D8 54           defb 54h    
D8D9 00           defb 00h    
D8DA C9           defb C9h    
D8DB F1           defb F1h    
D8DC FF           defb FFh    
D8DD E0           defb E0h    
D8DE 50           defb 50h    
D8DF 00           defb 00h    
D8E0 3C           defb 3Ch    
D8E1 54           defb 54h    
D8E2 00           defb 00h    
D8E3 EF           defb EFh    
D8E4 41           defb 41h    
D8E5 00           defb 00h    
D8E6 9F           defb 9Fh    
D8E7 50           defb 50h    
D8E8 00           defb 00h    


             org DE99h


DE99 LDE99:
DE99 FA A3 DE     JP   M,LDEA3 
DE9C DB A8        IN   A,(00A8h) 
DE9E A1           AND  C      
DE9F B0           OR   B      
DEA0 D3 A8        OUT  (00A8h),A 
DEA2 C9           RET         
DEA3 LDEA3:
DEA3 CD 0B DF     CALL LDF0B  
DEA6 CA 3B DF     JP   Z,LDF3B 
DEA9 E5           PUSH HL     
DEAA CD E1 DE     CALL LDEE1  
DEAD 4F           LD   C,A    
DEAE 06 00        LD   B,00h  
DEB0 7D           LD   A,L    
DEB1 A4           AND  H      
DEB2 B2           OR   D      
DEB3 21 C5 FC     LD   HL,FCC5h 
DEB6 09           ADD  HL,BC  
DEB7 77           LD   (HL),A 
DEB8 E1           POP  HL     
DEB9 79           LD   A,C    
DEBA 18 DA        JR   LDE96  


DEBC F3           defb F3h    
DEBD F5           defb F5h    
DEBE 7C           defb 7Ch    
DEBF 07           defb 07h    
DEC0 07           defb 07h    
DEC1 E6           defb E6h    
DEC2 03           defb 03h    
DEC3 5F           defb 5Fh    
DEC4 1C           defb 1Ch    
DEC5 3E           defb 3Eh    
DEC6 C0           defb C0h    
DEC7 07           defb 07h    
DEC8 07           defb 07h    
DEC9 1D           defb 1Dh    
DECA 20           defb 20h    
DECB FB           defb FBh    
DECC 5F           defb 5Fh    
DECD 2F           defb 2Fh    
DECE 4F           defb 4Fh    
DECF F1           defb F1h    
DED0 F5           defb F5h    
DED1 E6           defb E6h    
DED2 03           defb 03h    
DED3 47           defb 47h    
DED4 04           defb 04h    
DED5 3E           defb 3Eh    
DED6 AB           defb ABh    
DED7 C6           defb C6h    
DED8 55           defb 55h    
DED9 10           defb 10h    
DEDA FC           defb FCh    
DEDB 57           defb 57h    
DEDC A3           defb A3h    
DEDD 47           defb 47h    
DEDE F1           defb F1h    
DEDF A7           defb A7h    
DEE0 C9           defb C9h    


DEE1 LDEE1:
DEE1 F5           PUSH AF     
DEE2 7A           LD   A,D    
DEE3 E6 C0        AND  C0h    
DEE5 4F           LD   C,A    
DEE6 F1           POP  AF     
DEE7 F5           PUSH AF     
DEE8 57           LD   D,A    
DEE9 DB A8        IN   A,(00A8h) 
DEEB 47           LD   B,A    
DEEC E6 3F        AND  3Fh    
DEEE B1           OR   C      
DEEF F5           PUSH AF     
DEF0 7A           LD   A,D    
DEF1 0F           RRCA        
DEF2 0F           RRCA        
DEF3 E6 03        AND  03h    
DEF5 57           LD   D,A    
DEF6 14           INC  D      
DEF7 3E AB        LD   A,ABh  
DEF9 C6 55        ADD  A,55h  
DEFB 15           DEC  D      
DEFC 20 00        JR   NZ,LDEFE 


             org DF67h


DF67 LDF67:
DF67 CD 24 00     CALL L0024  
DF6A C1           POP  BC     
DF6B D1           POP  DE     
DF6C E1           POP  HL     
DF6D F1           POP  AF     
DF6E C9           RET         


DF6F F5           defb F5h    
DF70 E5           defb E5h    
DF71 D5           defb D5h    
DF72 C5           defb C5h    
DF73 CD           defb CDh    
DF74 2D           defb 2Dh    
DF75 40           defb 40h    
DF76 F5           defb F5h    
DF77 26           defb 26h    
DF78 40           defb 40h    
DF79 3A           defb 3Ah    
DF7A 42           defb 42h    
DF7B F3           defb F3h    
DF7C CD           defb CDh    
DF7D 24           defb 24h    
DF7E 00           defb 00h    
DF7F F1           defb F1h    
DF80 C1           defb C1h    
DF81 D1           defb D1h    
DF82 E1           defb E1h    
DF83 ED           defb EDh    
DF84 B0           defb B0h    
DF85 E5           defb E5h    
DF86 D5           defb D5h    
DF87 C5           defb C5h    
DF88 CD           defb CDh    
DF89 68           defb 68h    
DF8A F3           defb F3h    
DF8B 26           defb 26h    
DF8C 40           defb 40h    
DF8D CD           defb CDh    
DF8E 24           defb 24h    
DF8F 00           defb 00h    
DF90 C1           defb C1h    
DF91 D1           defb D1h    
DF92 E1           defb E1h    
DF93 F1           defb F1h    
DF94 C9           defb C9h    
DF95 FF           defb FFh    
DF96 FF           defb FFh    
DF97 00           defb 00h    
DF98 FF           defb FFh    
DF99 00           defb 00h    
DF9A FF           defb FFh    
DF9B 00           defb 00h    
DF9C FF           defb FFh    
DF9D 00           defb 00h    
DF9E FF           defb FFh    
DF9F 00           defb 00h    
DFA0 FF           defb FFh    
DFA1 00           defb 00h    
DFA2 FF           defb FFh    
DFA3 00           defb 00h    
DFA4 FF           defb FFh    
DFA5 00           defb 00h    
DFA6 FF           defb FFh    
DFA7 00           defb 00h    
DFA8 FF           defb FFh    
DFA9 00           defb 00h    
DFAA FF           defb FFh    
DFAB 00           defb 00h    
DFAC FF           defb FFh    
DFAD 00           defb 00h    
DFAE FF           defb FFh    
DFAF 00           defb 00h    
DFB0 FF           defb FFh    
DFB1 00           defb 00h    
DFB2 FF           defb FFh    
DFB3 00           defb 00h    
DFB4 FF           defb FFh    
DFB5 00           defb 00h    
DFB6 FF           defb FFh    
DFB7 00           defb 00h    
DFB8 FF           defb FFh    
DFB9 00           defb 00h    
DFBA FF           defb FFh    
DFBB 00           defb 00h    
DFBC FF           defb FFh    
DFBD 00           defb 00h    
DFBE FF           defb FFh    
DFBF 00           defb 00h    
DFC0 FF           defb FFh    
DFC1 00           defb 00h    
DFC2 FF           defb FFh    
DFC3 00           defb 00h    
DFC4 FF           defb FFh    
DFC5 00           defb 00h    
DFC6 FF           defb FFh    
DFC7 00           defb 00h    
DFC8 FF           defb FFh    
DFC9 00           defb 00h    
DFCA FF           defb FFh    