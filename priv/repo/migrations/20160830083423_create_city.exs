defmodule IndonesiaProvinces.Repo.Migrations.CreateCity do
  use Ecto.Migration

  def change do
    create table(:cities) do
      add :name, :string
      add :city_type, :string
      add :province_id, references(:provinces, on_delete: :delete_all)

      timestamps
    end
    create index(:cities, [:province_id])

  end
end
