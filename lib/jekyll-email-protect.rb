module JekyllEmailProtect
  module EmailProtectionFilter
    def protect_email(str)
      return str if !str.ascii_only?

      str.chars.map{ |c| c =~ /[\.\-+@]/ ? c : c.ord.to_s(16).upcase.rjust(2, '0').prepend('%') }.to_a.join
    end
  end
end

Liquid::Template.register_filter(JekyllEmailProtect::EmailProtectionFilter)
