*** Variables ***
#Login
${MyAccount}    //button[@aria-label='Moje dm zákaznické konto']
${LoginButton}    //button[@id='login-button']
${EmailInput}     //input[@id='emailAddress-input']
${PasswordInput}    //input[@id='password-input']
${SubmitButton}    //button[@id='login-button']
#ForgotPassword
${ForgotPassword}    //a[contains(text(),'Zapomněli jste heslo?')]
${SubmitButtonForgotPassword}    //button[@id='submitButton']
#FormValidation
${EmailError}    //p[@id='emailAddress-input-error']
${PasswordError}    //p[@id='password-input-error']
#LoginFormVisibility
${LoginForm}    //form[@id='login-form']

${ErrorForNEC}    //p[@data-dmid='general-error-text']

${ClosePopUp}    //button[@title='Zavřít']