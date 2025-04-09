defmodule Neko.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :username, :string
    field :email, :string
    field :password, :string, virtual: true
    has_many(:chan, Neko.Chans.Chan)
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :email, :password])
    |> cast_assoc(:chan, required: false)  # <- обрабатываем вложенные каналы
    |> validate_required([:username, :email, :password])
    |> validate_length(:password, min: 8)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
    |> unique_constraint(:username)
  end
end
