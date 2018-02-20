class Task < ApplicationRecord
  belongs_to :project

  def sort_uniq_status_tasks_by_alphabet #запрос для получения всех уникальных статусов задач, отсортированных по алфавиту
    Task.distinct.pluck(:status).sort!
  end

  def tasks_by_projects_starts_with_n #получение задач для всех проектов с именем, начинающимся на 'N'
    Task.joins(:project).where("projects.name like ?", "%N%")
    #Task.joins(:project).where('substr(projects.name, 1, 1) = ?', 'N') можно и так
  end

  def multiple_duplicate_tasks_names #получение списка задач с дублирующимися именами, отсортированных по алфавиту
    Task.select(:name).group(:name).having("count(*) > 1").pluck(:name).sort!
  end

end
