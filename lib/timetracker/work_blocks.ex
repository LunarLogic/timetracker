defmodule Timetracker.WorkBlocks do
  import Ecto.Query, warn: false
  alias Timetracker.Repo

  alias Timetracker.WorkBlocks.WorkBlock

  def list_work_blocks do
    Repo.all(WorkBlock)
  end

  def start() do
    started_at = DateTime.utc_now() |> DateTime.truncate(:second)
    Repo.insert!(%WorkBlock{started_at: started_at})
  end
end
