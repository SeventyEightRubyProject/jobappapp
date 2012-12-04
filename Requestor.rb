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


end 