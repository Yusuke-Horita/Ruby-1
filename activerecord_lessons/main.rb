require "active_record"
require "pp"

Time.zone_default = Time.find_zone! 'Tokyo'
ActiveRecord::Base.default_timezone = :local

ActiveRecord::Base.establish_connection(
	"adapter" => "sqlite3",
	"database" => "./myapp.db"
)

class User < ActiveRecord::Base
	has_many :comments, dependent: :destroy
end

class Comment < ActiveRecord::Base
	belongs_to :user
end

User.delete_all

User.create(name: "tanaka", age: 19)
User.create(name: "takahashi", age: 25)
User.create(name: "umeda", age: 34)
User.create(name: "takata", age: 14)
User.create(name: "aoki", age: 56)


Comment.delete_all

Comment.create(user_id: 1, body: "hello-1")
Comment.create(user_id: 1, body: "hello-2")
Comment.create(user_id: 3, body: "hello-3")

user = User.includes(:comments).find(1)


user.comments.each do |c|
	puts "#{user.name}: #{c.body}"
end

comments = Comment.includes(:user).all
comments.each do |c|
	puts "#{c.body} by #{c.user.name}"
end