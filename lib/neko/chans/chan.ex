defmodule Neko.Chans.Chan do
  use Ecto.Schema
  import Ecto.Changeset

  schema "chans" do
    field(:foots, :string)
    field(:description, :string)
    field(:archive_name, :string)
    belongs_to(:user, Neko.Users.User)

    timestamps()
  end

  def changeset(chan, attrs) do
    chan
    |> cast(attrs, [:foots, :description, :archive_name, :user_id])
    # Опционально: укажите обязательные поля
    |> validate_required([:foots, :archive_name])
  end
end
