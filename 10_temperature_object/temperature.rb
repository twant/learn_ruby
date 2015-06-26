class Temperature

attr_reader :options

def initialize(options={})
    @options=options
    @options.merge!(options)
end

def self.from_celsius(temp)
    @options={}
    @options.merge!(:c=>temp)
    return self
end

def self.from_fahrenheit(temp)
    @options={}
    @options.merge!(:f=>temp)
    return self
end

def self.in_fahrenheit
    if @options[:f]!=nil
        @options[:f]
    else
        @options[:c].to_f*9/5+32.0
    end
end

def in_fahrenheit
    if @options[:f]!=nil
        @options[:f]
    else
        @options[:c].to_f*9/5+32.0
    end
end


def self.in_celsius
    if @options[:c]!=nil
        @options[:c]
    else
        (@options[:f].to_f-32)*5/9
    end
end

def in_celsius
    if @options[:c]!=nil
        @options[:c]
        else
        (@options[:f].to_f-32)*5/9
    end
end

end