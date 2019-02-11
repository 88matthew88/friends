defmodule Friends do
  @moduledoc """
  Documentation for Friends.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Friends.hello()
      :world

  """



        person = %Friends.Person{}

#        def read do
#          File.stream!("file.csv")
#          |> (CSV.decode!)
#          |> Enum.each(fn
#                  {:ok, [fname, lname, age]} ->
#                    Person.changeset(%Person{},
#                          %{Firstname: fname,
#                            Lastname: lname,
#                            age: age}
#                        )
#                    |>Friends.Repo.insert
#
#                      end
#          end

    def import_from_csv(csv_path) do
      Agent.start_link(fn -> %{departments: %HashDict{}, communes: []} end, name: __MODULE__)

      File.stream!(Path.expand(csv_path))
      |> CSV.decode(separator: ?;, headers: true)
      |> Stream.each(fn row ->
        _process_csv_row(row, agent)
      end )
      |> Stream.run
    end

    defp _process_csv_row(row, agent) do
      # TODO
    end

#end


    def results do
      row= Friends.Person |> Friends.Repo.all
      Enum.each( row, IO.puts row)

    end

  def hello do
    :world
  end
end
