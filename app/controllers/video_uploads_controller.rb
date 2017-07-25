class VideoUploadsController < ApplicationController
    def new
        @video_upload = VideoUpload.new
    end
    
    def create
      @video_upload = VideoUpload.new(title: params[:video_upload][:title], description: params[:video_upload][:description],category_id: params[:video_upload][:category_id], file: params[:video_upload][:file].try(:tempfile).try(:to_path))
    
      if @video_upload.save
        begin
          uploaded_video = @video_upload.upload!(current_user)
            if uploaded_video.failed?
              flash[:error] = 'There was an error while uploading your video...'
            else
              Video.create({link: "https://www.youtube.com/watch?v=#{uploaded_video.id}",category_id: params[:video_upload][:category_id]})
              flash[:success] = 'Your video has been uploaded!'
            end
            redirect_to root_url
        # rescue Yt::Errors::Unauthorized
        rescue Exception 
          flash[:error] = "무언가 잘못되었습니다."
          redirect_to :back
        end
      else
        render :new
      end
    end
end
