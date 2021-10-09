defmodule Hello.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :description, :string
    field :title, :string
    field :done, :boolean, default: false
    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :description, :done])
    |> validate_required([:title])
  end

  # def list_tasks() do

  # end
end
