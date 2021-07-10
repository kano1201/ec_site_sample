class SnapsController < ApplicationController
  def new
    @snap = Snap.new
  end

  def create
    @snap = Snap.new(snap_params)
    @snap.user_id = current_user.id
    @snap.save
    redirect_to snaps_path
  end

  def index
    @snaps = Snap.all
  end

  def show
    @snap = Snap.find(params[:id])
  end

  def destroy
  end

  private

  def snap_params
    params.require(:snap).permit(:snap_image, :snap_comment)
  end
end
