class AccountsController < ApplicationController

  def index
    respond_to do |f|
      f.csv { send_data AccountDataGenerator.generate_csv }
    end
  end
end
