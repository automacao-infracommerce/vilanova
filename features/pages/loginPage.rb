class Login < SitePrism::Page
    element :registered, '#registered'
    element :user, :xpath, '//*[@id="login"]/form/dl[1]/dd/input'
    element :password, :xpath, '//*[@id="login"]/form/dl[2]/dd/input'
    element :entryButton, :xpath, '//*[@id="login"]/form/p/input'
    element :forgetPassword, :css, '#login > form > p > a'
    element :newAccount, :css, '#login > p > a.link.new-account'

    def doLogin(cnpj, pass)
        user.set cnpj
        password.set pass
        entryButton.click
    end
end