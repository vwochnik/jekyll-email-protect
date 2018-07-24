module Jekyll
  module EmailProtect
    module EmailProtectionFilter

      # Percent-encode alphanumeric characters of an email address
      def encode_email(input)
        input.to_s.gsub(/(^mailto:)|\p{Alnum}+/) do |char|
          char.bytes.inject(String.new) do |result, byte|
            result << ($1 ? '&#%d;' : '%%%02X') % byte
          end
        end
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::EmailProtect::EmailProtectionFilter)
