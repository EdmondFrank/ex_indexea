defmodule ExIndexea.Queries do
  import ExIndexea
  alias ExIndexea.Client

  @spec search_query(Client.t(), binary(), pos_integer(), map(), any) :: ExIndexea.response()
  def search_query(client, app, query, params \\ %{}, opts \\ []) do
    get("/queries/#{app}/search", client, Map.merge(params, %{query: query}), opts)
  end
end
