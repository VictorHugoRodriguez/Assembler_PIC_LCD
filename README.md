# Assembler Code For Microchip PIC and LCD
Old assembler script to display an customized symbol or graphic in a 128x64 LCD

## LCD 128x64
The classic 128x64 LCD is a 1024 pixel screen, that allows to display information in form of text and graphics for different purposes. The LCD is composed by two segments (left and right), with each segment in turn formed by 8 rows or "pages" of 64 pixels each (64 columns, each of 8 bits).<br/>
In order to display graphics using assembler, we need to specify the page and the address or bit on which we will begin drawing the graphic, this is done by specifying the respective commands in the DB pins of the LCD.

![LCD_structure](https://github.com/VictorHugoRodriguez/Assembler_PIC_LCD/blob/main/Images/lcd-structure.png?raw=true)
![LCD_instructions](https://github.com/VictorHugoRodriguez/Assembler_PIC_LCD/blob/main/Images/instruccions.png?raw=true)


## PIC184550
The microchip PIC184550 is a MIPS based microcintroller, which posseses digital outputs that can be programmed using assembler or c code. This repo uses assembler code to push the necessary binary data, equivalent to turn on and off the required bits in the LCD. As example an avengers symbol is draw, but to generalize the project, an excel file is provided (LCD_128x64.xls), which simulates the LCD structure, where every bit can be adjusted (1 or 0) to obtain any desired figure and the corresponding binary value required by each column.<br/>
A proteus 8 file is also provided in this project, to perform the simulation of the algorithm using the PIC microcontroller and the LCD. In order to use the proteus file, and a real microcontroller, a HEX file is generated after building the code (using e.g. MPLABv8). The HEX file can be uploaded to the proteus microcontroller and on a real one using a Pickit 4 device.

![Simulation_proteus](https://github.com/VictorHugoRodriguez/Assembler_PIC_LCD/blob/main/Images/project.png?raw=true)



## References
MPLAB Version 8: https://www.microchip.com/development-tools/pic-and-dspic-downloads-archive.<br/>
PIC184550: https://www.digikey.com/en/products/detail/microchip-technology/PIC18F4550-I-P/704580
Pickit 4: https://www.digikey.de/product-detail/en/microchip-technology/PG164140/PG164140-ND/8536593.<br/>
LCD 128x64: https://www.amazon.de/AZDelivery-HD44780-Display-Characters-Arduino/dp/B07DDKBCY7/.<br/>
<br/>
<br/>
General manual for LCD 128x64 (datasheet): https://www.newhavendisplay.com/specs/NHD-12864AZ-FL-YBW.pdf.<br/>
Use of LCD128x64: https://www.electronicwings.com/sensors-modules/glcd-128x64.<br/>
Technical aspects PIC184550: https://www.microchip.com/wwwproducts/en/PIC18F4550. <br/>
General knowledge LCD: https://www.engineersgarage.com/knowledge_share/128x64-graphical-lcd/.<br/>


## License
[MIT](https://choosealicense.com/licenses/mit/)
