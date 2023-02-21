defmodule MyMath do
  def sum(a, b) do
     a + b
  end
  def mul(a, b) do
    a * b
 end
end
res1 = MyMath.sum(1, 2)
res2 = MyMath.mul(3, 2)
IO.puts("1+2=#{res1} 3*2=#{res2}")
