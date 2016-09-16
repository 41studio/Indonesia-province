defmodule IndonesiaProvinces.Schema do
  use Absinthe.Schema
  import_types IndonesiaProvinces.Schema.Types

  query do
    field :provinces, list_of(:province) do
      resolve &IndonesiaProvinces.ProvinceResolver.all/2
    end

    field :city, type: :city do
      arg :id, non_null(:id)
      resolve &IndonesiaProvinces.ProvinceResolver.find/2
    end

  end

end