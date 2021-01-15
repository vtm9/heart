defmodule H.Schemas.Account do
  use Ecto.Schema
  import Ecto.Changeset

  schema "accounts" do
    field :confirmation_sent_at, :naive_datetime
    field :confirmation_token, :string
    field :confirmed_at, :naive_datetime
    field :email, :string
    field :encrypted_password, :string
    field :last_sign_in_at, :naive_datetime
    field :locale, :string
    field :name, :string
    field :organization_id, :integer
    field :sign_in_count, :integer

    timestamps()
  end

  @doc false
  def changeset(account, attrs) do
    account
    |> cast(attrs, [
      :email,
      :encrypted_password,
      :sign_in_count,
      :last_sign_in_at,
      :confirmation_token,
      :confirmed_at,
      :confirmation_sent_at,
      :name,
      :organization_id,
      :locale
    ])
    |> validate_required([
      :email,
      :encrypted_password,
      :sign_in_count,
      :last_sign_in_at,
      :confirmation_token,
      :confirmed_at,
      :confirmation_sent_at,
      :name,
      :organization_id,
      :locale
    ])
  end
end
