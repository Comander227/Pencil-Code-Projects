Polygon Assignment Pencil Code

square = (x) ->
  for [0..3]
    fd x
    rt 90
triangle = () ->
  for [1..3]
    fd 100
    rt 120
polygon = (s, l, c, f) ->
  pen c, 10
  for [1..s]
    fd l
    rt 360 / s
  fill f
speed 20
pen purple, 10
square(200)
jumpto -200, 120
square(100)
jumpto 160, -80
square(60)
pen green, 10
triangle()
jumpto -200, -150
await readnum 'Sides?', defer sides
await readnum 'Length?', defer length
await read 'Line Color?', defer lineColor
await read 'Fill Color?', defer fillColor
polygon(sides, length, lineColor, fillColor)
