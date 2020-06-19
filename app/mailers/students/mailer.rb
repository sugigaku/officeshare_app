class Students::Mailer < Devise::Mailer
    def confirmation_instructions(record, token, opts={})
        headers["Custom-header"] = "Bar"
        opts[:from] = 'my_custom_from@domain.com'
        opts[:reply_to] = 'my_custom_from@domain.com'
        super
    end

    def confirmation_instructions(record, token, opts={})
        headers["Custom-header"] = "Bar"
        opts[:from] = 'my_custom_from@domain.com'
        opts[:reply_to] = 'my_custom_from@domain.com'
        super
    end

    def confirmation_instructions(record, token, opts={})
        headers["Custom-header"] = "Bar"
        opts[:from] = 'my_custom_from@domain.com'
        opts[:reply_to] = 'my_custom_from@domain.com'
        super
    end
end