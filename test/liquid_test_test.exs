defmodule LiquidTestTest do
  use ExUnit.Case
  doctest LiquidTest

  test "greets the world" do
    assert LiquidTest.hello() == :world
  end
end
