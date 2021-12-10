defmodule PocObanWeb.TedView do
  use PocObanWeb, :view

  def render("ted.json", %{
        ted: ted
      }) do
    %{
      listaProtocolos: %{
        protocolo: [
          %{
            numeroProtocoloSolicitacao: "200596176",
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
