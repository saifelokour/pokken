defmodule Pokken.Pokemon.Profile do
  use Ecto.Schema
  import Ecto.Changeset
  alias Pokken.Pokemon.Profile


  schema "profiles" do
    field :name, :string
    field :style, :string
    field :type, :string
    field :synergy_duration, :integer
    field :synergy_gauge_size, :integer
    has_many :moves, Pokken.Pokemon.Move, foreign_key: :pokemon_id

    timestamps()
  end

  @doc false
  def changeset(%Profile{} = profile, attrs) do
    profile
    |> cast(attrs, [:name, :type, :style, :synergy_durationm, :synergy_gauge_size])
    |> validate_required([:name, :type, :style, :synergy_durationm, :synergy_gauge_size])
  end
end
