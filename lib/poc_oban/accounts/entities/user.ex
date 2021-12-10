defmodule PocOban.Accounts.Entities.User do
  use Ecto.Schema

  import Ecto.Changeset

  schema "users" do
    field(:name, :string)
    field(:email, :string)
    field(:status, :string)

    timestamps()
  end

  @fields [
    :name,
    :email,
    :status
  ]

  @doc false
  def changeset(ted_request, attrs) do
    ted_request
    |> cast(Enum.into(attrs, %{}), @fields)
    |> validate_required(@fields)
  end

  @doc false
  def update_changeset(ted_request, attrs) do
    ted_request
    |> cast(Enum.into(attrs, %{}), [:status])
  end
end
