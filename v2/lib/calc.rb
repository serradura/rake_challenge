# frozen_string_literal: true

require_relative 'calc/params'
require_relative 'calc/operations'

module Calc
  ComputeTaskResult = -> (task, args) do
    Operations
      .new(args)
      .public_send(task.name)
  end
end
