defmodule TestClock do
  @behaviour Welcomer.Clock

  def time() do
    Application.get_env(:welcomer, :current_time)
  end

  def set_time(time) do
    Application.put_env(:welcomer, :current_time, time)
  end

  def reset() do
    Application.put_env(:welcomer, :current_time, nil)
  end
end
