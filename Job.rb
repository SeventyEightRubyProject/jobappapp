class Job
	@@job_counter = 0
	attr_accessor :id, :title
	
	@@joblist = []

	def self.show_jobs
		puts @@joblist
	end
	def initialize(title)
		@@job_counter += 1
		id = @@job_counter
		@title = title
		@@joblist = @@joblist.push([[id,title]])
	end

end

j1 = Job.new("Junior Assistant")
j2 = Job.new("developer")

Job.show_jobs