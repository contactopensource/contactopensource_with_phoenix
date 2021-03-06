defmodule Contact.Repo.Migrations.CreateGeoCenters do
  use Ecto.Migration

  def change do
    create table(:geo_centers, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :created_at_timestamp_utc, :naive_datetime
      add :created_at_clock_count, :integer
      add :updated_at_timestamp_utc, :naive_datetime
      add :updated_at_clock_count, :integer
      add :updated_by_uri, :text
      add :tenant_uri, :text
      add :type_uri, :text
      add :state_uri, :text
      add :center_as_geo_point_id, :uuid
      add :spread_as_meters, :decimal

      timestamps()
    end

  end
end
