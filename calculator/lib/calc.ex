defmodule Calc do
  def main() do
    expr1 = "Empty string"
    try do
      expr1 = IO.gets("> ")
      result = expr1 |> eval_expression()
      IO.puts("#{expr1} = #{inspect(result)}")
    catch
      expr1 -> IO.puts("Bad Input: #{inspect(expr1)}")
    end
    main()
  end

  def eval_expression(line) do
    Lexer.tokenize(line)
    |> Parser.parse()
    |> Interpreter.interp()
  end
end
