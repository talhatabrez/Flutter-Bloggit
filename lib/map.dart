// map.dart

class map  {
  final Map<String, String> blogs = {
  // Automobiles
  "The Future of Electric Cars": 
      "Explore the latest advancements in electric vehicles, from cutting-edge battery technologies to the growing charging infrastructure. Discover how EVs are shaping the future of transportation.",
  "Top 10 Luxury Cars of 2024": 
      "A curated list of the most luxurious cars of the year. Delve into the features, performance, and design that make these vehicles stand out in the market.",
  "Maintaining Your Car Like a Pro": 
      "This blog provides essential tips for car maintenance, covering everything from regular servicing to DIY hacks for keeping your vehicle in top condition.",

  // Beauty
  "Skincare Tips for Glowing Skin": 
      "Learn the secrets to radiant skin with a daily skincare routine. This blog covers product recommendations and natural remedies to keep your skin healthy and hydrated.",
  "Top Makeup Trends of 2024": 
      "Stay updated with the latest beauty trends, from bold lip colors to minimalist makeup styles. Find inspiration for your next look!",
  "Hair Care 101: Healthy and Strong Hair": 
      "Essential tips for maintaining healthy hair. From choosing the right products to preventing damage, this blog is your go-to guide for strong, luscious locks.",

  // Movies
  "Must-Watch Blockbusters of 2024": 
      "A list of the most anticipated movies releasing this year. From action-packed thrillers to heartfelt dramas, there’s something for every cinephile.",
  "Behind the Scenes of Your Favorite Films": 
      "An exclusive look at what goes on behind the camera. Learn about the filmmaking process and the effort that brings your favorite stories to life.",
  "The Evolution of Superhero Movies": 
      "Explore how superhero films have evolved over the years, from comic book adaptations to cultural phenomena. A treat for all superhero fans!",
};

  get length => blogs.length;

  get entries => blogs.entries;
}

class automap {
  final Map<String, String> automobileBlogs = {
    "The Rise of Autonomous Vehicles":
        "Discover how self-driving cars are transforming transportation. This blog explores advancements in autonomous technology, challenges, and how it impacts the automotive industry.",
    "Top Electric Cars to Watch in 2024":
        "Highlighting the best EVs of the year, this blog covers models that offer a mix of affordability, performance, and sustainability, including Tesla and Rivian.",
    "Fuel Efficiency Hacks for Your Car":
        "Maximize your car's fuel efficiency with tips on tire maintenance, smart driving techniques, and strategies to save money while reducing your carbon footprint.",
    "The Evolution of Supercars":
        "Dive into the history and future of supercars, from iconic Lamborghinis to record-breaking Bugattis. Learn what makes these engineering marvels extraordinary.",
    "Should You Go Hybrid or Full Electric?":
        "This blog compares hybrid and electric cars, highlighting the pros and cons of each to help you decide which eco-friendly vehicle suits your needs best.",
    "The Hidden Costs of Owning a Car":
        "Explore the often-overlooked expenses of car ownership, such as insurance, maintenance, and depreciation, and learn how to plan for them effectively.",
    "Best Road Trip Cars of 2024":
        "Planning a road trip? Discover the most reliable and comfortable vehicles for your adventure, with tips on choosing the perfect travel companion.",
    "Smart Cars: The Future of Connectivity":
        "Explore how technology is redefining modern vehicles with features like voice assistants, app controls, and enhanced connectivity for a smarter driving experience.",
    "Car Safety Innovations of the Decade":
        "Learn about the latest safety technologies, such as adaptive cruise control and automatic emergency braking, that are making cars safer than ever.",
  };

  get entries => automobileBlogs.entries;
}
