defmodule Phoenixtailwind.Assets do
  use Ecto.Schema
  import Ecto.Changeset

  alias Phoenixtailwind.Assets.Html

  # @url ~r/^[a-z]?/

  # ^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\?([^#]*))?(#(.*))?
  schema "asset" do
    field :url, :string

    timestamps()
  end
  @doc false
  def changeset(asset, attrs) do
    asset
    |> cast(attrs, [:url])
    |> validate_required([:url])
    # |> validate_format(:url, @url, message: "not a valid url")
  end

  ## manipulate raw html
  ## get html
  ## parse html
  ## render raw
  ## transform raw into an assets

  def get(url) do
    Html.get(url)
  end

  def parse(html_string) do
    Html.parse(html_string)
  end

  def render(terms) do
    Html.render_from_terms(terms)
  end

  # def transform(terms, template) do

  # end
end
