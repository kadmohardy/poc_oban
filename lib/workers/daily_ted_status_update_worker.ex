defmodule PocOban.Workers.DailyTedStatusUpdateWorker do
  use Oban.Worker
  alias PocOban.Banking.Repositories.TedRepository

  @impl Oban.Worker
  def perform(%Oban.Job{args: %{"id" => id} = _ted}) do
    process(id)

    :ok
  end

  def process(id) do
    case TedRepository.get_ted_by_id(id) do
      nil -> :error
      ted -> ted |> TedRepository.update_ted_status("success")
    end
  end
end
