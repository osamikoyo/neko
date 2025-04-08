defmodule Neko.Data.Register do
  alias Neko.Repo

  def register(%Ecto.Changeset{} = changeset) do
    changeset
    |> hash_password()
    |> Repo.insert()
  end

  defp hash_password(%Ecto.Changeset{valid?: true, changes: %{password: password}} = changeset) do
    Ecto.Changeset.change(changeset, password_hash: Bcrypt.hash_pwd_salt(password))
  end
  defp hash_password(changeset), do: changeset
end
