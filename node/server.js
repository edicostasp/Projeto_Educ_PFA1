const express = require('express');
const mysql = require('mysql');

const app = express();

app.get('/', (req, res) => {
  res.contentType('text/html');

  const con = mysql.createConnection({
    host: 'mysql',
    user: 'root',
    password: 'root',
    database: 'fullcycle_desafio1',
  });

  con.connect((err) => {
    if (err) {
      return res.status(500).send(err);
    }

    con.query('SELECT * FROM fullcyclemodules', (err, rows) => {
      if (err) {
        return res.status(500).send(err);
      }

      let html = `
        <html>
          <head>
            <title>Aceleração FullCycle Docker</title>
          </head>
          <body border=1>
            <h2>Aceleração FullCycle Docker</h2>
            <h3>Quais modulos irei cursar no Full Cycle</h3>
            <table>
              <thead>  
                <tr>
                  <th>ID</th>
                  <th>Módulo</th>
                </tr>
              </thead>
              <tbody>
      `;

      rows.forEach((row) => {
        html += `
                <tr>
                  <td>${row.id}</td>
                  <td>${row.title}</td>
                </tr>
        `;
      });

      html += `
              </tbody>
            </table>
          </body>
        </html>
      `;

      con.end();

      return res.send(html);
    });
  });
});
app.listen(3000, () => {
  console.log('Server has been started on port 3000');
});