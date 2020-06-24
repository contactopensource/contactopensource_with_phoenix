defmodule Contact.Repo.Migrations.CreatePersons do
  use Ecto.Migration

  def change do
    create table(:persons, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :tenant_id, :uuid
      add :type_uri, :text
      add :type_text, :text
      add :state_uri, :text
      add :state_text, :text
      add :updated_at_timestamp_utc, :naive_datetime
      add :updated_at_clock_count, :integer
      add :updated_by_text, :text

      timestamps()
    end

  end
end
