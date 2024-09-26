/// Create vulgar fractions using unicode
/// #example(```typ
/// #frackable(1, 2)
/// #frackable(1, 3)
/// #frackable(9, 16)
/// #frackable(31, 32)
/// #frackable(0, "000")
/// #frackable(whole: 9, 3, 4)
/// ```, scale-preview: 200%)
/// 
/// - numerator (integer, string): The top part of the fraction.
/// - denominator (integer, string): The bottom part of the fraction.
/// - whole (integer, string): Optional whole number to precede the vulgar
///     fraction, making mixed fraction.
/// -> content
#let frackable(
  numerator,
  denominator,
  whole: none
) = {
  show: box
  if whole != none {
    str(whole) + "\u{2064}"
  }
  set text(features: ("frac",),)
  str(numerator) + "\u{2044}" + str(denominator)
}

/// Returns a function having the same signature as `generator`, to be used
/// for typesetting vulgar fractions within fonts that do not support the
/// `frac` feature. Default values are chosen for `Linux Libertine` font.
/// Can be used to display arbitrary content as a vulgar fraction, rather than
/// just integers or interger-like strings.
/// 
/// - font-size (length): Font size with which to display numerator and denominator. Best practice is to use `em` units.
/// - shift-numerator (length): Amount of vertical shift to apply to numerator. Best practice is to use `em` unites
/// - shift-denominator (length): Amount of vertical shift to apply to denominator. Best practice is to use `em` unites
#let generator(
  font-size: 0.5em,
  shift-numerator: -0.3em,
  shift-denominator: 0.05em
) = (numerator, denominator, whole: none) => {
  show: box
  if whole != none {
    str(whole) + "\u{2064}"
  }
  box(
    move(
      dy: shift-numerator,
      text(
        str(numerator),
        size: font-size
      )
    ),
  )
  box("\u{2044}")
  box(
    move(
      dy: shift-denominator,
      text(
        str(denominator),
        size: font-size
      )
    ),
  )
}