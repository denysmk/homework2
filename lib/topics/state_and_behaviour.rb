# frozen_string_literal: true

module StateAndBehaviour
  # define class Car
  class Car
    attr_accessor :current_speed
    attr_reader :year, :color, :model

    def self.default_car
      new
    end

    def initialize(car_attributes)
      @year = car_attributes.fetch(:year, '2003')
      @color = car_attributes.fetch(:color, 'red')
      @model = car_attributes.fetch(:model, 'coupe')
      @current_speed = 0
    end

    def speed_up(speed)
      self.current_speed += speed
    end

    def push_break(speed)
      self.current_speed -= speed if speed < current_speed
    end
  end
end
