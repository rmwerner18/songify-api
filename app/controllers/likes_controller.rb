class LikesController < ApplicationController
    def create
        Like.create(like_params)
        render json: Song.all
    end

    def destroy
        deletedLike = Like.find(params[:id])
        # likes =  Like.all.select {|like| like.user_id == deletedLike.user_id}
        deletedLike.delete
        render json: Song.all
    end

    private

    def like_params
        params.require(:like).permit(:user_id, :song_id)
    end
end
