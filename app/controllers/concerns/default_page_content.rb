module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_action :set_page_defaults
    end

    def set_page_defaults
        @page_title = "RubyCoursev2react | My Portfolio Website"
        @seo_keywords = "Cesar Casares Portfolio"
    end
    
    
end