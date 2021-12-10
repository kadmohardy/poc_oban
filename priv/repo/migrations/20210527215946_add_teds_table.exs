defmodule PocOban.Repo.Migrations.AddTedsTable do
  use Ecto.Migration

  def up do
    create table("teds") do
      add :amount, :integer
      add :status, :string, default: ":confirmed"

      timestamps()
    end
  end

  def down do
    drop table("teds")
  end
end
