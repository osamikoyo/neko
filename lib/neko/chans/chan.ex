defmodule Neko.Chans.Chan do
  use Ecto.Schema

  schema "users" do
    field :username, :string
    field :email, :string
    field :password, :string
    field :foots, :integer

    timestamps()
  end

end
