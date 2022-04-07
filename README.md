# List of Files 
1. `cache/`: store **cleaned** data that 
**(a)** are generated during a preprocessing step and
**(b)** don't need to be regenerated every single time you analyze your data.
**Note 1**: You can use the `cache()` function to store data to this directory automatically.
**Note 2**: Any data set found in both the `cache` and `data` directories will be drawn from `cache` instead of `data` based on ProjectTemplate's priority rules.

2. `config/`: store **configurations** settings for your project. 
**Note 1**: The scripts are customized for each project.
**Note 2**: Use the .dcf format that the `read.dcf()` function parses; or use config.R.

3. `data/`: store  **raw** data.

4. `doc/`: store  **documentation** that you've written about your analysis.

5. `graph/`: store **graphs** generated from analysis.

6. `lib/`: store your **customized functions**. 

7. `logs/`: store **log file** of any work you've done on this project. 
**Note 1**: use `log4r` package. 

8. `munge/`: store **data cleaning** code. 

9. `README.md`: intro file is used to provide project orientation. 

10. `report/`: store **output tables and reports**. 

11. `src/`: store **data analysis** code.

12. `test/`: store **test functions** code.

13. `TODO`: A **note** file on a project’s development or implementation status with a list of bugs and future improvement needs.


# about `README.md` 
The intro file is used to provide project orientation. The file defines project objectives and is intended to introduce project data, source code and configurations for repeatable research. The *.md file format is that of a basic text or markdown file. When saved to GitHub, it will be used to create an HTML project wiki.

---
# **Sample README.md file**
Project name: Predict car mileage
Project date: April 5, 2022
Project author: Nicole Golden
Data: mtcars
Model: simple linear regression
Results: N/A
 


