# frozen_string_literal: true

require_relative 'calc/params'
require_relative 'calc/operations'

module Calc
  def self.compute_task_result(task, args)
    Operations.public_send(task.name, args)
  end
end
