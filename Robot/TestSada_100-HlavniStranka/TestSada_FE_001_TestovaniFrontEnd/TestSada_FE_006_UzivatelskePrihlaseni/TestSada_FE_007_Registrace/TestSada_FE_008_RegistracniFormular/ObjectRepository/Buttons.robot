*** Variables ***
#Register
${MyAccount}    //button[@aria-label='Moje dm zákaznické konto']
${Salutation}    //input[@id='salutation-radio-button-field-FRAU-radio']
${RegisterButton}    //a[@id='registration-button']
${RegistrationForm}    //form[@id='registration-form']
${FirstNameField}    //input[@id='firstName-input']
${LastNameField}    //input[@id='lastName-input']
${DayField}    //input[@id='birthDate-date-input-day']
${MonthField}    //input[@id='birthDate-date-input-month']
${YearField}    //input[@id='birthDate-date-input-year']
${EmailAdressField}    //input[@id='emailAddress-input']
${PasswordField}    //input[@id='password']
${SubmitButton}    //button[@id='submitButton']
#FormValidation
${ErrorField}    //p[@id='salutation-error']

${ClosePopUp}    //button[@title='Zavřít']