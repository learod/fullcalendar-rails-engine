module FullcalendarEngine
  class ApplicationController < ::ApplicationController 
    skip_before_action :verify_authenticity_token
    def set_homepage_path
      "/"
    end

  end
end
