class Spree::Comment < ActiveRecord::Base
  include ActsAsCommentable::Comment

  belongs_to :commentable, polymorphic: true
  belongs_to :comment_type

  default_scope { order('created_at ASC') }
  
  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_voteable

  # NOTE: Comments belong to a user
  belongs_to :user

  after_create :send_email # if conf

  def send_email
  	if self.commentable.class == Spree::Shipment
  		# get other party involved in shipment.
  		others = self.comment_type.name == 'Admin' ? 
        [self.commentable.stock_location.supplier.users.first,self.commentable.order.user] : 
          (self.user == self.commentable.order.user) ? 
            [self.commentable.stock_location.supplier.users.first] : 
              [self.commentable.order.user]
  		Spree::CommentMailer.comment(self,self.commentable,others).deliver_later(wait: 5.seconds)
  	end
  end
end
