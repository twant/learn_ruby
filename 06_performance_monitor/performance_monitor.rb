def measure(block=nil)
    start_time=Time.now
    {block}
    end_time=Time.now
    dif=end_time-start_time
    return dif
end
