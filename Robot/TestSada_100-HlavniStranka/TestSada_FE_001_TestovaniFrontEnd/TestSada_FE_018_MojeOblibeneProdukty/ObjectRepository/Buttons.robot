*** Variables ***
#Login
${MyAccount}    //button[@aria-label='Moje dm zákaznické konto']
${LoginButton}    //button[@id='login-button']
${EmailInput}     //input[@id='emailAddress-input']
${PasswordInput}    //input[@id='password-input']
${SubmitButton}    //button[@id='login-button']
#LoginFormVisibility
${LoginForm}    //form[@id='login-form']
#AddToFavorites
${NavButton}    //a[@title='Vlasová kosmetika']
${AddToFavouriteButton}    //li[1]//div[1]//div[2]//button[1]//div[1]
#RemoveFromFavorites
${MyList}    //a[@title='Můj seznam & Moje produkty']
${RemoveButton}    //button[@id='shoppinglist_heart']

${ClosePopUp}    //button[@title='Zavřít']