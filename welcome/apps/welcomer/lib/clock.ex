defmodule Welcomer.Clock do
  # Tuple with three integers for hour, minute and second
  @callback time() :: {integer, integer, integer}
end
