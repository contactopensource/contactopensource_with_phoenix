defmodule ContactWeb.OfferControllerTest do
  use ContactWeb.ConnCase

  alias Contact.Concept

  @create_attrs %{created_at_clock_count: 42, created_at_timestamp_utc: ~N[2010-04-17 14:00:00], saga: "some saga", state_uri: "some state_uri", subtitle: "some subtitle", summary: "some summary", tenant_uri: "some tenant_uri", title: "some title", type_uri: "some type_uri", updated_at_clock_count: 42, updated_at_timestamp_utc: ~N[2010-04-17 14:00:00], updated_by_uri: "some updated_by_uri"}
  @update_attrs %{created_at_clock_count: 43, created_at_timestamp_utc: ~N[2011-05-18 15:01:01], saga: "some updated saga", state_uri: "some updated state_uri", subtitle: "some updated subtitle", summary: "some updated summary", tenant_uri: "some updated tenant_uri", title: "some updated title", type_uri: "some updated type_uri", updated_at_clock_count: 43, updated_at_timestamp_utc: ~N[2011-05-18 15:01:01], updated_by_uri: "some updated updated_by_uri"}
  @invalid_attrs %{created_at_clock_count: nil, created_at_timestamp_utc: nil, saga: nil, state_uri: nil, subtitle: nil, summary: nil, tenant_uri: nil, title: nil, type_uri: nil, updated_at_clock_count: nil, updated_at_timestamp_utc: nil, updated_by_uri: nil}

  def fixture(:offer) do
    {:ok, offer} = Concept.create_offer(@create_attrs)
    offer
  end

  describe "index" do
    test "lists all offers", %{conn: conn} do
      conn = get(conn, Routes.offer_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Offers"
    end
  end

  describe "new offer" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.offer_path(conn, :new))
      assert html_response(conn, 200) =~ "New Offer"
    end
  end

  describe "create offer" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.offer_path(conn, :create), offer: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.offer_path(conn, :show, id)

      conn = get(conn, Routes.offer_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Offer"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.offer_path(conn, :create), offer: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Offer"
    end
  end

  describe "edit offer" do
    setup [:create_offer]

    test "renders form for editing chosen offer", %{conn: conn, offer: offer} do
      conn = get(conn, Routes.offer_path(conn, :edit, offer))
      assert html_response(conn, 200) =~ "Edit Offer"
    end
  end

  describe "update offer" do
    setup [:create_offer]

    test "redirects when data is valid", %{conn: conn, offer: offer} do
      conn = put(conn, Routes.offer_path(conn, :update, offer), offer: @update_attrs)
      assert redirected_to(conn) == Routes.offer_path(conn, :show, offer)

      conn = get(conn, Routes.offer_path(conn, :show, offer))
      assert html_response(conn, 200) =~ "some updated saga"
    end

    test "renders errors when data is invalid", %{conn: conn, offer: offer} do
      conn = put(conn, Routes.offer_path(conn, :update, offer), offer: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Offer"
    end
  end

  describe "delete offer" do
    setup [:create_offer]

    test "deletes chosen offer", %{conn: conn, offer: offer} do
      conn = delete(conn, Routes.offer_path(conn, :delete, offer))
      assert redirected_to(conn) == Routes.offer_path(conn, :index)
      assert_error_sent 404, fn ->
        get(conn, Routes.offer_path(conn, :show, offer))
      end
    end
  end

  defp create_offer(_) do
    offer = fixture(:offer)
    {:ok, offer: offer}
  end
end
