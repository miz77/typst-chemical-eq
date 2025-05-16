// dictionary に構造式を insert して、必要なときに適宜呼び出して表現する方法


#import "@preview/alchemist:0.1.6": *
#import "@preview/whalogen:0.3.0": ce
#set page(
    width: auto, height: auto,
    margin: (x: 2mm, y: 2mm),
    number-align: center,
)





// 辞書
#let dict = (
  name: "Typst",
  born: 2019,
)

// 反応物を書いて、それを辞書へ追加
#dict.insert(
"OH",   
skeletize(
   config: (
    angle-increment: 30deg,
    atom-sep: 2em,
    ),
  {
    fragment("HO")
    single()
    fragment("R")
    single()
    fragment("OH")
  }
   
)
)


// 生成物を辞書へ追加

#dict.insert(
"NCO",   
skeletize(
   config: (
    angle-increment: 30deg,
    atom-sep: 2em,
    ),
  {
    fragment("O")
    double()
    fragment("C")
    double()
    fragment("N")
    single()
    fragment("R'")
    single()
    fragment("N")
    double()
    fragment("C")
    double()
    fragment("O")
  }
   
)
)


// 生成物を辞書へ追加

#dict.insert(
  "NHCOO",
 skeletize(
  config: (
    angle-increment: 30deg,
  ), 
  {
    single(angle: 1)
    parenthesis(
      l: "(", r: ")",
      br: $n$,
      align: false,
      height: 2.6em,
      yoffset: -0.6em,
          {
            fragment("O")
            single(angle: -1)
            fragment("R")
            single(angle: 1)
            fragment("O")
            single(angle: -1)
            fragment("C")
             branch({
              double(angle: -3)
              fragment("O")
    })
            single(angle: 1)
            fragment("N")
             branch({
              single(angle: 3)
              fragment("H")
    })    
            single(angle: -1)
            fragment("R'")
            single(angle: 1)
            fragment("N")
             branch({
              single(angle: 3)
              fragment("H")
    })    
            single(angle: -1)
            fragment("C")
             branch({
              double(angle: -3)
              fragment("O")
    })    
            single(angle: 1)
          }
        )
  }
)
)

// 出力

$ #dict.OH #ce("+")  dict.NCO #ce("->") dict.NHCOO $
