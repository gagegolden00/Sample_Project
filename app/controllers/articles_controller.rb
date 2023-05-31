# frozen_string_literal: true

class ArticlesController < ApplicationController
  
  def show
    @article_to_find = Article.find(params[:id])
  end

end