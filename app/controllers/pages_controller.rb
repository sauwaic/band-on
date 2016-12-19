class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def concept
  end

  def features
  end

  def pricing
  end

end
