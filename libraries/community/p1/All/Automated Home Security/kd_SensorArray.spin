{{
**********************************************
* kd_SensorArray                             *
* Author: kpd237                             *             
* See end of file for terms of use.          *
**********************************************
   
}}
CON
    _clkfreq = 80_000_000
    _clkmode = xtal1 + pll16x

    topPin        = 24
    middlePin     = 25
    bottomPin     = 26
VAR
   LONG sensorWait

PUB threePinSensorArray(sensorsAttached, trippedSensor)'trippedSensor should be a six-dimensional array passed by reference

Repeat
  
  
  If (sensorsAttached >= 1)           
    setState(1,0,1,0,0,1)
    sensorWait= cnt                   'Give a 10ms pause so pins can be set appropriately and sensor circuit can be powered
    Waitcnt(sensorWait + 50_000)
    trippedsensor[0]=ina(middlePin)   
  
  If (sensorsAttached >= 2)
    setState(1,0,1,1,0,0)
    sensorWait= cnt
    Waitcnt(sensorWait + 50_000)
    trippedsensor[1]=ina(middlePin)

  If (sensorsAttached >= 3)
    setState(0,1,1,0,1,0)
    sensorWait= cnt
    Waitcnt(sensorWait + 50_000)
    trippedsensor[2]=ina(topPin)
  
  If (sensorsAttached >= 4)
    setState(1,1,0,0,1,0)
    sensorWait= cnt
    Waitcnt(sensorWait + 50_000)
    trippedsensor[3]=ina(bottomPin)

  If (sensorsAttached >= 5)
    setState(1,1,0,1,0,0)
    sensorWait= cnt
    Waitcnt(sensorWait + 50_000)
    trippedsensor[4]=ina(bottomPin)

  If (sensorsAttached >= 6)
    setState(0,1,1,0,0,1)
    sensorWait= cnt
    Waitcnt(sensorWait + 50_000)
    trippedsensor[5]=ina(topPin)
    
  setState(0,0,0,0,0,0)             'Clear all pins so they are not draining power
  sensorWait= cnt               
  Waitcnt(sensorWait + 15_000_000)  'Repeated every 30sec again for power savings, period could likely be lengthened  


PRI setState(topDir, middleDir, bottomDir,topOut,middleOut,bottomOut) 'take binary input to set direction and output registers of pins assigned in CON block
     Dira(topPin)    = top
     Dira(middlePin) = middle
     Dira(bottomPin) = bottom
     Outa(topPin)    = topOut
     Outa(middlePin) = middleOut
     Outa(bottomPin) = bottomOut

OBJ
{{
┌───────────────────────────────────────────────────────────────────────────────────────────────────┐
│                                     TERMS OF USE: MIT License                                     │                                                            
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│Permission is hereby granted, free of charge, to any person obtaining a copy of this software and  │
│associated documentation files (the "Software"), to deal in the Software without restriction,      │
│including without limitation the rights to use, copy, modify, merge, publish, distribute,          │
│sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is      │
│furnished to do so, subject to the following conditions:                                           │
│                                                                                                   │
│The above copyright notice and this permission notice shall be included in all copies or           │
│ substantial portions of the Software.                                                             │
│                                                                                                   │
│THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT  │
│NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND             │
│NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,       │
│DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,                   │
│ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE        │
│SOFTWARE.                                                                                          │     
└───────────────────────────────────────────────────────────────────────────────────────────────────┘
}}        