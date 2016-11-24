Redis.current = Redis.new(url:  ENV["REDISTOGO_URL"] || "redis://localhost:6379/5")
