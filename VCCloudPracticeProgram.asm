org $016000                             ;table of acceptable cloud values

CODE_016000     .db $10,$2F,$3F,$4F,$60,$67,$70,$8F,$9F,$B4,$B5,$BE,$DF


org $0106059                            ;item swap on canoe

CODE_016059:    STZ $00                 ;store zero into $00
CODE_01605B:    LDX #$00                ;make X zero

CODE_01605D     LDA $6000,X             ;load value to compare
CODE_016060     CMP $E4                 ;compare $E4 with acceptable values
CODE_016062     BEQ CODE_01606D         ;if the value is acceptable, get cloud
CODE_016064     TXA                     ;\else transfer X to A     
CODE_016065     CMP #$0C                ;|then check if the last byte
CODE_016067     BEQ CODE_016077         ;|$E4 is an invalid value
CODE_016069     INX                     ;|else increase X
CODE_01606A     JMP $605D               ;/loop this subroutine
                                 
CODE_01606D     LDA #$29                
CODE_01606F     STA $1DFC               ;correct SFX sound
CODE_016072     PLA
CODE_016073     PLA
CODE_016074     PLA
CODE_016075     PLA
CODE_016076     RTS

CODE_016077     LDA #$2A
CODE_016079     STA $1DFC               ;wrong SFX sound
CODE_01607C     STZ $0DC2               ;no item in item box
CODE_01607F     PLA
CODE_016080     PLA
CODE_016081     PLA
CODE_016082     PLA
CODE_016083     RTS