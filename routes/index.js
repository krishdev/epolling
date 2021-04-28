var express = require('express');
var router = express.Router();
var mainControler = require('../controllers/main');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('results-home', { title: 'Express' });
});

/* GET about us page. */
router.get('/who-we-are/', function(req, res, next) {
  res.render('about-us', { title: 'Express' });
});

/* GET contact page. */
router.get('/contact-us/', function(req, res, next) {
  res.render('contact', { title: 'Express' });
});

/* GET disclaimer page. */
router.get('/disclaimer-privacy-policy/', function(req, res, next) {
  res.render('disclaimer', { title: 'Express' });
});

/* GET disclaimer page. */
router.get('/results/', function(req, res, next) {
  res.render('final-results', { title: 'Express' });
});

/* GET State and constituencies page. */
router.get('/your-state-and-constituency/', mainControler.stateAndConstituencies);
router.post('/your-state-and-constituency/', mainControler.castYourVote);

/* GET Cast Vote page. */
router.get('/cast-your-vote/', mainControler.castYourVote);
router.post('/cast-your-vote/', mainControler.saveVote);

/* Vote Success */
router.get('/assembly-vote-casted-successfully/', mainControler.successScreen);

/* API  */

router.post('/api/get-constitutions/', mainControler.getConstituencies);
router.post('/api/save-email/', mainControler.saveEmail);
router.post('/api/get-admin-results/', mainControler.getResults);

module.exports = router;
