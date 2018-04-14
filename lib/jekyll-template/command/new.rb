# frozen_string_literal: true

require "jekyll"

module Jekyll
  module Template

    class MyNewCommand < Jekyll::Command
      class << self
        def init_with_program(prog)
          prog.command(:new) do |c|
            c.syntax "new [options]"
            c.description "Create a new Jekyll site."

            c.option "dest", "-d DEST", "Where the site should go."

            c.action do |_args, options|
              Jekyll::Site.new_site_at(options["dest"])
            end
          end
        end
      end
    end

  end
end
