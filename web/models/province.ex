defmodule IndonesiaProvinces.Province do
  use IndonesiaProvinces.Web, :model

  schema "provinces" do
    field :name, :string
    field :capital_city, :string

    has_many :cities, IndonesiaProvinces.City
    timestamps
  end

  @required_fields ~w(capital_city name)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end

  def get_all_with_cities do
    IndonesiaProvinces.Repo.all(from p in IndonesiaProvinces.Province, preload: [:cities])
  end

end
