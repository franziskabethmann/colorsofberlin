class TagsController < ApplicationController
  def new
    @tag = Tag.new
    @picture = Picture.find(params[:picture_id])
  end

  def create
    @tag = Tag.new(tag_params)
    @picture = Picture.find(params[:picture_id])
    @tag.picture = @picture
    if @tag.save
      redirect_to picture_path(@picture)
    else
      render :new
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    @picture = @tag.picture
    redirect_to picture_path(@tag.picture)
  end

  private

  def tag_params
    params.require(:tag).permit(:color_id)
  end
end
