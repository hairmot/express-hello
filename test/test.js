const request = require('supertest');
const app = require('../app');

describe('App', function() {
  it('has the default page', function(done) {
    request(app)
      .get('/')
      .expect(/I welcome you to Express/, done);
  });
}); 
