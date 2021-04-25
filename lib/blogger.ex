defmodule Blogger do
  @moduledoc """
  Documentation for `Blogger`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Blogger.uppercase()

      takes in a list from the user then prints it in uppercase

  """
  def uppercase do
  IO.puts "Prompts you to Enter the values in the list +> cow, goat, sheep"
  item1 = IO.gets "Enter the first item in the list :  " |> String.trim
  item2 = IO.gets "Enter the second item in the list :  " |> String.trim
  item3 = IO.gets "Enter the third item in the list :  " |> String.trim
  input = []
  animals = [item1, item2, item3 | input]
  animals = [
    String.upcase("cow"),
    String.upcase("goat"),
    String.upcase("sheep"),
  ]
  IO.puts "Then prints them in uppercase"
  IO.inspect(animals)
  end
end

def fetch_blog() do
 case HTTPoison.get(“https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91") do
 {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
 urls =
 body
 |> Floki.find(“podiihq”)
 |> Floki.attribute(“href”)
{:ok, urls}
 {:ok, %HTTPoison.Response{status_code: 404}} ->
 IO.puts “Not found :(“
 {:error, %HTTPoison.Error{reason: reason}} ->
 IO.inspect reason
end
 end
 def fetch_blog({_, urls}) do
 urls
 |> Enum.map(fn url -> HTTPoison.get(url) end)
 |> Enum.map(fn {_, result} -> result.body end)
end
