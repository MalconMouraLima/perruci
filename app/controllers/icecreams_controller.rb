class IcecreamsController < ApplicationController
  before_action :find_icecream, only: [:show, :edit, :updade, :destroy]

  def index
		@icecream = Icecream.all.order("created_at DESC")
	end

  def show
  end

  def new
    @icecream = Icecream.new
  end

  def create
    @icecream = Icecream.new(icecream_params)

    if @icecream.save
      redirect_to @icecream, notice: "Sorvete salvo com sucesso!"
    else
      render 'new'
    end

  end

  private

  def icecream_params
    params.require(:icecream).permit(:title, :description)
  end

  def find_icecream
    @icecream = Icecream.find(params[:id])
  end


end
