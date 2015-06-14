# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

causes = [
  ['Animals',''],
  ['Arts',''],
  ['Civil Rights',''],
  ['Community support',''],
  ['Disabilities',''],
  ['Disaster Relief',''],
  ['Education',''],
  ['Environment',''],
  ['Energy',''],
  ['Food',''],
  ['Global poverty',''],
  ['Government',''],
  ['Health',''],
  ['Homelessness',''],
  ['Human rights',''],
  ['Internet',''],
  ['Justice',''],
  ['Literacy',''],
  ['Mental health',''],
  ['Mobilising communities',''],
  ['Open Source',''],
  ['Politics',''],
  ['Poverty',''],
  ['Religion',''],
  ['Science',''],
  ['Seniors',''],
  ['Social entrepreneurship',''],
  ['Veterans',''],
  ['Volunteering',''],
  ['Women\'s issues',''],
  ['Youth','']
]

causes.each do |name|
  Cause.create(name: name)
end

skills = [
  ['Accounting',''],
  ['Art, Design and Illustration',''],
  ['Blogging',''],
  ['Brainstorming',''],
  ['Branding',''],
  ['Community Engagement',''],
  ['Copyediting',''],
  ['Copywriting',''],
  ['CMS usage',''],
  ['CRM usage',''],
  ['Data entry',''],
  ['Email',''],
  ['Finance',''],
  ['Fundraising',''],
  ['Human Resources',''],
  ['IT',''],
  ['Legal',''],
  ['LinkedIn',''],
  ['Marketing',''],
  ['Media - Digital Audio',''],
  ['Media - Digital Video',''],
  ['Media - Web & Mobile',''],
  ['Operations',''],
  ['Product Development',''],
  ['Public Relations',''],
  ['Recruitment',''],
  ['Research',''],
  ['Sales',''],
  ['Social Media',''],
  ['Training & Education',''],
  ['Transcriptions',''],
  ['Translation',''],
  ['Voluntering',''],
  ['Web Development','']
]

skills.each do |name|
  Skill.create(name: name)
end

# Organisations
red_cross = Organisation.create(name: 'Red Cross',description: '',image: 'http://www.crwflags.com/fotw/images/i/icrc.gif')
cure_our_kids = Organisation.create(name: 'Cure Our Kids',description: '',image: 'http://www.motherdriven.com.au/uploaded_files/document_uploads/Cure%20Or%20Kids%20gold%20ribbon.jpg')
oxfam = Organisation.create(name: 'Oxfam',description: '',image: 'https://pbs.twimg.com/profile_images/2536403210/95m3pbytgsf8erqlw0cc.png')
salvation_army = Organisation.create(name: 'Salvation Army',description: '',image: 'http://www.bluemts.com.au/imagesDB/news/51_6.jpg')

#Opportunities



#brad_pitt = Volunteer.create(first_name: 'Brad', last_name: 'Pitt', email: 'brad.pitt@gmail.com', image: 'http://img.timeinc.net/time/time100/2007/images/brad_pitt.jpg')
# volunteers = [
#   # first_name, last_name, email, image, IsCoordinator
#   ['Brad', 'Pitt', 'brad.pitt@gmail.com', 'http://img.timeinc.net/time/time100/2007/images/brad_pitt.jpg', false],
#   ['Angelina', 'Jolie', 'angelina.jolie@yahoo7.com.au', 'http://photos.laineygossip.com/articles/angelina-jolie-parenting-21may14-07.jpg', true]
# ]



