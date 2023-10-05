namespace :comments do
  desc "create some comments for post 1"
  task create: :environment do
    5.times do
      comment = Comment.create!(post: Post.first, content: Faker::Name.name)
      puts "created comment #{comment.id}"
      sleep 2
    end
  end

  task clear: :environment do
    Comment.all.destroy_all
  end

end
