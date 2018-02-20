# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projects = Project.create([{name: 'start'}, {name: 'alpha'}, {name: 'beta'}, {name: 'Ngamma'}])

tasks = Task.create([{name: 'first_task_start', status: 'on', project_id: 1},
                     {name: 'second_task_start', status: 'off', project_id: 1},
                     {name: 'third_task_start', status: 'canceled', project_id: 1},

                     {name: 'first_task_alpha', status: 'waiting', project_id: 2},
                     {name: 'N_task_alpha', status: 'running', project_id: 2},
                     {name: 'second_task_alpha', status: 'ready', project_id: 2},
                     {name: 'last_task_alpha', status: 'on', project_id: 2},

                     {name: 'AaA', status: 'on', project_id: nil},
                     {name: 'bbb', status: 'off', project_id: nil},
                     {name: 'ccc', status: 'on', project_id: nil},

                     {name: 'first_task_start', status: 'on', project_id: 4},
                     {name: 'second_task_start', status: 'on', project_id: 4}])

