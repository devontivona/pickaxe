# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Program.create(
  name: 'Bumper Music',
  instructions: 'main: ; Blues ; tune 2, 4,($4B,$4A,$4B,$4C,$6B,$4C,$6B,$4C,$46,$44,$43,$46,$4B,$4A,$4B,$4C,$51,$50,$51,$4C,$41,$4C,$41,$4C,$48,$46,$45,$48,$51,$50,$51,$4C,$53,$54,$56,$54,$53,$51,$54,$53,$51,$4B,$53,$51,$4B,$49,$51,$4B,$49,$48,$4B,$49,$48,$46,$49,$48,$46,$44,$43,$42,$41,$40,$6B,$4C,$6B,$41,$44,$4C,$44,$4C,$44,$46,$48,$49,$4B,$4C,$4B,$4C,$4B,$4C,$51,$53,$54,$56,$54,$51,$4B,$51,$4B,$48,$46,$44,$41,$44,$46,$4C,$6B,$41,$44,$46) ; Beverly hills cop ;tune 2, 3,($25,$2C,$28,$6C,$25,$65,$2A,$6C,$25,$23,$25,$2C,$00,$6C,$25,$65,$01,$6C,$00,$28,$25,$00,$05,$65,$23,$63,$6C,$20,$27,$A5) ; Looney Tunes ; tune 2, 5,($6C,$00,$45,$44,$42,$40,$29,$40,$45,$44,$42,$43,$04,$44,$44,$40,$42,$40,$44,$40,$42,$69,$40,$67,$6A,$69,$65) forward A; forward B; if pinC.1 = 1 then ;tune 2, 5,($6C,$00,$45,$44,$42,$40,$29,$40,$45,$44,$42,$43,$04,$44,$44,$40,$42,$40,$44,$40,$42,$69,$40,$67,$6A,$69,$65) backward A backward B wait 1 halt A halt B forward A wait 1 else if pinC.3 = 1 then ;tune 2, 4,($4B,$4A,$4B,$4C,$6B,$4C,$6B,$4C,$46,$44,$43,$46,$4B,$4A,$4B,$4C,$51,$50,$51,$4C,$41,$4C,$41,$4C,$48,$46,$45,$48,$51,$50,$51,$4C,$53,$54,$56,$54,$53,$51,$54,$53,$51,$4B,$53,$51,$4B,$49,$51,$4B,$49,$48,$4B,$49,$48,$46,$49,$48,$46,$44,$43,$42,$41,$40,$6B,$4C,$6B,$41,$44,$4C,$44,$4C,$44,$46,$48,$49,$4B,$4C,$4B,$4C,$4B,$4C,$51,$53,$54,$56,$54,$51,$4B,$51,$4B,$48,$46,$44,$41,$44,$46,$4C,$6B,$41,$44,$46) backward A backward B wait 1 halt A halt B forward B wait 1 else forward A; forward B; end if goto main'
)


Program.create(
  name: 'Hexagon',
  instructions: 'main: high B.4    ; start B motor pause 600   ; keep turning B motor low B.4     ; stop B motor forward A   ; start A motor forward B   ; start B motor pause 1000  ; keep robot straight halt A      ; stop A motor halt B      ; stop B motor goto main   ; loop main'
)