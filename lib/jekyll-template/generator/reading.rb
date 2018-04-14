# frozen_string_literal: true

require "jekyll"

module Jekyll
  module Template

    class Generator < Jekyll::Generator
      def generate(site)
        ongoing, done = Book.all.partition(&:ongoing?)

        reading = site.pages.detect { |page| page.name == "reading.html" }
        reading.data["ongoing"] = ongoing
        reading.data["done"] = done
      end
    end

  end
end
