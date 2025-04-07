defmodule Neko.Service do
  def register(%Neko.Users.User{} = user) do
    hashed_user = %Neko.Users.User{
      user
      | password: Bcrypt.hash_pwd_salt(user.password)
    }

    Neko.Repo.insert(hashed_user)
  end
end
