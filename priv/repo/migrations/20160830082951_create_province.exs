defmodule IndonesiaProvinces.Repo.Migrations.CreateProvince do
  use Ecto.Migration

  def change do
    create table(:provinces) do
      add :name, :string
      add :capital_city, :string

      timestamps
    end

  end
end
