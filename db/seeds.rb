10.times do |blog| 
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lacinia massa. Nulla vehicula massa at placerat vulputate. Suspendisse ornare euismod odio, non ornare sapien sollicitudin ut. Integer a ligula tortor. Suspendisse accumsan nunc est, et feugiat ligula fringilla ac. Sed scelerisque libero lacus, eleifend lacinia nunc dignissim at. Proin felis ipsum, tristique nec ornare id, maximus ac magna. Sed risus orci, suscipit in auctor sit amet, aliquet vel enim. Vestibulum interdum lacus massa, nec rhoncus eros pellentesque in."
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15  
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My great service",
    body: "Nulla vel lorem ultricies, venenatis turpis id, feugiat erat. Donec dolor nulla, hendrerit in rutrum ac, interdum a enim. Nunc elementum leo elit, a dapibus purus bibendum sit amet. Aliquam erat volutpat. In id fermentum purus. Nunc id faucibus neque.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items created"