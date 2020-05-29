defmodule Terms.MyTerm do
  @moduledoc """
  This module provides a public API for all search queries originating
  in the web layer.
  """

  use Ecto.Schema

  schema "terms" do
    field :content, Terms.Term
  end
end
