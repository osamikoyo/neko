defmodule Neko.Service do
  alias Neko.Data.Register


  def login(email, password) do

  end

  def register(%Ecto.Changeset{} = changeset) do
    Register.register(changeset)
  end
end
