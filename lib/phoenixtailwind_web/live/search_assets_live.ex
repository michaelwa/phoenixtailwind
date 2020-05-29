defmodule PhoenixtailwindWeb.SearchAssetsLive do
  @moduledoc """
  This module provides a public API for all search queries originating
  in the web layer.
  """

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
