defmodule PocOban.Banking.Entities.Ted do
  use Ecto.Schema

  import Ecto.Changeset

  schema "teds" do
    field(:amount, :integer)
    field(:status, :string)

    timestamps()
  end

  @fields [
    :amount,
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
