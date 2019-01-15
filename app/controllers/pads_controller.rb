class PadsController < ApplicationController
  def index
    @pads = Pad.all
    redirect_to home_path
  end
  def create

  end
  def show
    @pad = Pad.find(params[:id])
    @keys = @pad.keys
    key_type
  end

  def update

  end

  def destroy

  end

  private

  def pad_params
    params.require(:pad).permit(:name, :picture, :description, :user_id)
  end

end
