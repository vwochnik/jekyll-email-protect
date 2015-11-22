module Jekyll
  module EmailProtect
    module EmailProtectionFilter

      # Percent-encode alphanumeric characters of an email address
      def encode_email(input)
        input.to_s.chars.inject("") do |result, char|
          if char =~ /\p{Alnum}/
            char.bytes.inject(result) do |result, byte|
              result << '%%%02X' % byte
            end
          else
            result << char
          end
        end
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::EmailProtect::EmailProtectionFilter)
