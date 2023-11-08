class BlueprintController < ApplicationController

  def new
    @blueprint = Blueprint.new
    render layout: 'dashboard'
  end

  def debugger
    # code here
  end

  def add
    @blueprint = Blueprint.new
    @blueprint.valid?
    name = params[:titolo].to_s
    cat = params[:category_id].to_s
    bra = params[:brand_id].to_s
    exp = params[:expansion_id].to_s

    redirect_to admin_section_path, notice: 'Nome: '  + name + ' |  '   + cat + '  |   '   + bra + '  |  '   + exp + '  |  '

=begin
    if @blueprint.save
      redirect_to @blueprint, notice: 'blueprint save succesfully'
    else
      redirect_to :new
    end
=end
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
  def blueprint_params
    params.require(:blueprint).permits(:category_id, :expansion_id, :brand_id)
  end

end