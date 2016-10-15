README

This is a reproducible document with a simple linear regression project inside.  Running make with this directory as the working directory will create the final report.html file inside report/.  This makefile uses R’s built-in HTML generator to use dynamic inline code and other RMD-specific features.

images/ contains the plots used in the report
data/ contains the raw data files
code/ contains scripts used to generate various summaries and charts
report/ contains the .Rmd that holds most of the final report

IMPORTANT NOTE:  This report will not render correctly if just viewing the Markdown file on git or in any non-R markdown viewer.  Make sure you download the HTML file from report/ and view that in a browser.