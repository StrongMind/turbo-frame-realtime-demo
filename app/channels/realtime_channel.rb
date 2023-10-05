class RealtimeChannel < ApplicationCable::Channel
  def subscribed
    stream_for"realtime"

    puts "someone subscribe"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
