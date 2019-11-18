defmodule Terms.MyTerm do
  use Ecto.Schema

  schema "terms" do
    field :content, Terms.Term
  end
end
