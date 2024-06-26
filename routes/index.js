var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { description: 'Created using Node, Express, Docker, and Kubernetes.' });
});

module.exports = router;