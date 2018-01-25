# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Pokken.Repo.insert!(%Pokken.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Pokken.Pokemon.Info
alias Pokken.Pokemon.Move
alias Pokken.Repo

%Info {
    name: "Siza",
    style: "Fighter",
    type: "Fire"
} |> Repo.insert!

%Move {
    block: "Test",
    category: "Test",
    damage: "Test",
    heigh: "Test",
    hit_duel: "Test",
    hit_field: "Test",
    impact: "Test",
    move_input: "Test",
    name: "Test",
    notes: "Test",
    phase: "Test",
    pokemon_id: 1,
    psp: "Test",
    type: "Test",
} |> Repo.insert!