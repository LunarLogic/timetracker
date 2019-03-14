defmodule TimetrackerWeb.WorkBlockController do
  use TimetrackerWeb, :controller

  def index(conn, _params) do
    work_blocks = Timetracker.WorkBlocks.list_work_blocks()
    render(conn, "index.html", work_blocks: work_blocks)
  end

  def start(conn, _params) do
    Timetracker.WorkBlocks.start()
    redirect(conn, to: Routes.work_block_path(conn, :index))
  end

  def finish(conn, %{"id" => id}) do
    Timetracker.WorkBlocks.finish(id)
    redirect(conn, to: Routes.work_block_path(conn, :index))
  end
end
