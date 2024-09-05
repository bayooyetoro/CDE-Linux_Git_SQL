# Folder creation and env variable for dataset link 
url="https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv"
mkdir -p ./Raw
mkdir -p ./Transformed
mkdir -p ./Gold

# Downloading data to raw directory
echo "Downloading Dataset ..."
curl -o ./Raw/dataset.csv $url
echo "Now checking file existence in raw folder ..."

# Check for file existence to confirm download
test -f ./Raw/dataset.csv && echo "Dataset.csv exists in Raw" || echo "File does not exist in Raw"

# Renaming a column
sed -i 's/Variable_code/variable_code/g' ./Raw/dataset.csv 

# Cut the specified columns and save them to 2023_year_finance
cut -d',' -f1,5,6,9 ./Raw/dataset.csv > ./Transformed/2023_year_finance.csv

# Check transformed file in Transformed folder
if [ -f Transformed/2023_year_finance.csv ]; then
    echo "2023_year_finance.csv exists Transformed folder."
else
    echo "File does not exist in Transformed."
fi

# Loading into Gold
cp ./Transformed/2023_year_finance.csv ./Gold/
test -f ./Gold/2023_year_finance.csv && echo "File exists Gold folder." || echo "File does not exist in Gold."



#############################################
#    MOVING 3 JSON FILES AND 3 CSV FILES    #
#############################################

# Making json_and_csv directory
DESTINATION="./json_and_csv"
mkdir $DESTINATION

# Check/Create directory
if [ ! -d "$DESTINATION" ]; then
    mkdir "$DESTINATION"
fi

# Move all .csv and .json files in working dir to the destination directory
mv ./*.csv ./*.json "$DESTINATION" 2>/dev/null

# Check if any files were moved and print appropriate message
if [ $? -eq 0 ]; then
    echo "The CSV and JSON files have been moved to the $DESTINATION folder."
else
    echo "No CSV or JSON files found to move."
fi









