***Settings***
Documentation           Aqui temos a estrutura base do projeto, o selenium é importado aqui        

Library     SeleniumLibrary

Resource        elementos.robot


***Keywords***
##  Hooks
Open session
    open browser    about:blank     chrome
    
Close session
    Capture Page Screenshot
    Close browser
