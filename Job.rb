
class Job
	@@job_counter = 0
	attr_accessor :id, :title, :applicant_list, :requestor
	
	@@joblist = []

	

	def self.show_jobs
		puts "Job id: \t Job title: \t\t Requested by:"

		@@joblist.each do |job|
			puts "#{job.id} \t\t #{job.title} \t\t #{job.requestor.name}"
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