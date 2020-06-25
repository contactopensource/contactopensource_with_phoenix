defmodule ContactWeb.ColorThemeControllerTest do
  use ContactWeb.ConnCase

  alias Contact.Qualia

  @create_attrs %{caution_color_id: "7488a646-e31f-11e4-aace-600308960662", danger_color_id: "7488a646-e31f-11e4-aace-600308960662", dark_color_id: "7488a646-e31f-11e4-aace-600308960662", failure_color_id: "7488a646-e31f-11e4-aace-600308960662", light_color_id: "7488a646-e31f-11e4-aace-600308960662", primary_color_id: "7488a646-e31f-11e4-aace-600308960662", rag_status_a_color_id: "7488a646-e31f-11e4-aace-600308960662", rag_status_g_color_id: "7488a646-e31f-11e4-aace-600308960662", rag_status_r_color_id: "7488a646-e31f-11e4-aace-600308960662", safety_color_id: "7488a646-e31f-11e4-aace-600308960662", secondary_color_id: "7488a646-e31f-11e4-aace-600308960662", state_uri: "some state_uri", success_color_id: "7488a646-e31f-11e4-aace-600308960662", tenant_uri: "some tenant_uri", tertiary_color_id: "7488a646-e31f-11e4-aace-600308960662", type_uri: "some type_uri", updated_at_clock_count: 42, updated_at_timestamp_utc: ~N[2010-04-17 14:00:00], updated_by_uri: "some updated_by_uri", warning_color_id: "7488a646-e31f-11e4-aace-600308960662"}
  @update_attrs %{caution_color_id: "7488a646-e31f-11e4-aace-600308960668", danger_color_id: "7488a646-e31f-11e4-aace-600308960668", dark_color_id: "7488a646-e31f-11e4-aace-600308960668", failure_color_id: "7488a646-e31f-11e4-aace-600308960668", light_color_id: "7488a646-e31f-11e4-aace-600308960668", primary_color_id: "7488a646-e31f-11e4-aace-600308960668", rag_status_a_color_id: "7488a646-e31f-11e4-aace-600308960668", rag_status_g_color_id: "7488a646-e31f-11e4-aace-600308960668", rag_status_r_color_id: "7488a646-e31f-11e4-aace-600308960668", safety_color_id: "7488a646-e31f-11e4-aace-600308960668", secondary_color_id: "7488a646-e31f-11e4-aace-600308960668", state_uri: "some updated state_uri", success_color_id: "7488a646-e31f-11e4-aace-600308960668", tenant_uri: "some updated tenant_uri", tertiary_color_id: "7488a646-e31f-11e4-aace-600308960668", type_uri: "some updated type_uri", updated_at_clock_count: 43, updated_at_timestamp_utc: ~N[2011-05-18 15:01:01], updated_by_uri: "some updated updated_by_uri", warning_color_id: "7488a646-e31f-11e4-aace-600308960668"}
  @invalid_attrs %{caution_color_id: nil, danger_color_id: nil, dark_color_id: nil, failure_color_id: nil, light_color_id: nil, primary_color_id: nil, rag_status_a_color_id: nil, rag_status_g_color_id: nil, rag_status_r_color_id: nil, safety_color_id: nil, secondary_color_id: nil, state_uri: nil, success_color_id: nil, tenant_uri: nil, tertiary_color_id: nil, type_uri: nil, updated_at_clock_count: nil, updated_at_timestamp_utc: nil, updated_by_uri: nil, warning_color_id: nil}

  def fixture(:color_theme) do
    {:ok, color_theme} = Qualia.create_color_theme(@create_attrs)
    color_theme
  end

  describe "index" do
    test "lists all color_themes", %{conn: conn} do
      conn = get(conn, Routes.color_theme_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Color themes"
    end
  end

  describe "new color_theme" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.color_theme_path(conn, :new))
      assert html_response(conn, 200) =~ "New Color theme"
    end
  end

  describe "create color_theme" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.color_theme_path(conn, :create), color_theme: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.color_theme_path(conn, :show, id)

      conn = get(conn, Routes.color_theme_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Color theme"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.color_theme_path(conn, :create), color_theme: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Color theme"
    end
  end

  describe "edit color_theme" do
    setup [:create_color_theme]

    test "renders form for editing chosen color_theme", %{conn: conn, color_theme: color_theme} do
      conn = get(conn, Routes.color_theme_path(conn, :edit, color_theme))
      assert html_response(conn, 200) =~ "Edit Color theme"
    end
  end

  describe "update color_theme" do
    setup [:create_color_theme]

    test "redirects when data is valid", %{conn: conn, color_theme: color_theme} do
      conn = put(conn, Routes.color_theme_path(conn, :update, color_theme), color_theme: @update_attrs)
      assert redirected_to(conn) == Routes.color_theme_path(conn, :show, color_theme)

      conn = get(conn, Routes.color_theme_path(conn, :show, color_theme))
      assert html_response(conn, 200) =~ "some updated state_uri"
    end

    test "renders errors when data is invalid", %{conn: conn, color_theme: color_theme} do
      conn = put(conn, Routes.color_theme_path(conn, :update, color_theme), color_theme: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Color theme"
    end
  end

  describe "delete color_theme" do
    setup [:create_color_theme]

    test "deletes chosen color_theme", %{conn: conn, color_theme: color_theme} do
      conn = delete(conn, Routes.color_theme_path(conn, :delete, color_theme))
      assert redirected_to(conn) == Routes.color_theme_path(conn, :index)
      assert_error_sent 404, fn ->
        get(conn, Routes.color_theme_path(conn, :show, color_theme))
      end
    end
  end

  defp create_color_theme(_) do
    color_theme = fixture(:color_theme)
    {:ok, color_theme: color_theme}
  end
end
