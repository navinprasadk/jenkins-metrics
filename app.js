const express = require('express')
const request = require('request');
const json2xls = require('json2xls');
const fs = require('fs');
var alasql = require('alasql');
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


    request("http://52.168.160.132:8082/view/navin/job/seed%20project/api/json", {
        method: "GET",
        auth: {
          user: 'rig',
          pass: 'rig'
        }
      }, function (error, response, body) {
          if (!error && response.statusCode == 200) {
            const jobDetail = JSON.parse(body);
            let dataForExcel = [];
            let jobDetails = {};
            let buildDetails = [];

            let bil = jobDetail.builds.map((detail,key) => {
                  let info = {};
                  request(detail.url+"api/json", {
                      method: "GET",
                      auth: {
                        user: 'rig',
                        pass: 'rig'
                      }
                    }, function (error, response, body) {
                        if (!error && response.statusCode == 200) {
                          let buildDetail = JSON.parse(body);
                          info =
                            {
                              buildStatus:buildDetail.result, 
                              userName:buildDetail.actions[0].causes[0].userName != undefined ? buildDetail.actions[0].causes[0].userName : "",
                              buildDuration: buildDetail.duration,
                              buildNumber: buildDetail.number
                          };
                        } else {
                          console.log('error', error, response && response.statusCode);
                        } 
                    buildDetails.push(info);
                    if(jobDetail.builds.length === key+1 ) {
                        jobDetails["name"] = jobDetail.name;
                        jobDetails["description"] = jobDetail.description;
                        jobDetails["buildCount"] = jobDetail.nextBuildNumber-1;
                        jobDetails["buildDetails"] = buildDetails;
                        dataForExcel[0] = jobDetails;
                        // Here is search query
                        // var customised = alasql('SEARCH / AS @a \
                        //       UNION ALL( \
                        //         buildDetails AS @b \
                        //         RETURN(@a->buildNumber AS buildNumber, @a->buildStatus AS buildStatus, @a->buildDuration AS buildDuration, \
                        //           @a->buildNumber AS buildNumber, @a->visible AS visible, \
                        //           @b->id as [buildDetails.buildNumber], \
                        //         ) \
                        //       ) INTO XLSX("test411.xlsx",{headers:true})\
                        //       FROM ?',[dataForExcel]);
                        // console.log("customised",customised);
                        var xls = json2xls(dataForExcel);
                        fs.writeFileSync(jobDetail.name+'.xlsx', xls, 'binary');
                    }
                    });
                   
                    // return info;
              })
           
          } else {
            console.log('error', error, response && response.statusCode);
          }
      });
})

getBuildDetails = (url) => {
    let buildInfo = {};
   
}

app.listen(port, () => console.log(`Example app listening on port ${port}!`))