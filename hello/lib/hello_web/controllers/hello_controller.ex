defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  alias Hello.Task
  alias Hello.Repo

  # shows a list of task
  def index(conn, _params) do
    # tasks = Task.list_tasks()
    tasks = Repo.all(Task)
    # tasks = []
    render(conn, "index.html", tasks: tasks)
  end

  def show(conn, _param) do
  end

  # creates a form /new to create a task
  def new(conn, _params) do

  end

  # mehtod to accept post task
  def create(conn, _params) do
  end


end
