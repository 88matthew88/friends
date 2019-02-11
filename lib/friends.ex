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

    def import_from_csv(friends\lib\friends\file.csv) do
      Agent.start_link(fn -> %{first_name: %HashDict{}, last_name: [], age: []} end, Title: __MODULE__)

      File.stream!(Path.expand(friends\lib\friends\file.csv))
      |> CSV.decode(separator: ?;, headers: true)
      |> Stream.each(fn row -> _process_csv_row(row, agent)
      end )
      |> Stream.run
    end

    defp _process_csv_row(row, agent) do
      Enum.each(fn
      {:ok, [first_name, last_name, age]} ->
      Person.changeset(%Person{},
      %{firstname: first_name,
      lastname: last_name,
      age: age}
      )
      |>Friends.Repo.insert
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
