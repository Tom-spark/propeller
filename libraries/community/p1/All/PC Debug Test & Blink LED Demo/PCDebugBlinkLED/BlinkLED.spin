'' Propeller "Hello, World!" demo
'' -- blink an LED on pin A16
''
'' A16>───────┐
''       330Ω     

CON
  _clkmode = xtal1 + pll16x                     ' use external crystal * 16
  _xinfreq = 5_000_000                          ' 5 MHz
        
  Led = 16

VAR
  long delayTime                                ' used for delay

PUB BlinkLED    

  dira[Led] := 1                                ' make the pin an output

  repeat
    outa[Led] := !outa[Led]                     ' toggle the pin state
    delayTime := cnt + 8_000_000                ' delay = 8 million cycles
    waitcnt(delayTime)                          ' wait