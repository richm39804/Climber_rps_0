class RepairController < ApplicationController
  def index
    @repair = Repair.all
  end
  def show
    @repair = Repair.find(params[:id])
  end

  def new
    @repair = Repair.new
  end


    def create
  @repair = Repair.new(repair_params)

 if @repair.save
  redirect_to @repair
else
  render 'new'
  end


def update
  @repair = Repair.find(params[:id])

  if @repair.update(repair_params)
    redirect_to @repair
  else
    render 'edit'
  end



private
  def repair_params
    params.require(:repair).permit(:title, :text)
  end
