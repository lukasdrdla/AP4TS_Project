*** Variables ***
${MensWorld}    //a[@title="Men's World"]
${Filters}    //nav[@aria-label='Filtrovat']

#Categories
${Category}    //button[normalize-space()='Kategorie']
${CategoryMen}    //span[@aria-label='Filtr: MEN´S World']

#Color
${Color}    //button[normalize-space()='Barva']
${ColorBlue}    //img[@alt='Filtr: modrá']

#Brand
${Brand}    //button[contains(text(),'Značky')]
${BrandAdidas}    //span[contains(text(),'adidas')]

${ClosePopUp}    //button[@title='Zavřít']