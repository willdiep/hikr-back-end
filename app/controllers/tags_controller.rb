class TagsController < ApplicationController
  before_action :find_tag, only: [:show, :create, :update, :destroy]
  
  def index
    tags = Tag.all
    render json: tags
  end


  def show 
    tag = Tag.find_by(id: params[:id])
    render json: tag
  end

  def create
    tag = Tag.create_or_find_by(tag_params)
    render json: tagSerializer.new(@tag)
end

def update
    tag.update(tag_params)
    render json: tagSerializer.new(@tag)
end

def destroy
    tag.delete
end

private

def find_tag
    tag = Tag.find_by(id: params[:id])
end

def tag_params
    params.require(:tag).permit(:user_id, :hikingtrail_id, :kidfriendly, :dogfriendly, :wheelchairaccessible, :strollerfriendly, :fishing, :camping, :birdwatching)
end

end
