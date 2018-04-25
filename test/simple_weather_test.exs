defmodule SimpleWeather.Test do
  use ExUnit.Case, async: true

  describe "when receives Kelvin" do
    test "returns Celsius" do
      kelvin = 296.48
      celsius = 23.3
      temperature = SimpleWeather.kelvin_to_celsius(kelvin)
      assert temperature == celsius
    end
  end

  describe "when receive a valid location" do
    test "returns temperature" do
      location = "Porto Alegre"
      temperature = SimpleWeather.temperature_of(location)
      assert String.contains?(temperature, location) == true
    end
  end

  describe "when receive an invalid location" do
    test "returns not found" do
      invalid_location = "00000"
      result = SimpleWeather.temperature_of(invalid_location)
      assert result == "#{invalid_location} not found"
    end
  end
end
