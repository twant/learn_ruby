class Timer

attr_accessor :timer, :seconds

def initialize
    @seconds=0
end

def seconds
    @seconds
end

def time_string
    time_arr=["00",":","00",":","00"]
    if @seconds<60
        time_arr[4]="#{@seconds}".rjust(2,"0")
    elsif @seconds<3600&&@seconds>60
        time_arr[4]="#{@seconds%60}".rjust(2,"0")
        time_arr[2]="#{@seconds/60.floor}".rjust(2,"0")
    elsif @seconds>3600&&@seconds<360000
        time_arr[0]="#{@seconds/3600.floor}".rjust(2,"0")
        time_arr[4]="#{@seconds%3600%60}".rjust(2,"0")
        time_arr[2]="#{@seconds%3600/60.floor}".rjust(2,"0")
    end
    @timer=time_arr.join
    return @timer
end


end