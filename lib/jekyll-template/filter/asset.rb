# frozen_string_literal: true

require "jekyll"
require "liquid"

module Jekyll
  module Template
    module AssetFilter
      def asset_url(input)
        "http://www.example.com/#{input}?#{Time.now.to_i}"
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::Template::AssetFilter)
