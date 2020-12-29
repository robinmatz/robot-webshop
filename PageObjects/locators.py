# Home Page
HOME_PAGE_URL = "http://automationpractice.com/index.php"
HOME_PAGE_TITLE = "My Store"
LINK_SIGN_IN = "//a[@class='login']"

LINK_WOMEN = "//*[@id='block_top_menu']/ul/li/a[@title='Women']"
LINK_DRESSES = "//*[@id='block_top_menu']/ul/li/a[@title='Dresses']"
LINK_T_SHIRTS = "//*[@id='block_top_menu']/ul/li/a[@title='T-shirts']"

# Product Selection Page
# T-Shirts
LINK_T_SHIRT = "//a[contains(text(),'Faded Short Sleeve T-shirts')]"

# Product Selected Page
BTN_ADD_TO_CART = "//span[contains(text(),'Add to cart')]"

# Added To Cart Popup
SUCCESS_ICON = "class:icon-ok"
BTN_PROCEED = "(//*[contains(text(),'Proceed to checkout')])[last()]"

# Shopping Cart Summary
CELL_UNIT_PRICE = "//tbody/tr[contains(@id, 'product')]/td[4]/span[1]/span[1]"
CELL_QUANTITY = "//tbody/tr[contains(@id, 'product')]/td[5]/input[2]"
CELL_SUB_TOTAL = "//span[contains(@id, 'total_product_price')]"
CELL_TOTAL_PRODUCT = "//td[@id='total_product']"
CELL_TOTAL_SHIPPING = "//td[@id='total_shipping']"
CELL_TOTAL_WITHOUT_TAX = "//td[@id='total_price_without_tax']"
CELL_TAX = "//td[@id='total_tax']"
CELL_TOTAL = "//span[@id='total_price']"

# Address
# Delivery Address
DA_HEADER = "//h3[contains(text(),'Your delivery address')]"
DA_FIRST_NAME_LAST_NAME = "//*[@id='address_delivery']//*[contains(@class, 'address_firstname address_lastname')]"
DA_ADDRESS = "//*[@id='address_delivery']//*[contains(@class, 'address_address')]"
DA_ADDRESS_CITY = "//*[@id='address_delivery']//*[contains(@class, 'address_city')]"
DA_ADDRESS_COUNTRY = "//*[@id='address_delivery']//*[contains(@class, 'address_country_name')]"
DA_ADDRESS_PHONE = "//*[@id='address_delivery']//*[contains(@class, 'address_phone_mobile')]"
BTN_DA_ADDRESS_UPDATE = "//*[@id='address_delivery']//*[@title='Update']"
# Billing Address
BA_HEADER = "//h3[contains(text(),'Your billing address')]"
BA_FIRST_NAME_LAST_NAME = "//*[@id='address_invoice']//*[contains(@class, 'address_firstname address_lastname')]"
BA_ADDRESS = "//*[@id='address_invoice']//*[contains(@class, 'address_address')]"
BA_ADDRESS_CITY = "//*[@id='address_invoice']//*[contains(@class, 'address_city')]"
BA_ADDRESS_COUNTRY = "//*[@id='address_invoice']//*[contains(@class, 'address_country_name')]"
BA_ADDRESS_PHONE = "//*[@id='address_invoice']//*[contains(@class, 'address_phone_mobile')]"
BTN_BA_ADDRESS_UPDATE = "//*[@id='address_invoice']//*[@title='Update']"

# Shipping
CB_TERMS = "id:cgv"

# Payment
LINK_BANKWIRE = "class:bankwire"
MSG_BANKWIRE = "//strong[contains(text(),'You have chosen to pay by bank wire.')]"
BTN_CONFIRM_ORDER = "//*[text()='I confirm my order']"
ORDER_SUCCESSFUL = "//strong[contains(text(),'Your order on My Store is complete.')]"

# Login Page
LOGIN_PAGE_TITLE = "Login - My Store"
INPUT_EMAIL = "id:email"
INPUT_PASSWORD = "id:passwd"
BTN_LOGIN = "id:SubmitLogin"

LI_ERROR_MESSAGE = "//div[@class='alert alert-danger']//li"

# My Account Page
MY_ACCOUNT_TITLE = "My account - My Store"
LINK_SIGN_OUT = "//a[@class='logout']"