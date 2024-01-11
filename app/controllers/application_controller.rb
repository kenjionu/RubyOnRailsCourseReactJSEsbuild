class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include DeviseWhitelist
    include SetSource
    include CurrentUserConcern
    include DefaultPageContent
#   end

#     before_action :set_title

#     def set_title
#         @page_title = "RubyCoursev2react | My Portfolio Website"
#     end
end
