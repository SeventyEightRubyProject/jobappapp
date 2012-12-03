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
		job.applicant_list.push(self)
	end

	def applied_jobs
		puts "Job id: \t Job title: "	
		@joblist.each do |jobs|
			puts "#{jobs.id} \t\t #{jobs.title}"		
		end
	end

end

class Job
	@@job_counter = 0
	attr_accessor :id, :title, :applicant_list, :requestor
	
	@@joblist = []

	

	def self.show_jobs
		puts @@joblist
	end

	def initialize(title)
		@@job_counter += 1
		@id = @@job_counter
		@title = title
		@@joblist = @@joblist.push([id,title])
		@applicant_list = []
	end

	def showapplicants
		@applicant_list.each do |applicant|
			puts applicant.name
		end
	end


	def showrequester
		puts "req by : "+requestor.name
	end

end


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
#menu
# puts
# puts "********* MENU **********"
# puts "1. Post Job"
# puts "2. View Job list"
# puts "3. Exit"

# choice = gets

#create a new job

job = Job.new("Junior Assistant Engineer")
re = Requester.new(1,"Barun")
re.create_job(job)
applicant = Applicant.new("RDM")
applicant.apply(job)
job.showrequester

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

Job.show_jobs
job2.showapplicants