module TimeclockHelper
  def shift_length(time_in, time_out)
    ti = time_in.to_time
    to = time_out.to_time
    tt = ((to - ti) / 1.hour)
  end
end
