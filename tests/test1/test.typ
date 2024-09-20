#import "/src/lib.typ" as frackable: frackable

#set page(
  width: auto,
  height: auto,
  margin: 1cm, 
  background: none
)

#frackable()
#frackable(denominator: 3)
#frackable(numerator: 9, denominator: 16)
#frackable(numerator: 31, denominator: 32)
#frackable(numerator: 0, denominator: "000")
#frackable()
