defmodule Phoenixtailwind.Workcations.Destination do
  @moduledoc """
  This module provides a public API for all search queries originating
  in the web layer.
  """
  defstruct [:city, :averagePrice, :propertyCount, :imageUrl, :imageAlt]
end
