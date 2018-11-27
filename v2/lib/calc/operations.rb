# frozen_string_literal: true

module Calc
  class Operations
    def initialize(args, params: PARAMS)
      @a, @b = Array(params).map do |param|
                as_number(args[param])
              end
    end

    def sum
      @a + @b
    end

    def sub
      @a - @b
    end

    def mult
      @a * @b
    end

    def div
      @b.zero? ? 0.0 : @a / @b
    end

    private

    def as_number(value)
      value.to_f
    end
  end
end
