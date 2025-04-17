const express = require('express');
const router = express.Router();
const { getDashboardStats } = require('../controllers/dashbroadController');


router.get('/dashboard-stats', getDashboardStats);

module.exports = router;
