*** Variables ***
${Header}    //h1[contains(text(),'Nákupní košík')]
${Health}    //a[@title='Péče o zdraví']
${AddToCartButton}    //li[1]//div[1]//div[3]//div[1]//button[1]//div[1]
${Cart}    //a[@title='Nákupní košík']
${Scroll}    //span[@data-dmid='cart-total-price']
#RemoveFromCart
${RemoveFromCart}    //div[@class='pdd_14vjcwb3']//button[@id='dm-button']
#ChangeQuantity
${ChangeQuantity}    //option[@value='6']
#Payment
${PaymentButton}    (//button[@id='cart-checkout-button'])[1]

${ClosePopUp}    //button[@title='Zavřít']