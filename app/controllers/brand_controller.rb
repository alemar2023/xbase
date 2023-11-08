class BrandController < ApplicationController

  def new

  end
def create

  @brands = Brand.new(brand_params)

  if @brands.save
    redirect_to admin_section_path, notice: "Brand creato correttamente."
    # format.html { redirect_to category_url(@categories), notice: "Categoria creata correttamente." }
    #  format.json { render :show, status: :created, location: @categories }
  else
    redirect_to admin_section_path, notice: "Brand già presente."
  end

  end

  def update

  end
  def update

  end
  def show

  end
  def index

  end
  def destroy

  end

  def edit

  end


  private

  # Use callbacks to share common setup or constraints between actions.

  # Only allow a list of trusted parameters through.
  def brand_params
    params.require(:brand).permit(:name)
  end
end

