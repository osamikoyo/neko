defmodule Neko.Users.User do
  use Ecto.Schema

  schema "users" do
    
    field :username, :string
    field :email, :string
    field :password, :string
    field :foots, :integer

    belongs_to :chan, Neko.Chans.Chan

    timestamps()
  end
end
