defmodule PocOban.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def up do
    create table("users") do
      add :email, :string
      add :name, :string
      add :status, :string, default: ":not_confirmed"
      timestamps()
    end
  end

  def down do
    drop table("users")
  end
end
