class CashRegister
    attr_accessor :total, :last_price
    attr_reader :discount, :items

    def initialize discount=0 #why does this pass ONLY if discount param is set to 0
        @discount = discount
        @total = 0
        @items = []
        @last_price = 0
    end

    def add_item(title, price, quantity=1)
        
        quantity.times do
            self.items << title
        end
        self.last_price = price * quantity
        self.total += price * quantity
    end

    def apply_discount
        if self.discount > 0
            self.total -= (discount.to_f / 100) * self.total
            "After the discount, the total comes to $#{total.to_i}."
    else
        "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_price
    end

end