class Project < ApplicationRecord
  has_many :tasks

  def number_of_tasks_desc #Получения кол-ва задач в каждом проекте, с сортировкой проектов по названию
    Project.joins(:tasks).map {|p|
      {
          name: p.name,
          count: p.tasks.count
      }
      }.uniq.sort_by! {|n| n[:name] }

  end

  def number_of_tasks_sorted_by_projects_names #Получение кол-ва задач в каждом из проектов с сортировкой проектов по кол-ву задач по убыванию
    Project.joins(:tasks).map {|p|
      {
          name: p.name,
          count: p.tasks.count
      }
      }.uniq.sort! { |b,a| a[:count] <=> b[:count] }
  end


  def projects_with_a_in_the_middle_of_name #Получение всех проектов, у которых есть символ 'a' в середине названия

  Project.joins(:tasks).find_by_sql("SELECT * FROM 'projects' WHERE SUBSTR('projects'.'name', LENGTH('projects'.'name')/2+1, 1) = 'a'").map { |p|
         {name: p.name,
          count: p.tasks.count
           }
         }

  end

end



