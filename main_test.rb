require 'job'
require 'applicant'
require 'requestor'

# menu
# puts
# puts "********* MENU **********"
# puts "1. Post Job"
# puts "2. View Job list"
# puts "3. Exit"

# choice = gets

# create a new job
cloud_factory = Requester.new(1, 'CloudFactory')
sprout = Requester.new(2, 'Sprout')

job = Job.new('Junior Engineer')
job2 = Job.new('Developer')
job3 = Job.new('QA')

cloud_factory.create_job(job)
cloud_factory.create_job(job2)
sprout.create_job(job3)

applicant = Applicant.new('RDM')
amit = Applicant.new('Amit s')

applicant.apply(job)
applicant.apply(job3)
amit.apply(job3)
amit.apply(job2)

puts 'All job lists'
Job.show_jobs
puts "\n requester"
job.showrequester

# job.applicants
puts "\nApplied jobs by applicant 1"
applicant.applied_jobs

puts 'amit ko job'
amit.applied_jobs

applicant.applied_jobs
amit.name = 'amit cha'
ObjectSpace.garbage_collect
# puts amit.name
# puts"\nApplicants for job 2"
job3.showapplicants
cloud_factory.deletejob(job3)
puts 'All job lists'
Job.show_jobs
