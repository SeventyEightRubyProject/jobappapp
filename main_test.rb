class Applicant
	attr_accessor :id, :name
	@joblist = []
	@@applicant_count = 0

	def initialize(name)
		@@applicant_count += 1
		@id = @@applicant_count
		@name = name
		@joblist = []
	end

	def apply(job)
		@joblist = @joblist.push(job)
	end

	def applied_jobs
		@joblist.each do |jobs|
			puts "Job id: #{jobs.id} \t Job title: #{jobs.title	}"		
		end
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
		@id = @@job_counter
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
applicant = Applicant.new("RDM")
applicant.apply(job)
#job.applicants

job2 = Job.new("developer")
applicant.apply(job2)
applicant.applied_jobs

Job.show_jobs

amit = Applicant.new("Amit s")
amit.apply(job2)
puts "amit ko job"
amit.applied_jobs

job3 = Job.new("bhada majhne")
applicant.apply(job3)
applicant.applied_jobs