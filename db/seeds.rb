User.create!(
  email: "test@test.com",
  password: "password",
  password_confirmation: "password",
  name: "Administrator",
  roles: "site_admin"
)

puts "1 admin user created"

User.create!(
  email: "test2@test.com",
  password: "password",
  password_confirmation: "password",
  name: "User"
)

puts "1 regular user created"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog| 
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lacinia massa. Nulla vehicula massa at placerat vulputate. Suspendisse ornare euismod odio, non ornare sapien sollicitudin ut. Integer a ligula tortor. Suspendisse accumsan nunc est, et feugiat ligula fringilla ac. Sed scelerisque libero lacus, eleifend lacinia nunc dignissim at. Proin felis ipsum, tristique nec ornare id, maximus ac magna. Sed risus orci, suscipit in auctor sit amet, aliquet vel enim. Vestibulum interdum lacus massa, nec rhoncus eros pellentesque in.",
    topic_id: Topic.last.id
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