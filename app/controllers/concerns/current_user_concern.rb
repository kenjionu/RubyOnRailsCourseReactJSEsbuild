module CurrentUserConcern
    extend ActiveSupport::Concern

    included do 
        before_action :set_source
    end

    def current_user
        super || guest_user
    end

    def guest_user
        guest = GuestUser.new
        guest.name = "Guest User"
        guest.first_name = "Guest"
        guest.last_name = "User"
        guest.email = "guest@example.com"
        guest
    end
  

end