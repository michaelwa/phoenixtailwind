defmodule PhoenixtailwindWeb.SearchAssetsLive do
  use Phoenix.LiveView

  alias Phoenixtailwind.Assets
  alias PhoenixtailwindWeb.Components.SearchAssetsView

  def render(assigns) do
    SearchAssetsView.render("search_assets.html", assigns)
  end

  def mount(_session, socket) do
    {:ok, assign(socket, changeset: Assets.changeset(%Assets{}, %{url: nil}))}
  end

  def handle_event("validate", %{"assets" => params}, socket) do
    changeset =
      %Assets{}
      |> Assets.changeset(params)

    {:noreply, assign(socket, changeset: changeset)}
  end

  def handle_event("search", %{"assets" => params}, socket) do
    changeset =
      %Assets{}
      |> Assets.changeset(params)

    {:noreply, update(socket, :changeset, changeset)}
  end
end
