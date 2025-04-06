defmodule NekoTest do
  use ExUnit.Case
  doctest Neko

  test "greets the world" do
    assert Neko.hello() == :world
  end
end
