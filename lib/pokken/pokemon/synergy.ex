defmodule Pokken.Pokemon.Synergy do
  use Ecto.Schema
  import Ecto.Changeset
  alias Pokken.Pokemon.Synergy


  schema "synergy" do
    field :duration, :integer
    field :gauge_size, :integer

    timestamps()
  end

  @doc false
  def changeset(%Synergy{} = synergy, attrs) do
    synergy
    |> cast(attrs, [:gauge_size, :duration])
    |> validate_required([:gauge_size, :duration])
  end
end
