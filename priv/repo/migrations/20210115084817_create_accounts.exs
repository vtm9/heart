defmodule H.Repo.Migrations.CreateAccounts do
  use Ecto.Migration

  def change do
    create table(:accounts) do
      add :email, :string
      add :encrypted_password, :string
      add :sign_in_count, :integer
      add :last_sign_in_at, :naive_datetime
      add :confirmation_token, :string
      add :confirmed_at, :naive_datetime
      add :confirmation_sent_at, :naive_datetime
      add :name, :string
      add :organization_id, :integer
      add :locale, :string

      timestamps()
    end

  end
end
