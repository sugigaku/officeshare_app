class Companies::Mailer < Devise::Mailer
    helper :application
    include Devise::Controllers::UrlHelpers
    default template_path: 'devise/mailer'
   
    def confirmation_instructions(record, token, opts={})
      opts[:subject] = "【みんなの部屋】本人確認メール"
    
    #件名の指定以外は親を継承
      super
    end

end