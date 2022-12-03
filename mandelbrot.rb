SIZE = 3.5
WIDTH = 100
HEIGHT = 100
RETRY = 50

0.upto(WIDTH - 1) do |x|
  0.upto(HEIGHT - 1) do |y|
    set_pixel(x, y, 0x111111ff)
  end
end

0.upto(WIDTH - 1) do |i|
  x = i * SIZE.to_f / WIDTH - SIZE / 2
  0.upto(HEIGHT - 1) do |j|
    y = j * SIZE.to_f / HEIGHT - SIZE / 2
    a = 0
    b = 0
    0.upto(RETRY - 1) do |s|
      _a = a * a - b * b + x
      _b = 2 * a * b + y
      a = _a
      b = _b
      if a * a + b * b > 4
        if s % 2 == 0
          set_pixel(i, j, 0x0074D9ff)
        else
          set_pixel(i, j, 0xF012BEff)
        end
        break
      end
    end
  end
end 