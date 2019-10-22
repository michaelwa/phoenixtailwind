defmodule Phoenixtailwind.Workcations do

  alias Phoenixtailwind.Workcations.Destination
  alias Phoenixtailwind.Workcations.Property

  def list_destinations do
    [
      %Destination{city: "Toronto", averagePrice: 120, propertyCount: 76, imageUrl: "/images/toronto.jpg", imageAlt: "Toronto Skyline"},
      %Destination{city: "Malibu", averagePrice: 215, propertyCount: 43, imageUrl: "/images/malibu.jpg", imageAlt: "Cliff in Malibu"},
      %Destination{city: "Chicago", averagePrice: 130, propertyCount: 115, imageUrl: "/images/chicago.jpg", imageAlt: "Chicago Skyline"},
      %Destination{city: "Seattle", averagePrice: 135, propertyCount: 63, imageUrl: "/images/seattle.jpg", imageAlt: "Seattle Skyline"},
      %Destination{city: "Colorado", averagePrice: 85, propertyCount: 47, imageUrl: "/images/colorado.jpg", imageAlt: "Lake in Colorado"},
      %Destination{city: "Miami", averagePrice: 115, propertyCount: 86, imageUrl: "/images/miami.jpg", imageAlt: "Beach in Miami"},
    ]
  end

  def list_properties do
    [
      %Property{ imageUrl: "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80", imageAlt: "Rear view of modern home with pool", beds: 3, baths: 2, title: "Modern home in city center", priceInCents: 190000, formattedPrice: "$1,900.00", reviewCount: 34, rating: 4}
    ]
  end

  def get_property_by(params) do
    # Enum.at(list_properties(), 0)
    Enum.find(list_properties(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
