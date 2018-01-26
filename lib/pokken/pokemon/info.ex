defmodule Pokken.Pokemon.Info do
  use Ecto.Schema
  import Ecto.Changeset
  alias Pokken.Pokemon.Info


  schema "info" do
    field :name, :string
    field :style, :string
    field :type, :string
    has_many :moves, Pokken.Pokemon.Move, foreign_key: :pokemon_id

    timestamps()
  end

  @doc false
  def changeset(%Info{} = info, attrs) do
    info
    |> cast(attrs, [:name, :type, :style])
    |> validate_required([:name, :type, :style])
  end
end
