*** Variables ***
${StoresButton}    //a[@title='Prodejny']
${SearchField}    //input[@id='input-storefinder-search-search-input-field']

${LocationButton}    //button[@id='geolocate-button']

${StoreDetails}    //div[@class='c m g']//button[@id='dm-button']

${FilterButton}    //button[@id='store-filter-button']
${OpenButton}    //span[@aria-label='Filter: Aktuálně otevřeno']
${DeliveryButton}    //span[contains(text(),'Způsob dodání')]
${DeliveryOption}    //span[@aria-label='Filter: Vyzvednutí v dm prodejně']
${ApplyButton}    //button[@id='stores-filter-layer-accept-button']

${ClosePopUp}    //button[@title='Zavřít']