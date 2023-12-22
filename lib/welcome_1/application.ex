defmodule Welcome1.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Welcome1.Repo,
      # Start the Telemetry supervisor
      Welcome1Web.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Welcome1.PubSub},
      # Start the Endpoint (http/https)
      Welcome1Web.Endpoint
      # Start a worker by calling: Welcome1.Worker.start_link(arg)
      # {Welcome1.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Welcome1.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Welcome1Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
