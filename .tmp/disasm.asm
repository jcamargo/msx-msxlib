L02D7:       equ  02D7h
L0D02:       equ  0D02h
L0EF1:       equ  0EF1h
L113B:       equ  113Bh
L120C:       equ  120Ch
L3A88:       equ  3A88h
L3A98:       equ  3A98h
L3AF3:       equ  3AF3h
L4086:       equ  4086h
LBE30:       equ  BE30h
LC765:       equ  C765h
LF3E7:       equ  F3E7h
LFB3F:       equ  FB3Fh
LFC9E:       equ  FC9Eh
LFCA0:       equ  FCA0h
LFCA2:       equ  FCA2h
LFD9A:       equ  FD9Ah
LFD9F:       equ  FD9Fh
LFF4F:       equ  FF4Fh


             org 0000h


0000 L0000:
0000 F3           DI          
0001 C3 D7 02     JP   L02D7  


0004 BF           defb BFh    
0005 1B           defb 1Bh    
0006 98           defb 98h    
0007 98           defb 98h    
0008 C3           defb C3h    
0009 83           defb 83h    
000A 26           defb 26h    
000B 00           defb 00h    
000C C3           defb C3h    
000D B6           defb B6h    
000E 01           defb 01h    
000F 00           defb 00h    
0010 C3           defb C3h    
0011 86           defb 86h    
0012 26           defb 26h    
0013 00           defb 00h    
0014 C3           defb C3h    
0015 D1           defb D1h    
0016 01           defb 01h    
0017 00           defb 00h    
0018 C3           defb C3h    
0019 45           defb 45h    
001A 1B           defb 1Bh    
001B 00           defb 00h    
001C C3           defb C3h    
001D 17           defb 17h    
001E 02           defb 02h    
001F 00           defb 00h    
0020 C3           defb C3h    
0021 6A           defb 6Ah    
0022 14           defb 14h    
0023 00           defb 00h    
0024 C3           defb C3h    
0025 5E           defb 5Eh    
0026 02           defb 02h    
0027 00           defb 00h    
0028 C3           defb C3h    
0029 89           defb 89h    
002A 26           defb 26h    
002B 11           defb 11h    
002C 11           defb 11h    
002D 00           defb 00h    
002E 00           defb 00h    
002F 00           defb 00h    
0030 C3           defb C3h    
0031 05           defb 05h    
0032 02           defb 02h    
0033 00           defb 00h    
0034 00           defb 00h    
0035 00           defb 00h    
0036 00           defb 00h    
0037 00           defb 00h    


0038 L0038:
0038 C3 3C 0C     JP   L0C3C  


003B C3           defb C3h    
003C 9D           defb 9Dh    
003D 04           defb 04h    
003E C3           defb C3h    
003F 9D           defb 9Dh    
0040 13           defb 13h    
0041 C3           defb C3h    
0042 77           defb 77h    
0043 05           defb 05h    
0044 C3           defb C3h    
0045 70           defb 70h    
0046 05           defb 05h    
0047 C3           defb C3h    
0048 7F           defb 7Fh    
0049 05           defb 05h    
004A C3           defb C3h    
004B D7           defb D7h    
004C 07           defb 07h    
004D C3           defb C3h    
004E CD           defb CDh    
004F 07           defb 07h    
0050 C3           defb C3h    
0051 EC           defb ECh    
0052 07           defb 07h    
0053 C3           defb C3h    
0054 DF           defb DFh    
0055 07           defb 07h    
0056 C3           defb C3h    
0057 15           defb 15h    
0058 08           defb 08h    
0059 C3           defb C3h    
005A 0F           defb 0Fh    
005B 07           defb 07h    
005C C3           defb C3h    
005D 44           defb 44h    
005E 07           defb 07h    
005F C3           defb C3h    
0060 4F           defb 4Fh    
0061 08           defb 08h    
0062 C3           defb C3h    
0063 F7           defb F7h    
0064 07           defb 07h    
0065 00           defb 00h    
0066 C3           defb C3h    
0067 98           defb 98h    
0068 13           defb 13h    
0069 C3           defb C3h    
006A A8           defb A8h    
006B 06           defb 06h    
006C C3           defb C3h    
006D 0E           defb 0Eh    
006E 05           defb 05h    
006F C3           defb C3h    
0070 38           defb 38h    
0071 05           defb 05h    
0072 C3           defb C3h    
0073 D2           defb D2h    
0074 05           defb 05h    
0075 C3           defb C3h    
0076 1F           defb 1Fh    
0077 06           defb 06h    
0078 C3           defb C3h    
0079 94           defb 94h    
007A 05           defb 05h    
007B C3           defb C3h    
007C B4           defb B4h    
007D 05           defb 05h    
007E C3           defb C3h    
007F 02           defb 02h    
0080 06           defb 06h    
0081 C3           defb C3h    
0082 59           defb 59h    
0083 06           defb 06h    
0084 C3           defb C3h    
0085 E4           defb E4h    
0086 06           defb 06h    
0087 C3           defb C3h    
0088 F9           defb F9h    
0089 06           defb 06h    
008A C3           defb C3h    
008B 04           defb 04h    
008C 07           defb 07h    
008D C3           defb C3h    
008E 10           defb 10h    
008F 15           defb 15h    
0090 C3           defb C3h    
0091 BD           defb BDh    
0092 04           defb 04h    
0093 C3           defb C3h    
0094 02           defb 02h    
0095 11           defb 11h    
0096 C3           defb C3h    
0097 0E           defb 0Eh    
0098 11           defb 11h    
0099 C3           defb C3h    
009A C4           defb C4h    
009B 11           defb 11h    


             org 0C3Ch


0C3C L0C3C:
0C3C E5           PUSH HL     
0C3D D5           PUSH DE     
0C3E C5           PUSH BC     
0C3F F5           PUSH AF     
0C40 D9           EXX         
0C41 08           EX   AF,AF' 
0C42 E5           PUSH HL     
0C43 D5           PUSH DE     
0C44 C5           PUSH BC     
0C45 F5           PUSH AF     
0C46 FD E5        PUSH IY     
0C48 DD E5        PUSH IX     
0C4A CD 9A FD     CALL LFD9A  
0C4D DB 99        IN   A,(0099h) 
0C4F A7           AND  A      
0C50 F2 02 0D     JP   P,L0D02 
0C53 CD 9F FD     CALL LFD9F  
0C56 FB           EI          
0C57 32 E7 F3     LD   (LF3E7),A 
0C5A E6 20        AND  20h    
0C5C 21 6D FC     LD   HL,FC6Dh 
0C5F C4 F1 0E     CALL NZ,L0EF1 
0C62 2A A2 FC     LD   HL,(LFCA2) 
0C65 2B           DEC  HL     
0C66 7C           LD   A,H    
0C67 B5           OR   L      
0C68 20 09        JR   NZ,L0C73 
0C6A 21 7F FC     LD   HL,FC7Fh 
0C6D CD F1 0E     CALL L0EF1  
0C70 2A A0 FC     LD   HL,(LFCA0) 
0C73 L0C73:
0C73 22 A2 FC     LD   (LFCA2),HL 
0C76 2A 9E FC     LD   HL,(LFC9E) 
0C79 23           INC  HL     
0C7A 22 9E FC     LD   (LFC9E),HL 
0C7D 3A 3F FB     LD   A,(LFB3F) 
0C80 4F           LD   C,A    
0C81 AF           XOR  A      
0C82 L0C82:
0C82 CB 19        RR   C      
0C84 F5           PUSH AF     
0C85 C5           PUSH BC     
0C86 DC 3B 11     CALL C,L113B 
0C89 C1           POP  BC     
0C8A F1           POP  AF     
0C8B 3C           INC  A      
0C8C FE 03        CP   03h    
0C8E 38 F2        JR   C,L0C82 
0C90 21 F6 F3     LD   HL,F3F6h 
0C93 35           DEC  (HL)   
0C94 20 6C        JR   NZ,L0D02 
0C96 36 03        LD   (HL),03h 
0C98 AF           XOR  A      
0C99 CD 0C 12     CALL L120C  
0C9C E6 30        AND  30h    
0C9E F5           PUSH AF     
0C9F 3E 01        LD   A,01h  
0CA1 CD 00 00     CALL L0000  


             org 39FEh


39FE L39FE:
39FE CC 4F FF     CALL Z,LFF4F 
3A01 67           LD   H,A    
3A02 04           INC  B      
3A03 66           LD   H,(HL) 
3A04 BB           CP   E      
3A05 68           LD   L,B    
3A06 0B           DEC  BC     
3A07 68           LD   L,B    
3A08 1B           DEC  DE     
3A09 68           LD   L,B    
3A0A 1C           INC  E      
3A0B 54           LD   D,H    
3A0C F5           PUSH AF     
3A0D 7B           LD   A,E    
3A0E 48           LD   C,B    
3A0F 68           LD   L,B    
3A10 F5           PUSH AF     
3A11 65           LD   H,L    
3A12 FA 65 C7     JP   M,LC765 
3A15 4F           LD   C,A    
3A16 FF           RST  38h    
3A17 65           LD   H,L    
3A18 8A           ADC  A,D    
3A19 2F           CPL         
3A1A B2           OR   D      
3A1B 2F           CPL         
3A1C 3A 30 BE     LD   A,(LBE30) 
3A1F 30 40        JR   NC,L3A61 
3A21 79           LD   A,C    
3A22 4C           LD   C,H    
3A23 79           LD   A,C    
3A24 5A           LD   E,D    
3A25 79           LD   A,C    
3A26 69           LD   L,C    
3A27 79           LD   A,C    
3A28 39           ADD  HL,SP  
3A29 7C           LD   A,H    
3A2A 39           ADD  HL,SP  
3A2B 6D           LD   L,L    
3A2C 66           LD   H,(HL) 
3A2D 7C           LD   A,H    
3A2E 6B           LD   L,E    
3A2F 7C           LD   A,H    
3A30 70           LD   (HL),B 
3A31 7C           LD   A,H    
3A32 25           DEC  H      
3A33 6D           LD   L,L    
3A34 03           INC  BC     
3A35 6D           LD   L,L    
3A36 14           INC  D      
3A37 6D           LD   L,L    
3A38 57           LD   D,A    
3A39 7C           LD   A,H    
3A3A 5C           LD   E,H    
3A3B 7C           LD   A,H    
3A3C 61           LD   H,C    
3A3D 7C           LD   A,H    
3A3E 72           LD   (HL),D 
3A3F 3A 88 3A     LD   A,(L3A88) 
3A42 9F           SBC  A,A    
3A43 3A F3 3A     LD   A,(L3AF3) 
3A46 2E 3B        LD   L,3Bh  
3A48 4F           LD   C,A    
3A49 3B           DEC  SP     
3A4A 69           LD   L,C    
3A4B 3B           DEC  SP     
3A4C 7B           LD   A,E    
3A4D 3B           DEC  SP     
3A4E 80           ADD  A,B    
3A4F 3B           DEC  SP     
3A50 9F           SBC  A,A    
3A51 3B           DEC  SP     
3A52 A0           AND  B      
3A53 3B           DEC  SP     
3A54 A8           XOR  B      
3A55 3B           DEC  SP     
3A56 E8           RET  PE     
3A57 3B           DEC  SP     
3A58 09           ADD  HL,BC  
3A59 3C           INC  A      
3A5A 18 3C        JR   L3A98  


3A5C 2B           defb 2Bh    
3A5D 3C           defb 3Ch    
3A5E 5D           defb 5Dh    
3A5F 3C           defb 3Ch    
3A60 5E           defb 5Eh    


3A61 L3A61:
3A61 3C           INC  A      
             org 4087h


4087 L4087:
4087 18 FD        JR   L4086  


4089 48           defb 48h    
408A 65           defb 65h    
408B 6C           defb 6Ch    
408C 6C           defb 6Ch    
408D 6F           defb 6Fh    
408E 2C           defb 2Ch    
408F 20           defb 20h    
4090 4A           defb 4Ah    
4091 75           defb 75h    
4092 6C           defb 6Ch    
4093 65           defb 65h    
4094 6B           defb 6Bh    
4095 2C           defb 2Ch    
4096 20           defb 20h    
4097 69           defb 69h    
4098 74           defb 74h    
4099 20           defb 20h    
409A 73           defb 73h    


             org FFFDh


FFFD LFFFD:
FFFD 00           defb 00h    
FFFE 00           defb 00h    
FFFF 00           defb 00h    