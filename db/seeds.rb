# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



code = %{
  main: 

    forward A;
    forward B;

    if pinC.1 = 1 then
      halt A
      halt B
      backward A
      backward B
      wait 1
      forward A
      wait 1
      forward A;
      forward B;
      tune 2, 5,($6C,$00,$45,$44,$42,$40,$29,$40,$45,$44,$42,$43)

    else if pinC.3 = 1 then
      halt A
      halt B
      backward A
      backward B
      wait 1
      halt A
      halt B
      forward B
      wait 1
      forward A;
      forward B;
      tune 2, 4,($4B,$4A,$4B,$4C,$6B,$4C,$6B,$4C,$46,$44,$43,$46)

    else
      forward A;
      forward B;
    end if

    goto main
}
Program.create(
  name: 'Bumper Music',
  instructions: code
)



code = %{
  main: 
    high B.4    ; start B motor
    pause 600   ; keep turning B motor
    low B.4     ; stop B motor
    forward A   ; start A motor
    forward B   ; start B motor
    pause 1000  ; keep robot straight
    halt A      ; stop A motor
    halt B      ; stop B motor
    goto main   ; loop main
}
Program.create(
  name: 'Hexagon',
  instructions: code
)


Program.create(
  name: 'Halt',
  instructions: 'main: wait 10 goto main'
)