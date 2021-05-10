import express from 'express';
import fs from 'fs';
import path from 'path';
import React from 'react';
import ReactDomServer from "react-dom/server";
import App from "../src/App";
import bodyParser from 'body-parser';
import AppState from '../src/AppState';
const fileUpload = require('express-fileupload');
const knex = require('knex')({
  client: 'mysql',
  connection: {
    host : '127.0.0.1',
    user : 'root',
    password : '',
    database : 'mis'
  }
});


const PORT = 3000;
const app = express();

app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());
app.use(fileUpload());
app.use(express.static(path.resolve(__dirname, '..', 'build')));

app.get('/', (req, res) => {
  fs.readFile(path.resolve("./build/index.html"), "utf-8", (err, data) => {
    if(err) {
      console.log(err);
      return res.status(500).send("Some error occured");
    }
    return res.send(
      data.replace(
        '<div id="root"></div>',
        `<div id="root">${ReactDomServer.renderToString(<App />)}</div>`
        )
      );
  });
});

app.post('/phdReportStatus', (req, res) => {
  
  knex('phdReportStatus').where('id', req.body.studentId)
  .then((phdReportStatus) => { 
    if(phdReportStatus[0]){
      phdReportStatus[0].status = 'true';
      return res.json(phdReportStatus[0]);
    }
    else{
      return res.json({status: 'false'});
    }
  })
  .catch((err) => console.log(err));
});

app.post('/studentDetails', (req, res) => {
  
  knex('user_details').where('id', req.body.studentId)
  .then((studentDetails) => {
    return res.json(studentDetails[0]);
  })
  .catch((err) => console.log(err));
});

app.post('/courseDetails', (req, res) => {
  
  knex('courseDetails').where('id', req.body.studentId)
  .then((courseDetails) => {
    return res.json(courseDetails);
  })
  .catch((err) => console.log(err));
});

app.post('/currentRegistration', (req, res) => {
  
  knex('currentRegistration').where('id', req.body.studentId)
  .then((currentRegistration) => { 
    return res.json(currentRegistration[0]);
  })
  .catch((err) => console.log(err));
});

app.post('/phdreportresearchproposal', (req, res) => {
    const uploadedFile = req.files.researchproposal;
    const filename = uploadedFile.name
    uploadedFile.mv(__dirname + '/uploads/' + filename, (err) => {
      if(err){
        return res.json({status: 'ERROR', message: err});
      }
      else {
        const researchproposalData = [{
          id: req.body.currentInputId,
          dateOfExamination: req.body.date,
          recommendationOfDSC: req.body.RecommendationOfDSC,
          DSCminutes: __dirname + '/uploads/' + filename,
          updatedOn: new Date(),
          updatedBy: req.body.userName
        }];
        knex('researchProposalSeminar').insert(researchproposalData)
        .then(() => {
          knex('phdReportStatus').where('id',req.body.currentInputId).update({ researchProposalSeminar: 'updated' })
          .then((count) => {
            knex('researchProposalSeminar').where('id', req.body.currentInputId)
            .then((details) => {
              details[0].status='SUCCESS';
              details[0].message='File Uploaded'
              return res.json(details[0]);
            })
            .catch((error) => { 
              return res.json({status: 'ERROR', message: error});
            });
          })
          .catch((error) => { 
            return res.json({status: 'ERROR', message: error});
          });
        }).catch((error) => { 
          return res.json({status: 'ERROR', message: error});
        });
      }
    });  
});

app.post('/phdreportpresubmission', (req, res) => {
  const uploadedFile = req.files.presubmission;
  const filename = uploadedFile.name
  uploadedFile.mv(__dirname + '/uploads/' + filename, (err) => {
    if(err){
      return res.json({status: 'ERROR', message: err});
    }
    else {
      const presubmissionData = [{
        id: req.body.currentInputId,
        dateOfExamination: req.body.date,
        recommendationOfDSC: req.body.RecommendationOfDSC,
        DSCminutes: __dirname + '/uploads/' + filename,
        updatedOn: new Date(),
        updatedBy: req.body.userName
      }];
      knex('preSubmissionSeminar').insert(presubmissionData)
      .then(() => {
        knex('phdReportStatus').where('id',req.body.currentInputId).update({ preSubmissionSeminar: 'updated' })
        .then((count) => {
          knex('preSubmissionSeminar').where('id', req.body.currentInputId)
          .then((details) => {
            details[0].status='SUCCESS';
            details[0].message='File Uploaded'
            return res.json(details[0]);
          })
          .catch((error) => { 
            return res.json({status: 'ERROR', message: error});
          });
        })
        .catch((error) => { 
          return res.json({status: 'ERROR', message: error});
        });
      }).catch((error) => { 
        return res.json({status: 'ERROR', message: error});
      });
    }
  });  
});

app.post('/phdreportcomprehensiveexamination', (req, res) => {
  
    const uploadedFile = req.files.comprehensiveexamination;
    const filename = uploadedFile.name
    uploadedFile.mv(__dirname + '/uploads/' + filename, (err) => {
      if(err){
        return res.json({status: 'ERROR', message: err});
      }
      else {
        const comprehensiveexaminationData = [{
          id: req.body.currentInputId,
          dateOfExamination: req.body.date,
          recommendationOfDSC: req.body.RecommendationOfDSC,
          DSCminutes: __dirname + '/uploads/' + filename,
          updatedOn: new Date(),
          updatedBy: req.body.userName
        }]
        knex('comprehensiveExamination').insert(comprehensiveexaminationData)
        .then(() => {
          knex('phdReportStatus').where('id',req.body.currentInputId).update({ comprehensiveExamination: 'updated' })
          .then((count) => {
            knex('comprehensiveExamination').where('id', req.body.currentInputId)
            .then((details) => {
              details[0].status='SUCCESS';
              details[0].message='File Uploaded'
              return res.json(details[0]);
            })
            .catch((error) => { 
              return res.json({status: 'ERROR', message: error});
            });
          })
          .catch((error) => { 
              return res.json({status: 'ERROR', message: error});
          });
        }).catch((error) => { 
        return res.json({status: 'ERROR', message: error});
      });
    }
  });  
});

app.post('/phdreportjrftosrf', (req, res) => {

    const uploadedFile = req.files.jrftosrf;
    const filename = uploadedFile.name
    uploadedFile.mv(__dirname + '/uploads/' + filename, (err) => {
      if(err){
        return res.json({status: 'ERROR', message: err});
      }
      else {
        const jrftosrfData = [{
          id: req.body.currentInputId,
          DSCminutes: __dirname + '/uploads/' + filename,
          convertedOn: new Date(),
          convertedBy: req.body.userName
        }]
        knex('jrfToSrf').insert(jrftosrfData)
        .then(() => {
          knex('phdReportStatus').where('id',req.body.currentInputId).update({ jrfToSrf: 'updated' })
          .then((count) => {
            knex('jrfToSrf').where('id', req.body.currentInputId)
            .then((details) => {
              details[0].status='SUCCESS';
              details[0].message='File Uploaded'
              return res.json(details[0]);
            })
            .catch((error) => { 
              return res.json({status: 'ERROR', message: error});
            });
          })
          .catch((error) => { 
              return res.json({status: 'ERROR', message: error});
          });
        }).catch((error) => { 
        return res.json({status: 'ERROR', message: error});
      });
    }
  });  
});

app.post('/phdreportvivavoce', (req, res) => {
    
    const uploadedFile = req.files.vivavoce;
    const filename = uploadedFile.name
    uploadedFile.mv(__dirname + '/uploads/' + filename, (err) => {
      if(err){
        return res.json({status: 'ERROR', message: err});
      }
      else {
        const vivavoceData = [{
          id: req.body.currentInputId,
          dateOfExamination: req.body.date,
          result: req.body.Result,
          DSCminutes: __dirname + '/uploads/' + filename,
          updatedOn: new Date(),
          updatedBy: req.body.userName
        }]
        knex('phdVivaVoce').insert(vivavoceData)
        .then(() => {
          knex('phdReportStatus').where('id',req.body.currentInputId).update({ phdVivaVoce: 'updated' })
          .then((count) => {
            knex('phdVivaVoce').where('id', req.body.currentInputId)
            .then((details) => {
              details[0].status='SUCCESS';
              details[0].message='File Uploaded'
              return res.json(details[0]);
            })
            .catch((error) => { 
              return res.json({status: 'ERROR', message: error});
            });
          })
          .catch((error) => { 
            return res.json({status: 'ERROR', message: error});
          });
        })
        .catch((error) => { 
          return res.json({status: 'ERROR', message: error});
        });
      }
    });  
});

app.post('/presubmissionDetails', (req, res) => {
  
  knex('preSubmissionSeminar').where('id', req.body.studentId)
  .then((presubmissiondetails) => {
    return res.json(presubmissiondetails[0]);
  })
  .catch((err) => console.log(err));
});

app.post('/comprehensiveExaminationDetails', (req, res) => {
  
  knex('comprehensiveExamination').where('id', req.body.studentId)
  .then((comprehensiveexaminationdetails) => {
    return res.json(comprehensiveexaminationdetails[0]);
  })
  .catch((err) => console.log(err));
});

app.post('/researchProposalDetails', (req, res) => {
  
  knex('researchProposalSeminar').where('id', req.body.studentId)
  .then((researchproposaldetails) => {
    return res.json(researchproposaldetails[0]);
  })
  .catch((err) => console.log(err));
});

app.post('/jrfToSrfDetails', (req, res) => {
  
  knex('jrfToSrf').where('id', req.body.studentId)
  .then((jrftosrfdetails) => {
    return res.json(jrftosrfdetails[0]);
  })
  .catch((err) => console.log(err));
});

app.post('/vivaVoceDetails', (req, res) => {
  
  knex('phdVivaVoce').where('id', req.body.studentId)
  .then((vivavocedetails) => {
    return res.json(vivavocedetails[0]);
  })
  .catch((err) => console.log(err));
});

let currentStudentId = '';

app.get('/ComprehensiveExaminationDownload/:adm', (req, res) => {
  knex('comprehensiveExamination').where('id', req.params.adm)
  .then((details) => {
    const filepath = details[0].DSCminutes;
    return res.download(filepath);
  })
  .catch((err) => console.log(err));
})

app.get('/ResearchProposalDownload/:adm', (req, res) => {
  knex('researchProposalSeminar').where('id', req.params.adm)
  .then((details) => {
    const filepath = details[0].DSCminutes;
    return res.download(filepath);
  })
  .catch((err) => console.log(err));
})

app.get('/JrfToSrfDownload/:adm', (req, res) => {
  knex('jrfToSrf').where('id', req.params.adm)
  .then((details) => {
    const filepath = details[0].DSCminutes;
    return res.download(filepath);
  })
  .catch((err) => console.log(err));
})

app.get('/PreSubmissionDownload/:adm', (req, res) => {
  knex('preSubmissionSeminar').where('id', req.params.adm)
  .then((details) => {
    const filepath = details[0].DSCminutes;
    return res.download(filepath);
  })
  .catch((err) => console.log(err));
})

app.get('/VivaVoceDownload/:adm', (req, res) => {
  knex('phdVivaVoce').where('id', req.params.adm)
  .then((details) => {
    const filepath = details[0].DSCminutes;
    return res.download(filepath);
  })
  .catch((err) => console.log(err));
})

app.listen(PORT, () => {
  console.log(`Server started on port ${PORT}`);
})
/*  Student Details
	course details
	current details
	phd report
*/
