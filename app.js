  const express = require('express');
  const app = express();
  const port = process.env.PORT || 3000;

  app.use(express.json());

  app.post('/data', (req, res) => {
    const receivedData = req.body;
    res.json({
      message: 'Datos recibidos correctamente',
      data: receivedData
    });
  });

  app.listen(port, () => {
    console.log(`Servidor escuchando en el puerto ${port}`);
  });
