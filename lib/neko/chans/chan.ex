defmodule Neko.Chans.Chan do
  use Ecto.Schema

  schema "chans" do
    field(:foots, :string)
    field(:description, :string)
    field(:archive_name, :string)
    belongs_to(:user, Neko.Users.User)

    timestamps()
  end
end
