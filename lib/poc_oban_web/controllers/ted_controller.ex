defmodule PocObanWeb.TedController do
  use PocObanWeb, :controller

  alias PocObanWeb.TedView
  require Logger

  def show(conn, %{
        "protocol_reference" => protocol_reference,
        "dataMovimento" => data_movimento,
        "listaProtocolos" => lista_procotolos
      }) do
    Logger.info("Creating account for individual in client #{protocol_reference}...")

    IO.inspect(lista_procotolos)
    # response_teste = protocol |> response() |> IO.inspect()
    # conn
    # |> put_status(:created)
    # |> put_view(TedView)
    # |> render("account_holder.json",
    #   account_holder: response(id)
    # )
  end

  defp response(protocol) do
    %{
      listaProtocolos: %{
        protocolo: [
          %{
            numeroProtocoloSolicitacao: protocol,
            codigoStatusProtocoloSolicitacao: 3,
            statusProtocoloSolicitacao: "Confirmado pela Tesouraria",
            dataHoraAprovacao: "2021-08-25T19:54:00.000+0000",
            dataHoraEfetivacao: "2021-08-25T19:53:47.340+0000",
            entidadeLiquidante: 31,
            tipoOperacao: "D",
            valor: 8297.25
          }
        ]
      }
    }
  end
end
