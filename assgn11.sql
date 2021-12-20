use integra
db.createCollection("Student")
db.student.insertOne({name:"Rajeev", age:"24",sex:"m",mark:"88",place:"chennai"})
db.student.insertMany([{name:"Ravi", age:"23",sex:"m",mark:"82",place:"pondicherry"},
{name:"Reena", age:"22",sex:"f",mark:"98",place:"banglore"},
{name:"Rajeev", age:"24",sex:"m",mark:"88",place:"chennai"},
{name:"vishnu", age:"23",sex:"m",mark:"78",place:"chennai"},
{name:"Hiran", age:"26",sex:"m",mark:"93",place:"chennai"},
{name : "hinan",age : 24,sex : "m",mark : 87,place : "chennai"},
{name : "Rini",age : 24,sex : "f",mark : 76,place : "banglore"}])


db.student.aggregate([
    {
        $match:{place:"chennai"}
    },
    {
        $limit: 6
    },
    {
        $skip:3
    },
    {
        $group: { _id: "$age",
        count:{$count: { }}}
        
    },
    {
        $sort:{age:1}
    },
    {
        $project: {count:1}
    },
])