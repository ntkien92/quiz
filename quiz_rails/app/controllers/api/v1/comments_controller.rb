class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: [:update, :show, :destroy]

  def index
    @comments = Comment.all
    render json: @comments, each_serializer: Comment::IndexSerializer
  end

  def create
    comment = Comment.new(comments_params)
    if comment.save
      render json: comment, serializer: Comment::IndexSerializer
    else
    end
  end

  def update
    if @comment.update(comments_params)
      render json: @comment, serializer: Comment::IndexSerializer
    else
    end
  end

  private

  def set_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comments_params
    params.permit(:title, :content)
  end
end
