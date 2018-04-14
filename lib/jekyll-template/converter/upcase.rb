# frozen_string_literal: true

require "jekyll"

module Jekyll
  module Template

    class UpcaseConverter < Converter
      safe true
      priority :low

      def matches(ext)
        ext =~ %r!^\.upcase$!i
      end

      def output_ext(_ext)
        ".html"
      end

      def convert(content)
        content.upcase
      end
    end

  end
end
