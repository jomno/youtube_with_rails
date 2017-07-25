class VideosController < ApplicationController
  before_action :set_category
  def index
    @videos = @category.nil? ? Video.order('created_at DESC') : @category.videos.order('created_at DESC')
  end

  def new
    @video = Video.new
    authorize! :manage, @video
  end

  def create
  @video = Video.new(video_params)
    if @video.save
      flash[:success] = 'Video added!'
      redirect_to root_url
    else
      render :new
    end
  end
  private
  def video_params
    params.require(:video).permit(:link,:category_id)
  end
end
