const express = require('express');
const { Sequelize } = require('./models/Product');
const routes = require('./routes');
// import sequelize connection
const sequelize = require('./config/connection');

const app = express();
const PORT = process.env.PORT || 3001;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(routes);

// Test DB
sequelize.authenticate()
.then(() => console.log('Database connected...'))
.catch(err => console.log('Error: ' + err))

sequelize.sync({ force: false }).then( () => {
  app.listen(PORT, () => {
    console.log(`App listening on port ${PORT}!`);
  });
});
