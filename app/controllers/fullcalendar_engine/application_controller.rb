module FullcalendarEngine
  class ApplicationController < ::ApplicationController 
    skip_before_filter :verify_authenticity_token
    def set_homepage_path
      "/"
    end

  end
end
