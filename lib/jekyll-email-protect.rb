module JekyllEmailProtect
  module EmailProtectionFilter

    # Percent-encode alphanumeric characters of an email address
    def protect_email(input)
      input.to_s.chars.inject("") do |result, char|
        if char =~ /\p{Alnum}/
          char.bytes.inject(result) do |result, byte|
            result << byte.to_s(16).upcase.rjust(2, '0').prepend('%')
          end
        else
          result << char
        end
      end
    end
  end
end

Liquid::Template.register_filter(JekyllEmailProtect::EmailProtectionFilter)
