defmodule Pokken.Pokemon do
  @moduledoc """
  The Pokemon context.
  """

  import Ecto.Query, warn: false
  alias Pokken.Repo

  alias Pokken.Pokemon.Profile

  @doc """
  Returns the list of profile.

  ## Examples

      iex> list_profiles()
      [%Profile{}, ...]

  """
  def list_profiles do
    Repo.all(Profile)
  end

  @doc """
  Gets a single profile.

  Raises `Ecto.NoResultsError` if the profile does not exist.

  ## Examples

      iex> get_profile!(123)
      %Profile{}

      iex> get_profile!(456)
      ** (Ecto.NoResultsError)

  """
  def get_profile!(id), do: Repo.get!(Profile, id)

  @doc """
  Creates a profile.

  ## Examples

      iex> create_profile(%{field: value})
      {:ok, %Profile{}}

      iex> create_profile(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_profile(attrs \\ %{}) do
    %Profile{}
    |> Profile.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a profile.

  ## Examples

      iex> update_profile(profile, %{field: new_value})
      {:ok, %profile{}}

      iex> update_profile(profile, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_profile(%Profile{} = profile, attrs) do
    profile
    |> profile.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a profile.

  ## Examples

      iex> delete_profile(profile)
      {:ok, %profile{}}

      iex> delete_profile(profile)
      {:error, %Ecto.Changeset{}}

  """
  def delete_profile(%Profile{} = profile) do
    Repo.delete(profile)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking profile changes.

  ## Examples

      iex> change_profile(profile)
      %Ecto.Changeset{source: %profile{}}

  """
  def change_profile(%Profile{} = profile) do
    Profile.changeset(profile, %{})
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
