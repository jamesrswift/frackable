#import "@preview/tidy:0.3.0"
#import "@preview/mantys:0.1.4": *
#import "/src/lib.typ": frackable

#let package = toml("/typst.toml").package
#let docs = tidy.parse-module(read("/src/impl.typ"), scope: (frackable: frackable),)

#titlepage(
  package.name,
  [Frackable], // title
  [Vulgar Fractions], //subtitle 
  none, //description, 
  package.authors,
  (package.repository,), 
  package.version,
  datetime.today(), 
  none, // abstract, 
  package.license,
  toc: false,
)

#tidy.show-module(docs, style: tidy.styles.default)