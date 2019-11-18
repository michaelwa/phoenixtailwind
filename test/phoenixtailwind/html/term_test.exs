defmodule Phoenixtailwind.Html.TermTest do
  use ExUnit.Case

  alias Phoenixtailwind.Html.Term, as: Term

  test "render single attribute" do
    attr = {"class", "asdf"}
    assert "class=\"asdf\"" == Term.render_attrs_from_terms(attr)
  end

  test "render complex single attribute" do
    attr = {"class", "asdf qwerty zxcv"}
    assert "class=\"asdf qwerty zxcv\"" == Term.render_attrs_from_terms(attr)
  end

  test "render multiple attributes" do
    attrs = [{"class", "asdf qwerty zxcv"}, {"style", "oiuy lkjh"}]
    assert "class=\"asdf qwerty zxcv\" style=\"oiuy lkjh\"" == Term.render_attrs_from_terms(attrs)
  end
end
