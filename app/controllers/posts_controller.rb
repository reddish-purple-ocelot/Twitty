class PostsController < ApplicationController
	before_action :authenticate_user!, except: :show_all
	def create 
 		my_post=Post.new(user: current_user, text: params[:twitty])
 		my_post.save
 		redirect_to posts_user_posts_path
	end
	def users_all
		@posts = current_user.posts
	end
	def show_all
		@posts = Post.all
	end
end
