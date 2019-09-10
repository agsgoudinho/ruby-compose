class Temperature
    attr_accessor :value, :unit
    def initialize(value, unit)
        @value = value.to_i
        @unit = unit
    end

    def to_fahrenheit
        case @unit
        when 'c'
            @value * 1.8 + 32
        when 'k'
            1.8 * (@value - 273) + 32
        end
    end

    def to_kelvin
        case @unit
        when 'f'
            (@value + 459.67) / 1.8
        when 'c'
            @value + 273
        end
    end

    def to_celsius
        case @unit
        when 'f'
            (@value - 32) / 1.8
        when 'k'
            @value - 273
        end
    end
end
