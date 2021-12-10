defmodule PocOban.Banking.Repositories.TedRepository do
  @moduledoc """
  The Teds context.
  """

  import Ecto.Query, warn: false
  alias PocOban.Repo
  alias PocOban.Banking.Entities.Ted

  def get_ted_by_id(id) do
    Repo.get_by(Ted, id: id)
  end

  @spec list_teds_by_day :: any
  def list_teds_by_day do
    from(u in Ted)
    |> Repo.all()
  end

  def update_ted_status(ted = %Ted{}, status) do
    ted
    |> Ted.changeset(%{status: status})
    |> Repo.update()
  end
end
