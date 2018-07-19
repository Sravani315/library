class AuthorsController < ApplicationController
	def index
		@authors = Author.all
	end

	def new
		@author = Author.new
	end

	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to @author #authors_path
		else
			render 'new'
		end
	end

	def show
		@author = Author.find(params[:id]);
	end

	def edit
		@author = Author.find(params[:id]);
	end

	def update
		@author = Author.find(params[:id]);
		if @author.update_attributes(author_params)
			redirect_to @author
		else
			render 'edit'
		end
	end

	def destroy
	  @article = Article.find(params[:id])
	  @article.destroy
	 
	  redirect_to authors_path
	end

	private
		def author_params 
			# binding.pry
			params.require(:author).permit(:name)
		end
end
