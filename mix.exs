defmodule Friends.MixProject do
  use Mix.Project

  def project do
    [
      app: :friends,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Friends.Application, []}

#      person = %Friends.Person{}

#      def read do
#        File.stream!("file.csv")
#        |> (CSV.decode!)
#        |>Stream.each(fn row -> _process_csv_row(row)
#      end)
#        Stream.run

#      end
    ]
  end

#  def results do
#    Friends.Person |> Friends.Repo.all |> Enum.each(row, IO.puts row)

#  end
  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
       {:ecto_sql, "~> 3.0"},
       {:postgrex, ">= 0.0.0"},
       {:csv, "~> 2.0.0"}
    ]
  end
end
