const express = require('express');
const app = express();

// Serve static files (your HTML, JS)
app.use(express.static('.'));

// API endpoint
app.get('/api/module/:name', async (req, res) => {
  const url = `https://ronroblox.fandom.com/rest.php/v1/page/Module%3A${req.params.name}`;
  
  try {
    const response = await fetch(url);
    const data = await response.json();
    res.json(data);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.listen(3000, () => {
  console.log('Server running on http://localhost:3000');
});