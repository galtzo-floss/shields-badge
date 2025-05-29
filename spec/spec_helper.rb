# frozen_string_literal: true

# Third Party Libraries
require "rspec/block_is_expected"
require "version_gem/rspec"

# Extensions
# N/A

# Library Configs
require_relative "config/debug"
require_relative "config/castkit"

# RSpec Configs
require_relative "config/rspec/rspec_core"

# NOTE: Gemfiles for older rubies won't have kettle-soup-cover.
#       The rescue LoadError handles that scenario.
begin
  require "kettle-soup-cover"
  require "simplecov" if Kettle::Soup::Cover::DO_COV # `.simplecov` is run here!
rescue LoadError => error
  # check the error message, if you are so inclined, and re-raise if not what is expected
  raise error unless error.message.include?("kettle")
end

# This gem
require "shields/badge"

require "shields/register_all"
