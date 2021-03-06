{{

┌──────────────────────────────────────────┐
│ Ciphers v1.2                             │
│ Author: Thomas E. McInnes                │               
│ See end of file for terms of use.        │                
└──────────────────────────────────────────┘

You can enter your own cipher in the DAT block below.

}}
VAR 'Variables

  Byte place
  Long c_char, uc_char

PUB SubCipher(char)

  case char
   "a":
    c_char := subst.byte[1]
   "b":
    c_char := subst.byte[2]
   "c":
    c_char := subst.byte[3]
   "d":
    c_char := subst.byte[4]
   "e":
    c_char := subst.byte[5]
   "f":
    c_char := subst.byte[6]
   "g":
    c_char := subst.byte[7]
   "h":
    c_char := subst.byte[8]
   "i":
    c_char := subst.byte[9]
   "j":
    c_char := subst.byte[10]
   "k":
    c_char := subst.byte[11]
   "l":
    c_char := subst.byte[12]
   "m":
    c_char := subst.byte[13]
   "n":
    c_char := subst.byte[14]
   "o":
    c_char := subst.byte[15]
   "p":
    c_char := subst.byte[16]
   "q":
    c_char := subst.byte[17]
   "r":
    c_char := subst.byte[18]
   "s":
    c_char := subst.byte[19]
   "t":
    c_char := subst.byte[20]
   "u":
    c_char := subst.byte[21]
   "v":
    c_char := subst.byte[22]
   "w":
    c_char := subst.byte[23]
   "x":
    c_char := subst.byte[24]
   "y":
    c_char := subst.byte[25]
   "z":
    c_char := subst.byte[26]
   other:
    c_char := char

  return c_char    

PUB Decode_Sub(char)

  case char
   subst.byte[1]:
    c_char := "a"
   subst.byte[2]:
    c_char := "b"
   subst.byte[3]:
    c_char := "c"
   subst.byte[4]:
    c_char := "d"
   subst.byte[5]:
    c_char := "e"
   subst.byte[6]:
    c_char := "f"
   subst.byte[7]:
    c_char := "g"
   subst.byte[8]:
    c_char := "h"
   subst.byte[9]:
    c_char := "i"
   subst.byte[10]:
    c_char := "j"
   subst.byte[11]:
    c_char := "k"
   subst.byte[12]:
    c_char := "l"
   subst.byte[13]:
    c_char := "m"
   subst.byte[14]:
    c_char := "n"
   subst.byte[15]:
    c_char := "o"
   subst.byte[16]:
    c_char := "p"
   subst.byte[17]:
    c_char := "q"
   subst.byte[18]:
    c_char := "r"
   subst.byte[19]:
    c_char := "s"
   subst.byte[20]:
    c_char := "t"
   subst.byte[21]:
    c_char := "u"
   subst.byte[22]:
    c_char := "v"
   subst.byte[23]:
    c_char := "w"
   subst.byte[24]:
    c_char := "x"
   subst.byte[25]:
    c_char := "y"
   subst.byte[26]:
    c_char := "z"
   other:
    c_char := char

  return c_char    

DAT 'ciphers_and_license

        UnCoded         BYTE      0, "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
        subst           BYTE      0, "d", "r", "a", "g", "o", "n", "f", "l", "y", "b", "c", "e", "h", "i", "j", "k", "m", "p", "q", "s", "t", "u", "v", "w", "x", "z"
        Number          BYTE      0, "1", "2", "3", "4", "5", "6", "7", "8", "9", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"
     
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