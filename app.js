const express = require('express')
const request = require('request');
const json2xls = require('json2xls');
const fs = require('fs');
const app = express()
const port = 3000

app.use(json2xls.middleware);


app.get('/', (req, res) => {
    // var username = 'kishanlalbj';
    //  var password = 'test123';
    //     var auth = 'Basic ' + Buffer.from(username + ':' + password).toString('base64');



    //   var options = {
    //     host: 'kishan-jenkins.eastus.cloudapp.azure.com',
    //     port: 8080,
    //     path: '/job/Openshift/api/json',
    //     headers: {
    //      'Authorization': 'Basic ' + Buffer.from(username + ':' + password).toString('base64')
    //    }         
    // };


    // http.request(options, function(res,err) {
    //     if(err) 
    //          console.log(err);

    //     console.log('STATUS: ' + res.statusCode);
    //     res.setEncoding('utf8');
    //     res.on('data', function (chunk) {
    //       console.log('BODY: ' + chunk);
    //     });
    //   }).end();


    request("http://52.168.160.132:8082/view/navin/job/NodeJS%20example/api/json", {
        method: "GET",
        auth: {
          user: 'rig',
          pass: 'rig'
        }
      }, function (error, response, body) {
          if (!error && response.statusCode == 200) {
            const jobDetail = JSON.parse(body);
            let dataForExcel = [];
            dataForExcel.push({ "name": jobDetail.name,"description":jobDetail.description, "buildCount":jobDetail.nextBuildNumber-1})
            let buildDetails= jobDetail.builds.map(detail => {
                console.log("detail.url",detail.url);
                getBuildDetails(detail.url);
            })
            var xls = json2xls(dataForExcel);
            // fs.writeFileSync(jobDetail.name+'.xlsx', xls, 'binary');
          } else {
            console.log('error', error, response && response.statusCode);
          }
      });
})

getBuildDetails = (url) => {
    request(url+"api/json", {
        method: "GET",
        auth: {
          user: 'rig',
          pass: 'rig'
        }
      }, function (error, response, body) {
          if (!error && response.statusCode == 200) {
            let buildDetail = JSON.parse(body);
            let detailsArr = [];
            detailsArr.push({buildStatus:buildDetail.result, userName:buildDetail.actions[0].causes[0].userName})
            console.log("detailsArr",detailsArr);
          } else {
            console.log('error', error, response && response.statusCode);
          }
      });
}

app.listen(port, () => console.log(`Example app listening on port ${port}!`))