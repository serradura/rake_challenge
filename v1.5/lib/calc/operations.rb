# frozen_string_literal: true

module Calc
  class Operations
    def self.sum(args, params: PARAMS)
      a, b = fetch_numbers(args, params)

      a + b
    end

    def self.sub(args, params: PARAMS)
      a, b = fetch_numbers(args, params)

      a - b
    end

    def self.mult(args, params: PARAMS)
      a, b = fetch_numbers(args, params)

      a * b
    end

    def self.div(args, params: PARAMS)
      a, b = fetch_numbers(args, params)

      b.zero? ? 0.0 : a / b
    end

    private_class_method def self.fetch_numbers(args, params)
      Array(params).map do |param|
        as_number(args[param])
      end
    end

    private_class_method def self.as_number(value)
      value.to_f
    end
  end
end
