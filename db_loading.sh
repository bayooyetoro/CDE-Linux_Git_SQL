# Load the environment variables from the .env file
if [ -f .env ]; then
  export $(cat .env | xargs)
else
  echo ".env file not found! Exiting..."
  exit 1
fi

# List of CSV files to be imported
csv_files=("file1.csv" "file2.csv" "file3.csv")

# Iterate over the CSV files
for file in "${csv_files[@]}"; do
    # Extract the table name from the filename (remove the extension)
    table_name=$(basename "$file" .csv)

    # Import the CSV file into the PostgreSQL database
    PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME -c "\COPY $table_name FROM '$file' CSV HEADER;"

    if [ $? -eq 0 ]; then
        echo "Successfully imported $file into $table_name table."
    else
        echo "Failed to import $file. Please check the file and try again."
    fi
done
