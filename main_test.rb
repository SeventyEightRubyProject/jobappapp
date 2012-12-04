require 'job'
require 'applicant'
require 'requestor'



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
amit.apply(job3)
amit.apply(job2)


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
amit.name = "amit cha"
ObjectSpace.garbage_collect
#puts amit.name
# puts"\nApplicants for job 2"
job3.showapplicants