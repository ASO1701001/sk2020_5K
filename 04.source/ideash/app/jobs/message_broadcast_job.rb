class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast 'useridea_channel', message: render_message(message)
  end

  private

    def render_message(message)
      ApplicationController.renderer.render partial: 'brainstorming/_process_1', locals: { message: message }
    end
end
