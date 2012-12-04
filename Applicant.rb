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
		max_length = 20;
		puts "Job id:\t\tJob title: \t\t requested by:"	
		@joblist.each do |jobs|
			max_length = 30;
			# if(max_length < jo)
				max_length -= jobs.title.length
				# puts jobs.title.length
			printf "%s \t\t%s %#{max_length}s\n", jobs.id, jobs.title, jobs.requestor.name		
		end
	end

end