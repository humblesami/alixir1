defmodule HelloWorld do
  IO.puts "\n\nHello World\n\n"
  {:ok, response} = SimpleHttp.get "https://google.com"
  IO.inspect response

  def main(args), do: args |> parse_args |> _main

  defp _main([]), do: _main [name: "World"]
  defp _main(options), do: IO.puts("Hello, #{options[:name]}!")

  defp parse_args(args) do
    {options, _, _} = OptionParser.parse(args, switches: [name: :string])
    options
  end
end
