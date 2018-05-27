module Spree
  class CommentMailer < Spree::BaseMailer
    default from: Spree::Store.current.mail_from_address

    def comment(comment, shipment, others)
    	@comment = comment
      @shipment = shipment
      mail to: others.pluck(:email), subject: 'Nu comment from '+comment.user.name+' for '+shipment.number, name: Spree::Store.current.name
    end
  end
end