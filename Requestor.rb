require 'job'
class Requester
	attr_accessor :id, :name, :requested_jobs

	def initialize(id, name)
		@id = id
		@name = name
		@requested_jobs = []
	end

	def create_job(job)
		requested_jobs.push(job)
		job.requestor=self
	end

	def deletejob(job)

		Job.delete_job(job) if requested_jobs.include?(job)
	else puts "has no authority"
	end


end 