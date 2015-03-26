module Gary
  class Parser
    class << self
      def parse(string)
        new(string).parse
      end

      def tokenize(string)
        new(string).tokenize
      end
    end

    attr_accessor :string, :tokens

    def initialize(string)
      @string = string
    end

    def tokenize
      @tokens ||= @string.split("\n").flat_map do |line| 
        line.scan(/[\w|'|"|\.|\<|\>|\=|\!|\?|\)|\(|\&|\%]+/) << "\n"
      end
    end

    def parse
      tokenize.map do |token|
        Gary::Rules.rules.inject(token) do |token, rule|
          if token.match(rule[:matcher])
            rule[:replacement]
          else
            token
          end
        end
      end
    end
  end
end
