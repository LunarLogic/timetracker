defmodule Timetracker.Repo.Migrations.CreateWorkBlocks do
  use Ecto.Migration

  def change do
    create table(:work_blocks) do
      add :started_at, :utc_datetime, null: false
      add :finished_at, :utc_datetime

      timestamps()
    end

    create index(:work_blocks, [:started_at])
    create index(:work_blocks, [:finished_at])
  end
end
