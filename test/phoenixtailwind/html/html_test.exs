defmodule Phoenixtailwind.Html.TermTest do
  use ExUnit.Case

  alias Phoenixtailwind.Assets.Html

  test "render single attribute" do
    attr = {"class", "asdf"}
    assert "class=\"asdf\"" == Html.render_attrs_from_terms(attr)
  end

  test "render complex single attribute" do
    attr = {"class", "asdf qwerty zxcv"}
    assert "class=\"asdf qwerty zxcv\"" == Html.render_attrs_from_terms(attr)
  end

  test "render multiple attributes" do
    attrs = [{"class", "asdf qwerty zxcv"}, {"style", "oiuy lkjh"}]
    assert ~S(class="asdf qwerty zxcv" style="oiuy lkjh") == Html.render_attrs_from_terms(attrs)
  end
end
