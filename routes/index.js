const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    console.log('at the main route');
    let query = "SELECT ID, name, image, description FROM tbl_portfolio_projects";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }
        console.log(result);
        res.render('home', { people: result });
     })
})

router.get('/users/:id', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the user route');
    console.log(req.params.id) // 1, 2 3 or whatever comes after the slash
    let query = `SELECT * FROM tbl_portfolio_projects WHERE ID="${req.params.id}"`;
    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }
        console.log(result); // should see objects wrapped in an array

        //convert the social property into an array
        //before we send it thru
        //map is an array method that lets you map one value to another (convert it)
        result[0].purpose = result[0].purpose.split(",").map(function(item) {
            item = item.trim();
            //item.trim() removes any empty white space from text

            return item;
        })

        console.log("after trim / conversion:", result[0]);

        // render the home view with dynamic data
        res.json(result[0]);
    })
})

module.exports = router;