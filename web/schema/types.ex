defmodule IndonesiaProvinces.Schema.Types do
  use Absinthe.Schema.Notation

  object :province do
    field :id, :id
    field :name, :string
    field :cities, list_of(:city)
  end

  object :city do
    field :id, :id
    field :city_type, :string
    field :name, :string 
  end

end