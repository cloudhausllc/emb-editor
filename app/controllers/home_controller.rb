class HomeController < ApplicationController
  def index

  end

  def test_file
    filename = 'test_file.csv'
    data = File.read("#{Rails.root}/app/views/home/#{filename}")

    send_data data, :type => Mime[:csv], :disposition => "attachment; filename=#{filename}"
  end
end