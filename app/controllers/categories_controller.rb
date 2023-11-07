class CategoriesController < ApplicationController

  def index

    @categories = Category.all

  end

  def new
    @categories = Category.new

  end

  def show
  end

  def edit
  end

  # POST /contents or /contents.json
  def create

    @categories = Category.new(category_params)

      if @categories.save
         redirect_to admin_section_path, notice: "Categoria creata correttamente."
        # format.html { redirect_to category_url(@categories), notice: "Categoria creata correttamente." }
        #  format.json { render :show, status: :created, location: @categories }
      else
        redirect_to admin_section_path, notice: "Categoria già presente."
      end


  end

  private

  # Use callbacks to share common setup or constraints between actions.

  # Only allow a list of trusted parameters through.
  def category_params
    params.require(:category).permit(:name)
  end

end

