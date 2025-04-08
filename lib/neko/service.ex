defmodule Neko.Service do
  alias Neko.Data.{Register,Login}

  def register(%Ecto.Changeset{} = changeset) do
    Register.register(changeset)
  end

  def login(email, password) do
    Login.login(email, password)
  end
end
