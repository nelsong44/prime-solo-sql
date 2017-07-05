/* 1) Get all users from Chicago. */
      SELECT * FROM syntax_practice WHERE city = 'chicago';

/* 2) Get all users with usernames that contain the letter a. */
      SELECT username FROM syntax_practice WHERE username LIKE '%a%';
      /* or */
      SELECT * FROM syntax_practice WHERE username LIKE '%a%';

/* 3) Update all records with an account balance of 0.00
      and a transactions_attempted of 0. Give them a new account balance of 10.00. */
      UPDATE syntax_practice SET account_balance = '10.00'
      WHERE account_balance = '0.00' AND transactions_attempted = 0;

/* 4) Select all users that have attempted 9 or more transactions. */
      SELECT username FROM syntax_practice WHERE transactions_attempted >= 9;
      /* or */
      SELECT * FROM syntax_practice WHERE transactions_attempted >= 9;

/* 5) Get the username and account balance of the 3 users with the
      highest balances, sort highest to lowest balance. */
      SELECT username, account_balance FROM syntax_practice
      ORDER BY account_balance DESC
      LIMIT 3;

/* 6) Get the username and account balance of the 3 users with the
      lowest balances, sort lowest to highest balance. */
      SELECT username, account_balance FROM syntax_practice
      ORDER BY account_balance ASC
      LIMIT 3;

/* 7) Get all users with account balances that are more than $100. */
      SELECT * FROM syntax_practice
      WHERE account_balance > '100.00';
/* 8) Add a new record. */
      /* had to include primary key within VALUES otherwise I wasa required
      to include the column names prior */
      INSERT INTO syntax_practice
      VALUES (11, 'giraffe', 'zootopia', 2, 2300456, '234023532.09');

      INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance)
      VALUES ('misterCat', 'zootopia', 99, 2234, '0.05');

/* 9) Delete users that reside in miami OR phoenix and
      have completed fewer than 5 transactions. */
      DELETE FROM syntax_practice
      WHERE (city = 'miami' OR city = 'phoenix')
      AND transactions_completed < 5;
