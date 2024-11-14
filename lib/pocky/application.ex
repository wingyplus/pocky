defmodule Pocky.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      PockyWeb.Telemetry,
      Pocky.Repo,
      {DNSCluster, query: Application.get_env(:pocky, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Pocky.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Pocky.Finch},
      # Start a worker by calling: Pocky.Worker.start_link(arg)
      # {Pocky.Worker, arg},
      # Start to serve requests, typically the last entry
      PockyWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Pocky.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PockyWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
