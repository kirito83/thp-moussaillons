class CorsairsController < ApplicationController
  def index
    @corsairs = Corsair.all
  end

  def new
    @corsair = Corsair.new
  end

  def show
    @corsair = Corsair.find(params[:id])
  end

  def edit
    @corsair = Corsair.find(params[:id])
  end

  def update
    @corsair = Corsair.find(params[:id])
    new_corsair = corsair_params
    if @corsair.update(new_corsair)
      redirect_to corsairs_path
    else
      render 'edit'
    end
  end

  def destroy
    @corsair = Corsair.find(params[:id])
    @corsair.destroy
    redirect_to corsairs_path
  end

  def create
    @corsair = Corsair.new(corsair_params)
    if @corsair.save
      redirect_to corsair_path(@corsair)
    else
      render 'new'
    end
  end

  private
  def corsair_params
    params.require(:corsair).permit(:first_name, :age, :likeness, :bio, :pseudo_slack, :pseudo_github)
  end
end
