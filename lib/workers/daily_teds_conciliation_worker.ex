defmodule PocOban.Workers.DailyTedsConciliationWorker do
  use Oban.Worker
  alias PocOban.Banking.Repositories.TedRepository
  alias PocOban.Workers.DailyTedStatusUpdateWorker

  @impl Oban.Worker
  def perform(_job) do
    IO.puts("Olá Job disparou")
    process()
    IO.puts("________________________FINALIZADO___________________")

    :ok
  end

  def process do
    TedRepository.list_teds_by_day()
    |> Enum.map(fn item ->
      %{"id" => item.id}
      |> DailyTedStatusUpdateWorker.new()
      |> Oban.insert()
    end)
  end
end
