import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :api, Api.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "SytePIFUjfFEYGbPnRJyVc0O8z8+nvNJDjwrYVvfLz5m8Dc6XFgGXR9P/i/OUZIL",
  server: false

config(:welcomer, clock: TestClock, current_time: {19, 0, 0})
