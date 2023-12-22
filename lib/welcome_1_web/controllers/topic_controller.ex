defmodule Welcome1Web.TopicController do
use Welcome1Web,:controller
alias Welcome1Web.Topic
  def new(conn,_params) do
  struct = %Topic{}
  params = %{}
  changeset = Topic.changeset(struct , params)
  render conn, "new.html" , changeset: changeset
  end
  def create(conn, %{"topics"=>topic}) do
    changeset = Topic.changeset(%Topic{},topic)
    case Repo.insert(changeset) do
    {:ok,post} ->IO.inspect(post)
    {:error,changeset} ->IO.inspect(changeset)
    end
  end
end
