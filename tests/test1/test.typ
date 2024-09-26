#import "/src/lib.typ" as frackable: frackable, generator
// #import "@local/frackable:0.1.0": *

#set page(
  width: auto,
  height: auto,
  margin: 1cm, 
  background: none
)

#frackable(1, 2)
#frackable(1, 3)
#frackable(3, 4, whole: 9)
#frackable(9, 16)
#frackable(31, 32)
#frackable(0, "000")

#let my-frackable = generator(

)

#my-frackable(1, 2)
#my-frackable(1, 3)
#my-frackable(3, 4, whole: 9)
#my-frackable(9, 16)
#my-frackable(31, 32)
#my-frackable(0, "000")