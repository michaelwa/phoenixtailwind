defmodule Phoenixtailwind.Workcations do

  alias Phoenixtailwind.Workcations.Destination

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
end
