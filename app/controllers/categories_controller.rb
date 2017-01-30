class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end 
	def show
		@category = Category.find(params[:id])
		@events = @category.events
	end
	def edit
		@category = Category.find(params[:id])
	end
	def update
		@category = Category.find(params[:id])
		if @category.update(params.require(:category).permit(:name))
			redirect_to @category
		else 
			render 'edit'
		end
	end
	def destroy
		@category = Category.find(params[:id])
		@category.destroy
		redirect_to categories_path
	end

	def new
		@category = Category.new
	end
	def create
		@category = Category.new(params.require(:category).permit(:name))
		@category.save!
 		if @category.save
        	flash[:notice] = "Category created successfully"
      		redirect_to 'index'
    	else
      		render('new')
    	end
    end
end
