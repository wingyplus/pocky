defmodule Pocky do
  @moduledoc """
  A Dagger module for operate Pocky.
  """

  use Dagger.Mod.Object, name: "Pocky"

  @doc """
  Service dependencies for Pocky. 
  """
  defn service() :: Dagger.Service.t() do
    dag()
    |> Dagger.Client.container()
    |> Dagger.Container.from("postgres:17")
    |> Dagger.Container.with_env_variable("POSTGRES_USER", "postgres")
    |> Dagger.Container.with_env_variable("POSTGRES_PASSWORD", "postgres")
    |> Dagger.Container.with_exposed_port(5432)
    |> Dagger.Container.as_service()
  end
end
