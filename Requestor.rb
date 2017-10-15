require 'job'
# class to create or delete jobs
class Requester
  attr_accessor :id, :name, :requested_jobs

  def initialize(id, name)
    @id = id
    @name = name
    @requested_jobs = []
  end

  def create_job(job)
    requested_jobs.push(job)
    job.requestor = self
  end

  def delete_job(job)
    if requested_jobs.include?(job)
      Job.delete_job(job)
    else
      puts 'Job not found'
    end
  end
end
