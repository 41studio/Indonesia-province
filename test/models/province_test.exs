defmodule IndonesiaProvinces.ProvinceTest do
  use IndonesiaProvinces.ModelCase

  alias IndonesiaProvinces.Province

  @valid_attrs %{capital_city: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Province.changeset(%Province{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Province.changeset(%Province{}, @invalid_attrs)
    refute changeset.valid?
  end
end
