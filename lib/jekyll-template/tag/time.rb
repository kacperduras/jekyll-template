# frozen_string_literal: true

require "jekyll"
require "liquid"

module Jekyll
  module Template

    class RenderTimeTag < Liquid::Tag
      def initialize(tag_name, text, tokens)
        super
        @text = text
      end

      def render(_context)
        "#{@text} #{Time.now}"
      end
    end

  end
end

Liquid::Template.register_tag("render_time", Jekyll::Template::RenderTimeTag)
