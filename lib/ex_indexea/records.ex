defmodule ExIndexea.Records do
  import ExIndexea
  alias ExIndexea.Client

  @spec list(Client.t(), binary(), pos_integer(), map(), any) :: ExIndexea.response()
  def list(client, app, index, params \\ %{}, opts \\ %{}) do
    post("/records/#{app}/#{index}", client, params, opts)
  end

  @spec delete_by_query(Client.t(), binary(), pos_integer(), map(), any) :: ExIndexea.response()
  def delete_by_query(client, app, index, query, params \\ %{}, opts \\ %{}) do
    delete("/records/#{app}/#{index}/bulk", client, Map.merge(params, %{query: query}), opts)
  end
end
