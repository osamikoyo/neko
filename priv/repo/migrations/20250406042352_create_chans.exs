defmodule Neko.Repo.Migrations.CreateChans do
  use Ecto.Migration

  def change do
    create table(:chans) do
      add :user, references(:users, on_delete: :delete_all), null: false
      add :foots, :integer
      add :description, :string

      timestamps()
    end
  end
end
