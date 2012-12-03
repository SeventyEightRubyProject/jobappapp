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
		puts "Job id: \t Job title: \t requested by:"	
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
		puts "Job id: \t Job title: \t\t Requested by:"

		@@joblist.each do |job|
			puts "#{job.id} \t\t #{job.title} \t\t\t #{job.requestor.name}"
		end
	end

	def initialize(title)
		@@job_counter += 1
		@id = @@job_counter
		@title = title
		@@joblist = @@joblist.push(self)
		@applicant_list = []
	end

	def showapplicants
			puts "Applicant List for #{self.title}"
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


re = Requester.new(1,"Barun")
req2 = Requester.new(2,"bhanu")

job = Job.new("Junior Engineer")
job2 = Job.new("developer")
job3 = Job.new("QA")

re.create_job(job)
re.create_job(job2)
req2.create_job(job3)

applicant = Applicant.new("RDM")
amit = Applicant.new("Amit s")

applicant.apply(job)
applicant.apply(job3)
amit.apply(job2)
amit.apply(job3)

puts "All job lists"
Job.show_jobs
puts "\n requester"
job.showrequester

#job.applicants
puts "\nAllpied jobs by applicant 1"
applicant.applied_jobs






puts "amit ko job"
amit.applied_jobs

applicant.applied_jobs

puts"\nApplicants for job 2"
job3.showapplicants