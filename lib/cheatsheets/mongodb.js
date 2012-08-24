// Collections 
db.users.find({name:"Giorgio"});
db.users.find({name:"Giorgio", type:"admin"});
db.users.count({type:"admin"});
db.users.count({"membership" : { $size : 0}});
db.users.find({"platform.name":"facebook"});
db.users.find().forEach(function (u) { 
    if (u.location == 'Italy') { 
        u.location = 'Italia'; db.users.save(u); 
    }
});
db.users.drop();
db.users.remove({'filter goes here'})
// }}}
// Admin 
mongodump -d databaseName -o . // dump database to pwd
mongorestore // restore a db after dumping it
// }}}
