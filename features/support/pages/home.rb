

class HomePage
    include Capybara::DSL

    def open
        visit 'https://starbugs.vercel.app/'
    end

    def coffee_list
        return all('.coffee-item')
    end

    def buy(coffee_name)
        products = find('.coffee-item', text: coffee_name)
        products.find('.buy-coffee').click
    end

end