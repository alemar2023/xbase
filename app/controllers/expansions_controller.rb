class ExpansionsController < ApplicationController

  def new
    @expansion = Expansion.new
  end

  def create

    @expansions = Expansion.new(expansion_params)

    if @expansions.save
      redirect_to admin_section_path, notice: "Espansione creato correttamente."
      # format.html { redirect_to category_url(@categories), notice: "Categoria creata correttamente." }

    else
      redirect_to admin_section_path, notice: "Espansione già presente."
    end

  end

  def index

    @expansions = Expansion.all

  end
  def update

  end



  def show

  end



  def destroy

  end

  def edit

  end

  private

  # Use callbacks to share common setup or constraints between actions.

  # Only allow a list of trusted parameters through.
  def expansion_params
    params.require(:expansion).permit(:name, :brand_id)
  end
end


