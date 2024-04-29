defmodule ExIndexea.Records do
  import ExIndexea
  alias ExIndexea.Client

  def list(client, app, index, opts \\ %{}) do
    post("/records/#{app}/#{index}", client, opts)
  end
end
