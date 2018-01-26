defmodule Pokken.PokemonTest do
  use Pokken.DataCase

  alias Pokken.Pokemon

  describe "info" do
    alias Pokken.Pokemon.Info

    @valid_attrs %{name: "some name", style: "some style", type: "some type"}
    @update_attrs %{name: "some updated name", style: "some updated style", type: "some updated type"}
    @invalid_attrs %{name: nil, style: nil, type: nil}

    def info_fixture(attrs \\ %{}) do
      {:ok, info} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Pokemon.create_info()

      info
    end

    test "list_info/0 returns all info" do
      info = info_fixture()
      assert Pokemon.list_info() == [info]
    end

    test "get_info!/1 returns the info with given id" do
      info = info_fixture()
      assert Pokemon.get_info!(info.id) == info
    end

    test "create_info/1 with valid data creates a info" do
      assert {:ok, %Info{} = info} = Pokemon.create_info(@valid_attrs)
      assert info.name == "some name"
      assert info.style == "some style"
      assert info.type == "some type"
    end

    test "create_info/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Pokemon.create_info(@invalid_attrs)
    end

    test "update_info/2 with valid data updates the info" do
      info = info_fixture()
      assert {:ok, info} = Pokemon.update_info(info, @update_attrs)
      assert %Info{} = info
      assert info.name == "some updated name"
      assert info.style == "some updated style"
      assert info.type == "some updated type"
    end

    test "update_info/2 with invalid data returns error changeset" do
      info = info_fixture()
      assert {:error, %Ecto.Changeset{}} = Pokemon.update_info(info, @invalid_attrs)
      assert info == Pokemon.get_info!(info.id)
    end

    test "delete_info/1 deletes the info" do
      info = info_fixture()
      assert {:ok, %Info{}} = Pokemon.delete_info(info)
      assert_raise Ecto.NoResultsError, fn -> Pokemon.get_info!(info.id) end
    end

    test "change_info/1 returns a info changeset" do
      info = info_fixture()
      assert %Ecto.Changeset{} = Pokemon.change_info(info)
    end
  end

  describe "synergy" do
    alias Pokken.Pokemon.Synergy

    @valid_attrs %{duration: 42, gauge_size: 42}
    @update_attrs %{duration: 43, gauge_size: 43}
    @invalid_attrs %{duration: nil, gauge_size: nil}

    def synergy_fixture(attrs \\ %{}) do
      {:ok, synergy} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Pokemon.create_synergy()

      synergy
    end

    test "list_synergy/0 returns all synergy" do
      synergy = synergy_fixture()
      assert Pokemon.list_synergy() == [synergy]
    end

    test "get_synergy!/1 returns the synergy with given id" do
      synergy = synergy_fixture()
      assert Pokemon.get_synergy!(synergy.id) == synergy
    end

    test "create_synergy/1 with valid data creates a synergy" do
      assert {:ok, %Synergy{} = synergy} = Pokemon.create_synergy(@valid_attrs)
      assert synergy.duration == 42
      assert synergy.gauge_size == 42
    end

    test "create_synergy/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Pokemon.create_synergy(@invalid_attrs)
    end

    test "update_synergy/2 with valid data updates the synergy" do
      synergy = synergy_fixture()
      assert {:ok, synergy} = Pokemon.update_synergy(synergy, @update_attrs)
      assert %Synergy{} = synergy
      assert synergy.duration == 43
      assert synergy.gauge_size == 43
    end

    test "update_synergy/2 with invalid data returns error changeset" do
      synergy = synergy_fixture()
      assert {:error, %Ecto.Changeset{}} = Pokemon.update_synergy(synergy, @invalid_attrs)
      assert synergy == Pokemon.get_synergy!(synergy.id)
    end

    test "delete_synergy/1 deletes the synergy" do
      synergy = synergy_fixture()
      assert {:ok, %Synergy{}} = Pokemon.delete_synergy(synergy)
      assert_raise Ecto.NoResultsError, fn -> Pokemon.get_synergy!(synergy.id) end
    end

    test "change_synergy/1 returns a synergy changeset" do
      synergy = synergy_fixture()
      assert %Ecto.Changeset{} = Pokemon.change_synergy(synergy)
    end
  end

  describe "moves" do
    alias Pokken.Pokemon.Move

    @valid_attrs %{block: "some block", category: "some category", damage: "some damage", heigh: "some heigh", hit_duel: "some hit_duel", hit_field: "some hit_field", impact: "some impact", move_input: "some move_input", name: "some name", notes: "some notes", phase: "some phase", pokemon_id: 42, psp: "some psp", type: "some type"}
    @update_attrs %{block: "some updated block", category: "some updated category", damage: "some updated damage", heigh: "some updated heigh", hit_duel: "some updated hit_duel", hit_field: "some updated hit_field", impact: "some updated impact", move_input: "some updated move_input", name: "some updated name", notes: "some updated notes", phase: "some updated phase", pokemon_id: 43, psp: "some updated psp", type: "some updated type"}
    @invalid_attrs %{block: nil, category: nil, damage: nil, heigh: nil, hit_duel: nil, hit_field: nil, impact: nil, move_input: nil, name: nil, notes: nil, phase: nil, pokemon_id: nil, psp: nil, type: nil}

    def move_fixture(attrs \\ %{}) do
      {:ok, move} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Pokemon.create_move()

      move
    end

    test "list_moves/0 returns all moves" do
      move = move_fixture()
      assert Pokemon.list_moves() == [move]
    end

    test "get_move!/1 returns the move with given id" do
      move = move_fixture()
      assert Pokemon.get_move!(move.id) == move
    end

    test "create_move/1 with valid data creates a move" do
      assert {:ok, %Move{} = move} = Pokemon.create_move(@valid_attrs)
      assert move.block == "some block"
      assert move.category == "some category"
      assert move.damage == "some damage"
      assert move.heigh == "some heigh"
      assert move.hit_duel == "some hit_duel"
      assert move.hit_field == "some hit_field"
      assert move.impact == "some impact"
      assert move.move_input == "some move_input"
      assert move.name == "some name"
      assert move.notes == "some notes"
      assert move.phase == "some phase"
      assert move.pokemon_id == 42
      assert move.psp == "some psp"
      assert move.type == "some type"
    end

    test "create_move/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Pokemon.create_move(@invalid_attrs)
    end

    test "update_move/2 with valid data updates the move" do
      move = move_fixture()
      assert {:ok, move} = Pokemon.update_move(move, @update_attrs)
      assert %Move{} = move
      assert move.block == "some updated block"
      assert move.category == "some updated category"
      assert move.damage == "some updated damage"
      assert move.heigh == "some updated heigh"
      assert move.hit_duel == "some updated hit_duel"
      assert move.hit_field == "some updated hit_field"
      assert move.impact == "some updated impact"
      assert move.move_input == "some updated move_input"
      assert move.name == "some updated name"
      assert move.notes == "some updated notes"
      assert move.phase == "some updated phase"
      assert move.pokemon_id == 43
      assert move.psp == "some updated psp"
      assert move.type == "some updated type"
    end

    test "update_move/2 with invalid data returns error changeset" do
      move = move_fixture()
      assert {:error, %Ecto.Changeset{}} = Pokemon.update_move(move, @invalid_attrs)
      assert move == Pokemon.get_move!(move.id)
    end

    test "delete_move/1 deletes the move" do
      move = move_fixture()
      assert {:ok, %Move{}} = Pokemon.delete_move(move)
      assert_raise Ecto.NoResultsError, fn -> Pokemon.get_move!(move.id) end
    end

    test "change_move/1 returns a move changeset" do
      move = move_fixture()
      assert %Ecto.Changeset{} = Pokemon.change_move(move)
    end
  end

  describe "support_pokemon" do
    alias Pokken.Pokemon.SupportPokemon

    @valid_attrs %{buff: "some buff", damage: "some damage", debuff: "some debuff", description: "some description", impact: "some impact", pair_id: 42, recovery: "some recovery", type: "some type"}
    @update_attrs %{buff: "some updated buff", damage: "some updated damage", debuff: "some updated debuff", description: "some updated description", impact: "some updated impact", pair_id: 43, recovery: "some updated recovery", type: "some updated type"}
    @invalid_attrs %{buff: nil, damage: nil, debuff: nil, description: nil, impact: nil, pair_id: nil, recovery: nil, type: nil}

    def support_pokemon_fixture(attrs \\ %{}) do
      {:ok, support_pokemon} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Pokemon.create_support_pokemon()

      support_pokemon
    end

    test "list_support_pokemon/0 returns all support_pokemon" do
      support_pokemon = support_pokemon_fixture()
      assert Pokemon.list_support_pokemon() == [support_pokemon]
    end

    test "get_support_pokemon!/1 returns the support_pokemon with given id" do
      support_pokemon = support_pokemon_fixture()
      assert Pokemon.get_support_pokemon!(support_pokemon.id) == support_pokemon
    end

    test "create_support_pokemon/1 with valid data creates a support_pokemon" do
      assert {:ok, %SupportPokemon{} = support_pokemon} = Pokemon.create_support_pokemon(@valid_attrs)
      assert support_pokemon.buff == "some buff"
      assert support_pokemon.damage == "some damage"
      assert support_pokemon.debuff == "some debuff"
      assert support_pokemon.description == "some description"
      assert support_pokemon.impact == "some impact"
      assert support_pokemon.pair_id == 42
      assert support_pokemon.recovery == "some recovery"
      assert support_pokemon.type == "some type"
    end

    test "create_support_pokemon/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Pokemon.create_support_pokemon(@invalid_attrs)
    end

    test "update_support_pokemon/2 with valid data updates the support_pokemon" do
      support_pokemon = support_pokemon_fixture()
      assert {:ok, support_pokemon} = Pokemon.update_support_pokemon(support_pokemon, @update_attrs)
      assert %SupportPokemon{} = support_pokemon
      assert support_pokemon.buff == "some updated buff"
      assert support_pokemon.damage == "some updated damage"
      assert support_pokemon.debuff == "some updated debuff"
      assert support_pokemon.description == "some updated description"
      assert support_pokemon.impact == "some updated impact"
      assert support_pokemon.pair_id == 43
      assert support_pokemon.recovery == "some updated recovery"
      assert support_pokemon.type == "some updated type"
    end

    test "update_support_pokemon/2 with invalid data returns error changeset" do
      support_pokemon = support_pokemon_fixture()
      assert {:error, %Ecto.Changeset{}} = Pokemon.update_support_pokemon(support_pokemon, @invalid_attrs)
      assert support_pokemon == Pokemon.get_support_pokemon!(support_pokemon.id)
    end

    test "delete_support_pokemon/1 deletes the support_pokemon" do
      support_pokemon = support_pokemon_fixture()
      assert {:ok, %SupportPokemon{}} = Pokemon.delete_support_pokemon(support_pokemon)
      assert_raise Ecto.NoResultsError, fn -> Pokemon.get_support_pokemon!(support_pokemon.id) end
    end

    test "change_support_pokemon/1 returns a support_pokemon changeset" do
      support_pokemon = support_pokemon_fixture()
      assert %Ecto.Changeset{} = Pokemon.change_support_pokemon(support_pokemon)
    end
  end
end
