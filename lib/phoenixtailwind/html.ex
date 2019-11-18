defmodule Phoenixtailwind.Html do
  alias Phoenixtailwind.Html.Term

  def parse(html_string) do
    Term.parse(html_string)
  end

  def render(terms) do
    Term.render_from_terms(terms)
  end

  # def transform(terms, template) do

  # end
end
