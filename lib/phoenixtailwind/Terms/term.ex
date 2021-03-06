defmodule Terms.Term do
  @moduledoc """
  This module provides a public API for all search queries originating
  in the web layer.
  """

  @behaviour Ecto.Type
  def type, do: :binary
  def cast(bin), do: {:ok, bin |> :erlang.binary_to_term()}
  def load(bin), do: {:ok, bin |> :erlang.binary_to_term()}
  def dump(bin), do: {:ok, bin |> :erlang.term_to_binary()}

  # def embed_as(format) do
  #   format
  # end

  # def equal?(one, two) do
  #   true
  # end
end
