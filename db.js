// 1. Create a new database
use sample_db;
 
// 2. Drop collections if they exist
db.department.drop();
db.employee.drop();
db.project.drop();
db.employee_project.drop();
 
// 3. Department Collection
db.createCollection("department", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["dept_name"],
      properties: {
        dept_name: {
          bsonType: "string",
          description: "Department name is required and must be a string."
        },
        location: {
          bsonType: "string",
          description: "Location must be a string."
        }
      }
    }
  }
});
 
// 4. Employee Collection
db.createCollection("employee", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["first_name", "last_name", "salary"],
      properties: {
        first_name: {
          bsonType: "string",
          description: "First name is required and must be a string."
        },
        last_name: {
          bsonType: "string",
          description: "Last name is required and must be a string."
        },
        dob: {
          bsonType: "date",
          description: "Date of birth must be a valid date."
        },
        email: {
          bsonType: "string",
          pattern: "^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$",
          description: "Email must be a valid email address."
        },
        phone_number: {
          bsonType: "string",
          description: "Phone number must be a string."
        },
        salary: {
          bsonType: "decimal",
          description: "Salary is required and must be a decimal value."
        },
        hire_date: {
          bsonType: "date",
          description: "Hire date must be a valid date."
        },
        dept_id: {
          bsonType: "objectId",
          description: "Department ID must reference a valid ObjectId in the department collection."
        }
      }
    }
  }
});
 
// 5. Project Collection
db.createCollection("project", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["proj_name", "budget"],
      properties: {
        proj_name: {
          bsonType: "string",
          description: "Project name is required and must be a string."
        },
        start_date: {
          bsonType: "date",
          description: "Start date must be a valid date."
        },
        end_date: {
          bsonType: "date",
          description: "End date must be a valid date."
        },
        budget: {
          bsonType: "decimal",
          description: "Budget is required and must be a decimal value."
        }
      }
    }
  }
});
 
// 6. Employee_Project Collection
db.createCollection("employee_project", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["emp_id", "proj_id"],
      properties: {
        emp_id: {
          bsonType: "objectId",
          description: "Employee ID is required and must reference a valid ObjectId in the employee collection."
        },
        proj_id: {
          bsonType: "objectId",
          description: "Project ID is required and must reference a valid ObjectId in the project collection."
        },
        role: {
          bsonType: "string",
          description: "Role must be a string."
        },
        hours_worked: {
          bsonType: "decimal",
          minimum: 0,
          description: "Hours worked must be a decimal value greater than or equal to 0."
        }
      }
    }
  }
});
