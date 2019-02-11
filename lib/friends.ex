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

        def read do
          File.stream!("file.csv")
          |> (CSV.decode!)
          |> Enum.each(fn
                  {:ok, [fname, lname, age]} ->
                    Person.changeset(%Person{},
                          %{Firstname: fname,
                            Lastname: lname,
                            age: age})
                    |>Repo.insert

        end   


        end



    def results do
      row= Friends.Person |> Friends.Repo.all
      Enum.each( row, IO.puts row)

    end

  def hello do
    :world
  end
end
