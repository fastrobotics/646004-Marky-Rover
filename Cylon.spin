{{
''*******************************************
''*  PWM Cylon "Knight Rider" Kitt Car"     *
''*  Author: Gareth  www.letsmakerobots.com *   
''*******************************************
}}
CON
  _CLKMODE = XTAL1 + PLL16X
  _XINFREQ = 5_000_000

OBJ     PWM     : "PWM_32_v4.spin"

PUB DEMO_Example | DutyCycle  ,Cylon  ,  leds

PWM.Start  '' Initialize PWM cog

DutyCycle:=100   '' Set to desired Brightness   0=off 100=Max Brightness
leds:=8         '' Set to Number of Leds in your Cylon

repeat
      repeat Cylon from 16 to (16+leds)   
        PWM.Duty(Cylon -3,DutyCycle-DutyCycle,5000)  
        PWM.Duty(Cylon -2,DutyCycle-DutyCycle/100*99,5000) 
        PWM.Duty(Cylon -1,DutyCycle-DutyCycle/100*90,5000)      
        PWM.Duty(Cylon   ,DutyCycle    ,5000)
        PWM.Duty(Cylon +1,DutyCycle-DutyCycle/100*90,5000)
        PWM.Duty(Cylon +2,DutyCycle-DutyCycle/100*99,5000)
        PWM.Duty(Cylon +3,DutyCycle-DutyCycle,5000)             
        repeat 20000   '' old style delay
                                 
      repeat Cylon from (16+leds) to 16
        PWM.Duty(Cylon -3,DutyCycle-DutyCycle,5000)  
        PWM.Duty(Cylon -2,DutyCycle-DutyCycle/100*99,5000) 
        PWM.Duty(Cylon -1,DutyCycle-DutyCycle/100*90,5000)      
        PWM.Duty(Cylon   ,DutyCycle    ,5000)
        PWM.Duty(Cylon +1,DutyCycle-DutyCycle/100*90,5000)
        PWM.Duty(Cylon +2,DutyCycle-DutyCycle/100*99,5000)
        PWM.Duty(Cylon +3,DutyCycle-DutyCycle,5000)   
        repeat 20000

      

CON
{{
┌──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│                                                   TERMS OF USE: MIT License                                                  │                                                            
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation    │ 
│files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,    │
│modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software│
│is furnished to do so, subject to the following conditions:                                                                   │
│                                                                                                                              │
│The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.│
│                                                                                                                              │
│THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE          │
│WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR         │
│COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,   │
│ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                         │
└──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
}}