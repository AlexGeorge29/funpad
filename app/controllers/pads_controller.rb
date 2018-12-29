class PadsController < ApplicationController
  def index
    @pads = Pad.all
    redirect_to home_path
  end
  def create

  end
  def show

  end
  def update

  end
  def destroy

  end
end
