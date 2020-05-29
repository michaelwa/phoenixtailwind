defmodule Phoenixtailwind.Workcations.Property do
  @moduledoc """
  This module provides a public API for all search queries originating
  in the web layer.
  """
  defstruct [
    :imageUrl,
    :imageAlt,
    :beds,
    :baths,
    :title,
    :priceInCents,
    :formattedPrice,
    :reviewCount,
    :rating
  ]
end
