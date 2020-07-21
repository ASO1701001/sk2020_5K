class UserideaChannel < ApplicationCable::Channel
  def subscribed
    stream_from "uesridea_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  def speak(data)
    Idea.create! idea_name: data['idea']
  end
end
