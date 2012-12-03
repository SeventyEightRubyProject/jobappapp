class Job
	attr_accessor :id, :title
	@@job_counter = 0
	@@joblist = [["0","No title"]]

	def initialize(title)
		@@job_counter += 1
		id = job_counter
		@title = title
		@@joblist << [[id,title]]
	end

end