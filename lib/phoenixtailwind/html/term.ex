defmodule Phoenixtailwind.Html.Term do
  alias Floki

  @template_tags "<<%= tag %><%= if String.length(attrs) > 0 do %> <%= attrs %><% end %><%= if void_tag do %> /><% else %>><% end %><%= children %><%= if !void_tag do %></<%= tag %>><% end %>"
  @template_attrs "<%= key %>=\"<%= value %>\""

  @void_elements ~w(area base br col command embed hr img input keygen link meta param source track wbr)

  def parse(html_string) do
    Floki.parse(html_string)
  end

  def render_from_terms(html) do
    case html do
      [head | []] ->
        render_from_terms(head)

      [head | tail] ->
        render_from_terms(head) <> render_from_terms(tail)

      {tag, attrs, children} ->
        EEx.eval_string(@template_tags,
          tag: tag,
          void_tag: Enum.any?(@void_elements, fn t -> t == tag end),
          attrs: render_attrs_from_terms(attrs),
          children: render_from_terms(children)
        )

      str ->
        str
    end
  end

  def render_attrs_from_terms(attrs) do
    case attrs do
      [] ->
        ""

      {key, value} ->
        EEx.eval_string(@template_attrs, key: key, value: value)

      [head | tail] ->
        render_attrs_from_terms(head)
        |> (&(&1 <> " ")).()
        |> (&(&1 <> render_attrs_from_terms(tail))).()
        |> String.trim()
    end
  end
end
