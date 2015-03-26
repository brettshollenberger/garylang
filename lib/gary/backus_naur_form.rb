module Gary
  module BackusNaurForm
    def self.included(klass)
      klass.send(:extend, ClassMethods)
    end

    module ClassMethods
      attr_accessor :rules

      def rule(matcher, replacement)
        @rules ||= []
        @rules.push({matcher: matcher, replacement: replacement})
      end
    end
  end
end
