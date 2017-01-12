class PullDataJob < ApplicationJob
  queue_as :default

  # include SideKiq::Worker

  require 'rest-client'

  url = 'http://nflarrest.com/api/v1/team/arrests/sea'

  def perform(url)
    # Do something later
    response = RestClient.get url
    body = response.body
    puts body

  end
end
