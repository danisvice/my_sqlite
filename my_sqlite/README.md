# Welcome to My Sqlite
***

## Task
The task is to implement a custom sqlite CSV file data manipulation program. The software architecure must follow SQLITE 
but utilize Ruby in order to complete the challenge.
## Description

## Getting Started

1. **Prerequisites**: Ensure you have Ruby installed on your system. You can check if Ruby is installed by running `ruby -v` in the terminal.

2. **Download Code**: Download the `my_sqlite_request.rb` file and the `my_sqlite_cli.rb` script to a directory on your machine.

3. **Create CSV Files**: Create CSV files that correspond to the tables you'll be querying. The CSV files should be named after the table names with a ".csv" extension (e.g., "table_name.csv").

## `MySqliteRequest` Methods

The `MySqliteRequest` class provides methods to build and execute SQL-like queries on CSV files. Below are the methods available in the class:

### `self.insert(table)`

- Description: Creates a new `MySqliteRequest` instance for inserting data into a table.
- Parameters: `table` - The name of the table where data will be inserted.
- Returns: A new `MySqliteRequest` instance.

### `self.from(table)`

- Description: Creates a new `MySqliteRequest` instance for querying data from a table.
- Parameters: `table` - The name of the table to query from.
- Returns: A new `MySqliteRequest` instance.

### `self.update(table)`

- Description: Creates a new `MySqliteRequest` instance for updating data in a table.
- Parameters: `table` - The name of the table to update.
- Returns: A new `MySqliteRequest` instance.

### Other Methods

- `select(*columns)`: Specify columns to select in a query.
- `where(column, criteria)`: Add a WHERE condition to a query.
- `join(column1, table2, column2)`: Perform a JOIN operation between two tables.
- `order(order, column)`: Order query results by a column.
- `values(data)`: Set data for an INSERT query.
- `set(data)`: Set data for an UPDATE query.
- `delete`: Mark a DELETE operation.

### `run`

- Description: Execute the built query and return results.
- Returns: An array of query results.

## Installation
1. **Navigate to Directory**: Open a terminal or command prompt and navigate to the directory containing the script files (`my_sqlite_request.rb` and `my_sqlite_cli.rb`) and the CSV files.

2. **Run the CLI**: Enter the following command to start the CLI:
   ```
   ruby my_sqlite_cli.rb
   ```
3. **Interact with the CLI**: Once the CLI is running, you can enter SQL-like commands to interact with the CSV data. Supported commands include:

   - `SELECT * FROM table_name`
   - `INSERT INTO table_name values John Doe john@example.com A https://example.com`
   - `UPDATE table_name SET email = 'new@example.com' WHERE name = 'John Doe'`
   - `DELETE FROM table_name WHERE name = 'John Doe'`
   - `quit` to exit the CLI.

4. **Review Results**: The CLI will display the results of your queries, or an appropriate message if no results are available.

## Usage
MySqlite CLI is a simple command-line interface (CLI) that allows you to perform basic SQL-like operations on CSV files using the `MySqliteRequest` class. This README provides an overview of the available methods and how to use the program.

```
./my_project argument1 argument2
```

### The Core Team


<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px'></span>

