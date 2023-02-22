import SimpleHttp
st1 = "\nHello Elixir"
lista = [3, "yyy", 5];
#tuple1 = {4, "zzz", 5}
list2 = [a: 1, b: 2]
IO.inspect lista, label: "\nThe list is : "
IO.puts("\nDict Item is #{inspect(list2[:a])}")
cmp = 0
if list2[:a] > cmp do
  IO.puts "\nIs gt than #{cmp}"
else
  IO.puts "\nIs Not than #{cmp}"
end
lent = String.length(st1)
ans = "\nLength is #{lent}"
IO.puts(ans)

IO.puts "\nMatch foo => #{String.match?("foo", ~r/foo/)}\n"

{:ok, response} = SimpleHttp.get "http://jsonplaceholder.typicode.com/posts/1"

IO.inspect response


#IO.puts tuple1
