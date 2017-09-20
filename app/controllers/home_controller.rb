class HomeController < ApplicationController
  def index
    @malls = Mall.all
    @result = request.location.to_yaml
  end
end
