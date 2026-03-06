Version 4
SymbolType BLOCK
LINE Normal -64 -48 64 -48
LINE Normal 64 -48 64 48
LINE Normal 64 48 -64 48
LINE Normal -64 48 -64 -48

TEXT 0 -64 Center 2 COMPOSITE_SRC
TEXT 0 56 Center 2 Composite Signal
TEXT 0 80 Center 2 Black Box

PIN -64 -16 LEFT 8
PINATTR PinName OUT
PINATTR SpiceOrder 1

PIN -64 16 LEFT 8
PINATTR PinName GND
PINATTR SpiceOrder 2

SYMATTR Prefix X
SYMATTR Description Protected Composite Signal Source
SYMATTR ModelFile composite_blackbox.lib
SYMATTR Value COMPOSITE_SRC
SYMATTR Value2 MODE=1
