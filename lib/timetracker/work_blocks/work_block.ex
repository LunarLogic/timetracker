defmodule Timetracker.WorkBlocks.WorkBlock do
  use Ecto.Schema
  import Ecto.Changeset

  schema "work_blocks" do
    field :finished_at, :utc_datetime
    field :started_at, :utc_datetime

    timestamps()
  end
end
