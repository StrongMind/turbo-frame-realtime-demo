class Comment < ApplicationRecord
  belongs_to :post

  after_create_commit :realtime_create
  after_update_commit :realtime_update
  after_destroy_commit :realtime_destroy


  def realtime_action(verb)
    RealtimeChannel.broadcast_to('realtime', {
      action: verb,
      data: self.as_json
    })
  end

  def realtime_create
    realtime_action"post.created"
  end

  def realtime_update
    realtime_action"post.updated"
  end

  def realtime_destroy
    realtime_action"post.deleted"
  end
end
