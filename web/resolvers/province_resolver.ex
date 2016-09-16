defmodule IndonesiaProvinces.ProvinceResolver do
  def all(_args, _info) do
    {:ok, IndonesiaProvinces.Province.get_all_with_cities}
  end

  def find(%{id: id}, _info) do
    case IndonesiaProvinces.Repo.get(IndonesiaProvinces.City, id) do
      nil  -> {:error, "City id #{id} not found"}
      city -> {:ok, city}
    end
  end
end