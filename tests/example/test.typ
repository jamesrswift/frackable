#import "/src/lib.typ" as frackable: frackable, generator

#set page(
  width: auto,
  height: auto,
  margin: 0.25cm, 
  background: none
)

#frackable(1, 2)
#frackable(1, 3)
#frackable(3, 4, whole: 9)
#frackable(9, 16)
#frackable(31, 32)
#frackable(0, "000")
