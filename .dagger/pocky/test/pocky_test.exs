defmodule PockyTest do
  use ExUnit.Case
  doctest Pocky

  test "greets the world" do
    assert Pocky.hello() == :world
  end
end
