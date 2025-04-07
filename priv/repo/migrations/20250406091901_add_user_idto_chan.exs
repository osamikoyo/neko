defmodule Neko.Repo.Migrations.AddUserIdtoChan do
  use Ecto.Migration

  def change do
    alter table(:chans) do
      add :user_id, references(:users, on_delete: :delete_all), null: false
    end

    create index(:chans, [:user_id])
  end
end
