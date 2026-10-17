{% docs order_status %}
    
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| placed         | Order placed, not yet shipped                    |
| shipped        | Order has been shipped, not yet been delivered   |
| completed      | Order has been received by customers             |
| return pending | Customer indicated they want to return this item |
| returned       | Item has been returned                           |

{% enddocs %}

{% docs payment_method %}

The method used to process a payment.

Possible values:
- credit_card
- bank_transfer
- coupon
- gift_card

{% enddocs %}


{% docs payment_amount %}

The payment amount in USD.

{% enddocs %}