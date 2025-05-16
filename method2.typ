// 構造式.pdf を並べて grid で分ける


#import "@preview/whalogen:0.3.0": ce
#import "@preview/muchpdf:0.1.1": *
#set page(
    width: auto, height: auto,
    margin: (x: 2mm, y: 2mm),
    number-align: center,
)
#set text(font: "Hiragino Serif Pr6N" )



columns: 5 としたのは、反応物2つ、生成物1つ、「#ce("+")」、「#ce("->")」の合計5つのためです。

#figure(
  grid(
  align: center + horizon,
  columns: 5,

  muchpdf(read("assets\OH.pdf", encoding: none)),
  ce("+"),
  muchpdf(read("assets\NCO.pdf", encoding: none)),
  ce("->"),
  muchpdf(read("assets\NHCOO.pdf", encoding: none)),
  ),
)
