defmodule Neko.Data.Login do
  alias Neko.{Repo, Users.User}

  def login(email, password) do
    case Repo.get_by(User, email: email) do
      nil ->
        {:error, "User not found"}

      user ->
        if Bcrypt.verify_pass(password, user.password) do
          {:ok, user}
        else
          {:error, "Wrong password"}
        end
    end
  end
end
