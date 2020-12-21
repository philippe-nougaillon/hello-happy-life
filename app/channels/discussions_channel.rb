class DiscussionsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "groupe_#{ params[:groupe_id] }"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
