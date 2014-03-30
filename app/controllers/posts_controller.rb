class PostsController < ApplicationController

	def index
		#everything here will get run when someone goes to /posts
		@posts = Post.all
	end

	def new
	@post= Post.new
	end

	def create
		Post.create( post_params )
		# Post.create(:title => "omg", :description => "llalalla") what we used
		redirect_to posts_path
		#here we add the other line
	end

	private

	def post_params
		params.require(:post).permit(:title, :description, :image)
	end

end
