defmodule Blogger.MixProject do
  use Mix.Project

  def project do
    [
      app: :blogger,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  @moduledoc """
  def fetch_blog() do
    case
  HTTPoison.get!("https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91
  internalSource = hubcard&refferingContentType = Search&clickId = cardslot%201") do
  {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
  urls =
  body
  |> Floki.find("podiihq_blog")
  |> Floki.attribute("href")
  {:ok, urls}
  {:ok, %HTTPoison.Response{status_code: 404}} ->
  IO.puts "Not found : ("
  {:error, %HTTPoison.error{reason: reason}} ->
  IO.inspect reason

    end
  end
  """



  def uppercase do
  item1 = IO.gets "Enter the first item in the list" |> String.trim
  item2 = IO.gets "Enter the second item in the list" |> String.trim
  item3 = IO.gets "Enter the third item in the list" |> String.trim
  input = []
  animals = [item1, item2, item3 | input]
  animals = [
    String.upcase("cow"),
    String.upcase("goat"),
    String.upcase("sheep"),
  ]
  IO.puts(animals)
  end


  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
       {:httpoison, "~> 1.8"},
       {:floki, "0.20.0"}
    ]
  end
end
