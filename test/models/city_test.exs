defmodule IndonesiaProvinces.CityTest do
  use IndonesiaProvinces.ModelCase

  alias IndonesiaProvinces.City

  @valid_attrs %{city_type: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = City.changeset(%City{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = City.changeset(%City{}, @invalid_attrs)
    refute changeset.valid?
  end
end
