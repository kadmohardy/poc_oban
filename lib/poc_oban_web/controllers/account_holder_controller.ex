defmodule PocObanWeb.AccountHolderController do
  use PocObanWeb, :controller

  alias PocObanWeb.AccountHolderView
  require Logger

  def show(conn, %{"id" => id}) do
    Logger.info("Creating account for individual in client #{id}...")

    conn
    |> put_status(:created)
    |> put_view(AccountHolderView)
    |> render("account_holder.json",
      account_holder: response(id)
    )
  end

  defp response(id) do
    %{
      addresses: [
        %{
          city: "Limoeiro do Norte",
          complement: nil,
          inserted_at: "2021-09-14T17:41:47",
          neighborhood: "Bom Nome",
          number: "1026",
          postal_code: "62930-000",
          state: "CE",
          street: "R. Tv. Maria do Carmo Amorim",
          type: nil,
          updated_at: "2021-09-14T17:41:47"
        }
      ],
      birth_date: nil,
      document: "49120328087",
      email: "testers2@swap.financial",
      first_name: "Teste Swap",
      id: id,
      inserted_at: "2021-09-14T17:41:47",
      kyc_status: "pending",
      last_name: "Teste Swap",
      mother_name: nil,
      phone_number: "551199999999",
      treasury_account_holder_id: "58d3d713-6b93-446b-a1ec-810abc03ccfe",
      updated_at: "2021-09-14T17:41:47"
    }
  end
end
