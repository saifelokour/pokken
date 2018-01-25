defmodule Pokken.Pokemon do
  @moduledoc """
  The Pokemon context.
  """

  import Ecto.Query, warn: false
  alias Pokken.Repo

  alias Pokken.Pokemon.Info

  @doc """
  Returns the list of info.

  ## Examples

      iex> list_info()
      [%Info{}, ...]

  """
  def list_info do
    Repo.all(Info)
  end

  @doc """
  Gets a single info.

  Raises `Ecto.NoResultsError` if the Info does not exist.

  ## Examples

      iex> get_info!(123)
      %Info{}

      iex> get_info!(456)
      ** (Ecto.NoResultsError)

  """
  def get_info!(id), do: Repo.get!(Info, id)

  @doc """
  Creates a info.

  ## Examples

      iex> create_info(%{field: value})
      {:ok, %Info{}}

      iex> create_info(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_info(attrs \\ %{}) do
    %Info{}
    |> Info.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a info.

  ## Examples

      iex> update_info(info, %{field: new_value})
      {:ok, %Info{}}

      iex> update_info(info, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_info(%Info{} = info, attrs) do
    info
    |> Info.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Info.

  ## Examples

      iex> delete_info(info)
      {:ok, %Info{}}

      iex> delete_info(info)
      {:error, %Ecto.Changeset{}}

  """
  def delete_info(%Info{} = info) do
    Repo.delete(info)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking info changes.

  ## Examples

      iex> change_info(info)
      %Ecto.Changeset{source: %Info{}}

  """
  def change_info(%Info{} = info) do
    Info.changeset(info, %{})
  end

  alias Pokken.Pokemon.Synergy

  @doc """
  Returns the list of synergy.

  ## Examples

      iex> list_synergy()
      [%Synergy{}, ...]

  """
  def list_synergy do
    Repo.all(Synergy)
  end

  @doc """
  Gets a single synergy.

  Raises `Ecto.NoResultsError` if the Synergy does not exist.

  ## Examples

      iex> get_synergy!(123)
      %Synergy{}

      iex> get_synergy!(456)
      ** (Ecto.NoResultsError)

  """
  def get_synergy!(id), do: Repo.get!(Synergy, id)

  @doc """
  Creates a synergy.

  ## Examples

      iex> create_synergy(%{field: value})
      {:ok, %Synergy{}}

      iex> create_synergy(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_synergy(attrs \\ %{}) do
    %Synergy{}
    |> Synergy.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a synergy.

  ## Examples

      iex> update_synergy(synergy, %{field: new_value})
      {:ok, %Synergy{}}

      iex> update_synergy(synergy, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_synergy(%Synergy{} = synergy, attrs) do
    synergy
    |> Synergy.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Synergy.

  ## Examples

      iex> delete_synergy(synergy)
      {:ok, %Synergy{}}

      iex> delete_synergy(synergy)
      {:error, %Ecto.Changeset{}}

  """
  def delete_synergy(%Synergy{} = synergy) do
    Repo.delete(synergy)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking synergy changes.

  ## Examples

      iex> change_synergy(synergy)
      %Ecto.Changeset{source: %Synergy{}}

  """
  def change_synergy(%Synergy{} = synergy) do
    Synergy.changeset(synergy, %{})
  end

  alias Pokken.Pokemon.Move

  @doc """
  Returns the list of moves.

  ## Examples

      iex> list_moves()
      [%Move{}, ...]

  """
  def list_moves do
    Repo.all(Move)
  end

  @doc """
  Gets a single move.

  Raises `Ecto.NoResultsError` if the Move does not exist.

  ## Examples

      iex> get_move!(123)
      %Move{}

      iex> get_move!(456)
      ** (Ecto.NoResultsError)

  """
  def get_move!(id), do: Repo.get!(Move, id)

  @doc """
  Creates a move.

  ## Examples

      iex> create_move(%{field: value})
      {:ok, %Move{}}

      iex> create_move(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_move(attrs \\ %{}) do
    %Move{}
    |> Move.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a move.

  ## Examples

      iex> update_move(move, %{field: new_value})
      {:ok, %Move{}}

      iex> update_move(move, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_move(%Move{} = move, attrs) do
    move
    |> Move.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Move.

  ## Examples

      iex> delete_move(move)
      {:ok, %Move{}}

      iex> delete_move(move)
      {:error, %Ecto.Changeset{}}

  """
  def delete_move(%Move{} = move) do
    Repo.delete(move)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking move changes.

  ## Examples

      iex> change_move(move)
      %Ecto.Changeset{source: %Move{}}

  """
  def change_move(%Move{} = move) do
    Move.changeset(move, %{})
  end

  alias Pokken.Pokemon.SupportPokemon

  @doc """
  Returns the list of support_pokemon.

  ## Examples

      iex> list_support_pokemon()
      [%SupportPokemon{}, ...]

  """
  def list_support_pokemon do
    Repo.all(SupportPokemon)
  end

  @doc """
  Gets a single support_pokemon.

  Raises `Ecto.NoResultsError` if the Support pokemon does not exist.

  ## Examples

      iex> get_support_pokemon!(123)
      %SupportPokemon{}

      iex> get_support_pokemon!(456)
      ** (Ecto.NoResultsError)

  """
  def get_support_pokemon!(id), do: Repo.get!(SupportPokemon, id)

  @doc """
  Creates a support_pokemon.

  ## Examples

      iex> create_support_pokemon(%{field: value})
      {:ok, %SupportPokemon{}}

      iex> create_support_pokemon(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_support_pokemon(attrs \\ %{}) do
    %SupportPokemon{}
    |> SupportPokemon.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a support_pokemon.

  ## Examples

      iex> update_support_pokemon(support_pokemon, %{field: new_value})
      {:ok, %SupportPokemon{}}

      iex> update_support_pokemon(support_pokemon, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_support_pokemon(%SupportPokemon{} = support_pokemon, attrs) do
    support_pokemon
    |> SupportPokemon.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a SupportPokemon.

  ## Examples

      iex> delete_support_pokemon(support_pokemon)
      {:ok, %SupportPokemon{}}

      iex> delete_support_pokemon(support_pokemon)
      {:error, %Ecto.Changeset{}}

  """
  def delete_support_pokemon(%SupportPokemon{} = support_pokemon) do
    Repo.delete(support_pokemon)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking support_pokemon changes.

  ## Examples

      iex> change_support_pokemon(support_pokemon)
      %Ecto.Changeset{source: %SupportPokemon{}}

  """
  def change_support_pokemon(%SupportPokemon{} = support_pokemon) do
    SupportPokemon.changeset(support_pokemon, %{})
  end
end
