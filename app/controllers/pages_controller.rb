class PagesController < ApplicationController

def show
  render template: "pages/#{params[":page"]}"
end

def home

end

def about

end

def projects

end

end
