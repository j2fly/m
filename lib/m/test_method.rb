module M
  class TestMethod < Struct.new(:name, :start_line, :end_line)
    def self.create(suite_class, test_method)
      p("#{suite_class}##{test_method}")
      method     = YARD::Registry.at("#{suite_class}##{test_method}")
      p method
      start_line = method.line
      end_line   = method.source.split("\n").size + start_line - 1

      new(test_method, start_line, end_line)
    end
  end
end
