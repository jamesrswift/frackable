#import "/src/lib.typ" as frackable: frackable, generator

#set page(
  width: auto,
  height: auto,
  margin: 0.25cm, 
  background: none
)

#set text(font: "Calibri")
#let my-frackable = generator(
  shift-numerator-x: -0.1em,
  shift-denominator-x: -0.1em,
)

#my-frackable(1, 2)
#my-frackable(1, 3)
#my-frackable(3, 4, whole: 9)
#my-frackable(9, 16)
#my-frackable(31, 32)
#my-frackable(0, "000")
