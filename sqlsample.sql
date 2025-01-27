{
  "tables": [
    {
      "name": "department",
      "columns": [
        { "name": "dept_id", "joiType": "number", "required": true },
        { "name": "dept_name", "joiType": "string", "required": true },
        { "name": "location", "joiType": "string", "required": false }
      ]
    },
    {
      "name": "employee",
      "columns": [
        { "name": "emp_id", "joiType": "number", "required": true },
        { "name": "first_name", "joiType": "string", "required": true },
        { "name": "last_name", "joiType": "string", "required": true }
      ]
    }
  ]
}
