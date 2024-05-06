defmodule ExIndexea.Config do
  @version Mix.Project.config[:version]

  def version(), do: @version

  [:access_token, :app]
  |> Enum.map(fn config ->
    def unquote(config)() do
      __MODULE__
      |> Application.get_env(unquote(config))
      |> Confex.Resolver.resolve!()
    end
  end)
end
