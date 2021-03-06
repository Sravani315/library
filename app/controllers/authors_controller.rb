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
			flash[:notice] = 'Successfully created'
			redirect_to authors_path
		else
			flash[:notice] = 'Failed to create'
			redirect_to authors_path
		end
	end

	def show
		@author = Author.find(params[:id])
		respond_to do |format|
      format.js	
    end
	end

	def edit
		@author = Author.find(params[:id])
		respond_to do |format|
      format.js	
    end
	end

	def update
		@author = Author.find(params[:id])
		if @author.update(author_params)
			flash[:notice] = 'Successfully updated'
			redirect_to authors_path	
		else
			flash[:notice] = 'Failed to update'
			redirect_to authors_path	
		end
	end

	def destroy
		@author = Author.find(params[:id])
		@author.destroy

		redirect_to authors_path
	end

	def destroy
	  @author = Author.find(params[:id])
	  @author.destroy
	 
	  redirect_to authors_path
	end

	private
		def author_params 
			params.require(:author).permit(:name)
		end
end
