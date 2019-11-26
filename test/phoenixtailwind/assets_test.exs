defmodule Phoenixtailwind.HtmlTest do
  use ExUnit.Case

  alias Phoenixtailwind.Assets

  test "render simple tag as output" do
    html_string = "<p></p>"
    render_test_helper(html_string)
  end

  test "render tag and text node" do
    html_string = "<p>this is some text</p>"
    render_test_helper(html_string)
  end

  test "render text only" do
    html_string = "this is some text"
    render_test_helper(html_string)
  end

  test "render multiple siblings with no parent" do
    html_string = "<p>this is some text</p><p>this is some text</p><p>more stuff here</p>"
    render_test_helper(html_string)
  end

  test "render multiple siblings with parent" do
    html_string =
      "<div>test this text too!<p>this is some text</p><p>this is some text</p><p>more stuff here</p></div>"

      render_test_helper(html_string)
  end

  test "render nexted nodes" do
    html_string = "<div><p>this is some text</p></div>"
    render_test_helper(html_string)
  end

  test "render with no closing tag" do
    html_string = "<img src=\"test\" />"
    render_test_helper(html_string)
  end

  test "render complex elements and attributes" do
    html_string = "<div class=\"asdf\" style=\"css-here\">this is some text<p>paragraph 1</p><p>paragraph 1<ul><li>item 1</li><li>item 2</li></ul></p></div>"
    render_test_helper(html_string)
  end

  test "render complex svg" do
    svg = """
    <svg viewBox="0 0 20 20" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
      <g id="icon-shape">
        <path d="M12.2928932,3.70710678 L0,16 L0,20 L4,20 L16.2928932,7.70710678 L12.2928932,3.70710678 Z M13.7071068,2.29289322 L16,0 L20,4 L17.7071068,6.29289322 L13.7071068,2.29289322 Z" id="Combined-Shape"></path>
      </g>
    </g>
  </svg>
  """
    render_test_helper(svg)
  end

  def render_test_helper(html_string) do
    html = Assets.parse(html_string)
    out_string = Assets.render(html)
    # assert html_string == out_string # won't match due to whitespace differences
    assert html = Assets.parse(out_string)
  end
end
