class PagesController < ApplicationController
  def home
  	@posts = News.all
  	@skills = Skill.all
  end

  def about
  end

  def contact
  end
end
