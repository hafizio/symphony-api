alias SymphonyApi.Repo
alias SymphonyApi.Venue
alias SymphonyApi.Event
alias SymphonyApi.Review

[
  %Venue{
    id: 1,
    name: "The Bee Publika",
    phone: "03 223 9542",
    image_url: "https://media.timeout.com/images/101649531/750/422/image.jpg",
    address: "Level G2, Publika, 1 Jalan Dutamas 1, Kuala Lumpur, 50480",
    details: "The alternative and indie music fiend"
  },
  %Venue{
    id: 2,
    name: "Merdekarya",
    phone: "03 223 9542",
    image_url: "https://media.timeout.com/images/101581965/750/422/image.jpg",
    address: "First floor, 352 Jalan 5/57, Section 5, Petaling Jaya, 46000",
    details: "The music fan on a budget"
  },
  %Venue{
    id: 3,
    name: "Laundry",
    phone: "03 223 9542",
    image_url: "https://media.timeout.com/images/102799226/750/422/image.jpg",
    address: "Ground Floor, The Curve, Western Courtyard, Petaling Jaya, 47810",
    details: "The bar-hopping rock fan"
  }
] |> Enum.each(&Repo.insert!(&1))

[
  %Event{
    name: "Jay Chow and Friends",
    venue_id: 1,
    time: Ecto.DateTime.utc
  },
  %Event{
    name: "Lady Gaga & Joker",
    venue_id: 1,
    time: Ecto.DateTime.utc
  },
  %Event{
    name: "Jessie J",
    venue_id: 2,
    time: Ecto.DateTime.utc
  },
  %Event{
    name: "The Voice Audition",
    venue_id: 2,
    time: Ecto.DateTime.utc
  },
  %Event{
    name: "Cherokee Band",
    venue_id: 3,
    time: Ecto.DateTime.utc
  },
  %Event{
    name: "Jordan Smith Asia Tour",
    venue_id: 3,
    time: Ecto.DateTime.utc
  }
] |> Enum.each(&Repo.insert!(&1))

[
  %Review{
    venue_id: 1,
    content: "Amazing venue. Amazing bands."
  },
  %Review{
    venue_id: 1,
    content: "Very affordable place."
  },
  %Review{
    venue_id: 2,
    content: "A bit crowded but happening."
  },
  %Review{
    venue_id: 2,
    content: "Parking is a problem."
  },
  %Review{
    venue_id: 3,
    content: "Best place in town."
  },
  %Review{
    venue_id: 3,
    content: "Will definitely come back again."
  }
] |> Enum.each(&Repo.insert!(&1))

