import Config

config :welcomer, env: config_env()
config(:welcomer, clock: Welcomer.SystemClock)

import_config "#{config_env()}.exs"
