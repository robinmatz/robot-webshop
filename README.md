## Robot-Webshop
#### What is it about?

This is a demo project for Selenium browser automation using **robot-framework** (see https://robotframework.org/ for detailed documentation on robot-framework).
The system under test (SUT) is an open source demo web shop hosted under http://automationpractice.com/index.php.

#### Prerequisites

In order to run test cases, you will need:
- An installation of Python (https://www.python.org/downloads/)
- Location of *python.exe* as well as *pip.exe* needs to be in PATH variable
- Create a virtual python environment. You can do so via command line by changing into the `robot-webshop` folder and running.
```
python -m venv .venv
```
- Install the necessary dependencies, like:
```
pip install -r requirements.txt
```
- Location of driver executables (*chromedriver.exe*, *geckodriver.exe*, etc.) needs to be in PATH variable

#### Execute Test Cases
In order to run the test cases, open a command line window in the project root folder. Then, run the following command:
```
robot --variable browser:<your_browser_of_choice> --outputdir Reports TestCases
```
You will need to set a value for the *browser* variable, or else the test cases will fail. The value of *browser* can be any value supported by **SeleniumLibrary**, that is, for a quick reference:

| Browser          | Name(s)                  |
|:-----------------|:-------------------------|
| Firefox          | firefox, ff              |
| Google Chrome    | googlechrome, chrome, gc |
| Headless Chrome  | headlesschrome           |
| Headless Firefox | headlessfirefox          |

Suppose you want to run the test cases on Google Chrome, the above command will look like this:
```
robot --variable browser:chrome --outputdir Reports TestCases
```
For full documentation on available browsers, please visit https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Open%20Browser.
