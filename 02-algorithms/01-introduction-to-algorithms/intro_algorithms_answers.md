#### Daily Life Algorithms:

##### 1) Withdraw Cash from an ATM
```
INSERT debit_card
INSERT pin
SET withdraw
INSERT amount
IF amount < balance THEN
  SET cash to amount
  GET cash
ELSE
  DISPALY insufficient funds, please enter another amount
ENDIF
RETURN debit_card
```

##### 2) Buying an Item Online
```
OPEN amazon_com
INSERT exact_item OR item_type into search
DETERMINE best_result
INSERT best_result into cart
INSERT account password
IF password is correct THEN
  SET shipping information
  SET billing information
  INIT buy_now
ELSE
  DISPLAY password prompt
ENDIF
```

##### 3) Making the Coffee
```
OBTAIN a coffee filter
INSERT filter into coffee_funnel
OBTAIN ground_coffee_beans
INSERT ground_coffee_beans into filter
FILL carafe_container with water
INSERT water from carafe_container into pour_location
INIT brewing 
```