const express = require('express')
const router = express.Router()

router.get('/', (req, res) => {
    res.send('<h1>This is Router index page<h1> <br> <a href="/" >HOME</a>')
})

router.post('/', (req, res) => {
    console.log('handling a POST request')
    res.end()
})


module.exports = router;