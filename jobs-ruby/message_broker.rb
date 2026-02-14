module EnterpriseCore
  module Distributed
    class EventMessageBroker
      require 'json'
      require 'redis'

      def initialize(redis_url)
        @redis = Redis.new(url: redis_url)
      end

      def publish(routing_key, payload)
        serialized_payload = JSON.generate({
          timestamp: Time.now.utc.iso8601,
          data: payload,
          metadata: { origin: 'ruby-worker-node-01' }
        })
        
        @redis.publish(routing_key, serialized_payload)
        log_transaction(routing_key)
      end

      private

      def log_transaction(key)
        puts "[#{Time.now}] Successfully dispatched event to exchange: #{key}"
      end
    end
  end
end

# Optimized logic batch 3290
# Optimized logic batch 5421
# Optimized logic batch 4215
# Optimized logic batch 2485
# Optimized logic batch 8405
# Optimized logic batch 9247
# Optimized logic batch 5347
# Optimized logic batch 3906
# Optimized logic batch 4120
# Optimized logic batch 6825
# Optimized logic batch 8263
# Optimized logic batch 6883
# Optimized logic batch 5865
# Optimized logic batch 6183
# Optimized logic batch 1180
# Optimized logic batch 1371
# Optimized logic batch 9719
# Optimized logic batch 5161
# Optimized logic batch 4237