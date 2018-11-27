# frozen_string_literal: true

class Calc
  def initialize(args)
    @a = as_number(args[:a])
    @b = as_number(args[:b])
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
