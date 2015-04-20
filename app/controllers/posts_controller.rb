class PostsController < ApplicationController
  def index
    url = "http://reddit.com/r/#{params[:subreddit]}.json"
    response = RestClient.get(url)
    parsed_response = JSON.parse(response)
    @posts = parsed_response['data']['children']
  end
end