defmodule Neko.Service do
  def registerUser(user) do
    Neko.Repo.insert(user)
  end
end
