require 'addressable/uri'

module JekyllEmailProtect
  module EmailProtectionFilter
    def protect_email(email)
      Addressable::URI.encode_component(email, /[^\.@\-+]/)
    end
  end
end

Liquid::Template.register_filter(JekyllEmailProtect::EmailProtectionFilter)
