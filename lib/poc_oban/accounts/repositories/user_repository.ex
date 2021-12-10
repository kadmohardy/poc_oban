defmodule PocOban.Accounts.Repositories.UserRepository do
  @moduledoc """
  The Users context.
  """

  import Ecto.Query, warn: false
  alias PocOban.Repo
  alias PocOban.Accounts.Entities.User

  def list_users_from_last_day do
    from(u in User)
    |> Repo.all()
  end
end
