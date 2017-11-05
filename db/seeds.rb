company = Company.create(name: "Homestars Inc")

department = company.departments.create(name: 'Enginering')

position   = department.positions.create(title: 'Software Engineer')

position.position_attributes.create([{name: 'technical_abilities', weight: 80},
                                    {name: 'experience', weight: 20}])

position.applicants.create(first_name: "Yak", last_name: "Shave")
