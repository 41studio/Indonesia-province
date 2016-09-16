defmodule IndonesiaProvinces.City do
  use IndonesiaProvinces.Web, :model

  schema "cities" do
    field :name, :string
    field :city_type, :string
    belongs_to :province, IndonesiaProvinces.Province

    timestamps
  end

  @required_fields ~w(name city_type)
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
end
