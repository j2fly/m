require "forwardable"
require "ostruct"

require "method_source"
require "yard"

require "m/runner"
require "m/test_collection"
require "m/test_handler"
require "m/test_method"
require "m/version"

module M
  def self.run(argv)
    Runner.new(argv).run
  end
end
