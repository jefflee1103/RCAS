# RCAS 0.99.7
- Added selfContained argument to runReport function so that the generated html report can be arranged to be standalone (slow to load but self-contained) or not (fast to load but external dependencies have to be shipped with the html file). 
- Updated motif analysis chunk in report.Rmd script. Query regions shorter than 15 bp are resized to 15bp to enable motif search in datasets with short interval queries. 

# RCAS 0.99.6
fixed repository issue - version bump to 0.99.6

# RCAS 0.99.5
New features:
- DT::datatables in the report now contain buttons to export data tables to CSV, Excel, PDF, or
print or copy the data. 
- with a new option in runReport function 'printProcessedTables', when set to TRUE, the raw data generated to make all tables and figures can be printed to text files in the working directory. 
- A new table is added at the beginning of the runReport output, that shows the input settings
used to run the document
- A sessionInfo() is added to the end of the runReport output
- Added 'quiet' option to runReport function to optionally suppress progress bars and messages during report generation.

Bug fixes
- With the new plotly version release, the download button for plotly generated figures in the 
report html works. 


# RCAS 0.99.4
New features: 
- Additional coverage profile plots for Transcription Start/End Sites
- Better ranking of GO and MSIGDB terms using both FDR and fold change values
- Minor bug fix for motif analysis in the reporting script

# RCAS 0.99.3
Made one minor revision 
- Cleaned up the directory inst/

# RCAS 0.99.2 
Made two minor revisions asked by the reviewer:
- manual loading of some packages manually in the vignette is cancelled
- a NOTE flagged by R CMD Check about a global variable has been fixed 

# RCAS 0.99.1
RCAS has been built on Linux, Mac, and Windows.
The package built without errors or warnings on all platforms.

http://bioconductor.org/spb_reports/RCAS_0.99.1_buildreport_20160419074009.html

# RCAS 0.99.0
Pre-release version of RCAS (RNA Centric Annotation System)


