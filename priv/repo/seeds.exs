# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PocOban.Repo.insert!(%PocOban.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias PocOban.Accounts.Entities.User
alias PocOban.Banking.Entities.Ted
alias PocOban.Repo

# Enum.map(1..5000, fn i ->
#   %User{name: "user#{i}", email: "user#{i}@email.com"}
#   |> Repo.insert!()
# end)

# Enum.map(1..5000, fn i ->
#   %Ted{amount: i}
#   |> Repo.insert!()
# end)
