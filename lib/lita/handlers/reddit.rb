module Lita
  module Handlers
    class Reddit < Handler
      config :client_id, type: String, required: true
      config :client_secret, type: String, required: true
      config :startup_delay, type: Integer, default: 30

      config :reddits, types: Array, required: true
      config :post_text,
        type: String,
        default: "/u/%{user}: %{title} | /r/%{subreddit} | %{shortlink}"
      config :poll_interval, type: Integer, default: 300
      config :post_limit, type: Integer, default: 3

      config :base_url, type: String
      config :mod do
        config :reddits, type: Array
      end
    end
    Lita.register_handler(Reddit)
  end
end
