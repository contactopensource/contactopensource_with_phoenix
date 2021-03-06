defmodule CommissaryPhoenix.Repo.Migrations.CreateExtensionTableChangeNotification do
  @moduledoc "Create extension \"tcn\" so Postgres can do table change notification"
  use Ecto.Migration

  def change do
    execute(
      "CREATE EXTENSION IF NOT EXISTS \"tcn\"",
      "DROP EXTENSION IF EXISTS \"tcn\""
    )
  end
end
