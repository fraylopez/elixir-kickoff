defmodule Welcomer.SystemClock do
  @behaviour Welcomer.Clock

  def time do
    {_, {h, m, s}} = :calendar.local_time()
    {h, m, s}
  end
end
