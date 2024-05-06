defmodule ExIndexea.Records do
  import ExIndexea
  alias ExIndexea.Client

  @spec list(Client.t(), binary(), pos_integer(), map(), Keyword.t) :: ExIndexea.response()
  def list(client, app, index, params \\ %{}, opts \\ %{}) do
    post("/records/#{app}/#{index}", client, params, opts)
  end
end
