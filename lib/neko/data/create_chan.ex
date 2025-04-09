defmodule Neko.Data.CreateChan do
  alias Neko.{Repo, Users.User, Chans.Chan}

  def create_chan_for(user_id, chan_attrs) do
    case Repo.get(User, user_id) do
      nil ->
        {:error, "User not Found"}

      user ->
        %Chan{}
        |> Chan.changeset(chan_attrs)
        |> Ecto.Changeset.put_assoc(:user, user)
        |> Repo.insert()
    end
  end
end
