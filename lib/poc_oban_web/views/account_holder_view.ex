defmodule PocObanWeb.AccountHolderView do
  use PocObanWeb, :view

  def render("account_holder.json", %{
        account_holder: account_holder
      }) do
    %{
      id: account_holder.id,
      document: account_holder.document,
      first_name: account_holder.first_name,
      last_name: account_holder.last_name,
      mother_name: account_holder.mother_name,
      email: account_holder.email,
      phone_number: account_holder.phone_number,
      birth_date: account_holder.birth_date,
      inserted_at: account_holder.inserted_at,
      updated_at: account_holder.updated_at,
      treasury_account_holder_id: account_holder.treasury_account_holder_id,
      kyc_status: account_holder.kyc_status,
      addresses: render("addresses.json", addresses: account_holder.addresses)
    }
  end

  def render("addresses.json", %{addresses: addresses}) do
    IO.inspect("TESTANDO ASD ASDAOD ASDO ASD #{inspect(addresses)}")
    render_many(addresses, __MODULE__, "address.json")
  end

  def render("address.json", %{account_holder: address}) do
    IO.inspect("TESTANDO ASD ASDAOD ASDO ASD222222222222 #{inspect(address)}")

    %{
      postal_code: address.postal_code,
      street: address.street,
      neighborhood: address.neighborhood,
      number: address.number,
      complement: address.complement,
      city: address.city,
      state: address.state,
      type: address.type,
      inserted_at: address.inserted_at,
      updated_at: address.updated_at
    }
  end
end
