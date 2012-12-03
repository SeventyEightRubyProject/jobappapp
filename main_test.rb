class Applicant
	attr_accessor :id, :name

	def initialize(id, name)
		@id = id
		@name = name
	end

	def apply
	end

	def applied_jobs
	end

end

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

#menu
# puts
# puts "********* MENU **********"
# puts "1. Post Job"
# puts "2. View Job list"
# puts "3. Exit"

# choice = gets

#create a new job
job = Job.new("Junior Assistant Engineer")
applicant = Applicant.new("")
applicant.apply(job)
applicant.jobs
job.applicants

j2 = Job.new("developer")

Job.show_jobs