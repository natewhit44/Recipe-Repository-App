var mysql = require("mysql");

// First you need to create a connection to the db

// ADD ENVIRONMENT VARIABLES!!!
var con = mysql.createConnection({
  host: "mysql.cs.orst.edu",
  user: "cs290_whitlocn",
  password: "2093",
  database: "cs290_whitlocn"
});

con.connect(function(err){
  if(err){
    console.log('Error connecting to Db: ', err);
    return;
  }
  console.log('Connection established');
});

con.end(function(err) {
  // The connection is terminated gracefully
  // Ensures all previously enqueued queries are still
  // before sending a COM_QUIT packet to the MySQL server.
});
