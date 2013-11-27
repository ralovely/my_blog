class ConfController < ApplicationController

  def db
    file = File.open(File.join(Rails.root, 'config', 'database.yml'), "rb")
    @contents = file.read
  end

end
