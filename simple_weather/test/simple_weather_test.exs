defmodule SimpleWeatherTest do
  use ExUnit.Case
  doctest SimpleWeather

  test "greets the world" do
    assert SimpleWeather.hello() == :world
  end
end
