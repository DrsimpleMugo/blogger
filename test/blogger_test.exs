defmodule BloggerTest do
  use ExUnit.Case
  doctest Blogger

  test "greets the world" do
    assert Blogger.hello() == :world

  test "uppercase" do
    assert Blogger.uppercase() == uppercase
    end


  end
end
