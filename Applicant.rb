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
		@joblist = @joblist.sort_by{|a| a.id}
		job.applicant_list.push(self)
	end

	def applied_jobs
		puts "Job id: \t Job title: \t requested by:"	
		@joblist.each do |jobs|
			puts "#{jobs.id} \t\t #{jobs.title}"		
		end
	end

end