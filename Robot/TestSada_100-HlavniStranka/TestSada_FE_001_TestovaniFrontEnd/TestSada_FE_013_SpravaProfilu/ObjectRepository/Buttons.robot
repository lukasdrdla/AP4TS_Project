*** Variables ***
#Login
${MyAccount}    //button[@aria-label='Moje dm zákaznické konto']
${LoginButton}    //button[@id='login-button']
${EmailInput}     //input[@id='emailAddress-input']
${PasswordInput}    //input[@id='password-input']
${SubmitButton}    //button[@id='login-button']
#LoginFormVisibility
${LoginForm}    //form[@id='login-form']


#My Adress
${MyProfil}    //a[contains(text(),'Můj profil')]
${MyAdresses}    //a[@data-dmid='kundenkonto-profile-addresses-link']//div[@class='ev ew ex']
${SubmitButtonAdress}    //body//div//button[2]
${AddNewAdress}    //button[@id='kufe_deliveryAddress_button']
${EditButton}    //button[@id='kufe_edit_main_address_button']

#AddAdress
${RecipientInput}    //input[@id='recipient-input']
${StreetAdressInput}    //input[@id='street-input']
${PostalCodeInput}    //input[@id='postalcode-input']
${CityInput}    //input[@id='city-input']
${SubmitButtonAdress}    //body//div//button[2]


#AddError
${Error}  //p[@id='recipient-input-error']
${Error2}  //p[@id='street-input-error']
${Error3}  //p[@id='postalcode-input-error']
${Error4}  //p[@id='city-input-error']

#DeleteAdress
${DeleteButton}    (//button[@id='dm-button'])[1]
${ConfirmDelete}    //button[@id='button_delete']

#Newsletter
${NewsletterButton}    //a[contains(text(),'Můj newsletter')]
${Join}    //p[@class='ak am gg ar au gh']
${JoinToNewsletter}    //button[@id='newsletter-modal-subscribe']
${Unsubscribe}    //button[@id='newsletter-modal-unsubscribe']

#PersonalData
${MyProfil}    //a[contains(text(),'Můj profil')]
${MyPersonalInformation}    //a[@data-dmid='kundenkonto-profile-customerData-link']//div[@class='c ds bh ae dt y']
${EditPersonalInfo}    //div[@data-dmid='dm-customer-data-personal-data']//button[@id='dm-button']
${FirstNameInput}    //input[@id='firstName-input']
${LastNameInput}    //input[@id='lastName-input']
${SaveButtonPI}    //button[@id='dm-customer-data-submit']

${ClosePopUp}    //button[@title='Zavřít']