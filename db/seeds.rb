# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# causes = [
#   ['Animals',''],
#   ['Arts',''],
#   ['Civil Rights',''],
#   ['Community support',''],
#   ['Disabilities',''],
#   ['Disaster Relief',''],
#   ['Education',''],
#   ['Environment',''],
#   ['Energy',''],
#   ['Food',''],
#   ['Global poverty',''],
#   ['Government',''],
#   ['Health',''],
#   ['Homelessness',''],
#   ['Human rights',''],
#   ['Internet',''],
#   ['Justice',''],
#   ['Literacy',''],
#   ['Mental health',''],
#   ['Mobilising communities',''],
#   ['Open Source',''],
#   ['Politics',''],
#   ['Poverty',''],
#   ['Religion',''],
#   ['Science',''],
#   ['Seniors',''],
#   ['Social entrepreneurship',''],
#   ['Veterans',''],
#   ['Volunteering',''],
#   ['Women\'s issues',''],
#   ['Youth','']
# ]

# causes.each do |name|
#   Cause.create(name: name)
# end

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
  #['IT',''],
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
  ['Voluntering','']
  #['Web Development','']
]

skills.each do |name|
  Skill.create(name: name)
end

design = Skill.create(name: 'Design')
public_relation = Skill.create(name: 'Public Relations')
social_media = Skill.create(name: 'Social Media')
human_resources = Skill.create(name: 'Human Resources')

# Organisations
red_cross = Organisation.create(name: 'Red Cross',description: '',image: 'http://www.crwflags.com/fotw/images/i/icrc.gif')
cure_our_kids = Organisation.create(name: 'Cure Our Kids',description: '',image: 'http://www.motherdriven.com.au/uploaded_files/document_uploads/Cure%20Or%20Kids%20gold%20ribbon.jpg')
oxfam = Organisation.create(name: 'Oxfam',description: '',image: 'https://pbs.twimg.com/profile_images/2536403210/95m3pbytgsf8erqlw0cc.png')
salvation_army = Organisation.create(name: 'Salvation Army',description: '',image: 'http://www.bluemts.com.au/imagesDB/news/51_6.jpg')

#Opportunities
logo_design = Opp.create(
  name: 'Conference logo design',
  description: 'We have our 2015 National Cancer Conference in 2 months and we need a new logo that aligns closely with our "prevention" theme.',
  organisation: red_cross,
  due_by: '2015-06-30',
  skills: [
    design
  ]
)

volunteer_pr = Opp.create(
  name: 'Volunteer PR',
  description: 'Education East Africa is looking for an experienced publicist to assist us with increased media exposure. We look forward to hearing from you!',
  organisation: cure_our_kids,
  due_by: '2015-07-15',
  skills: [
    public_relation
  ]
)

volunteer_pr = Opp.create(
  name: 'Drive us past 2,000 likes on Facebook',
  description: 'We want to hold a Like Drive to increase our fans on Facebook. Can you help us come up with creative ideas on how to host a Like Drive?

Step 1: Check out our Facebook at www.facebook.com/vinetrust and see how we have been using it so far.

Step 2: Brainstorm 3 innovative things we can do to host an awesome like drive
ex: prizes when we reach certain like goals (but remember, we are on a budget!)

Step 3: Respond below with your ideas.

Thanks for being awesome!

If you would like to help our organization in the future, add us to your favourites.',
  organisation: salvation_army,
  due_by: '2015-06-26',
  skills: [
    social_media
  ]
)

satisfaction_survey = Opp.create(
  name: 'Help us design an employee satisfaction survey',
  description: 'We need help putting together a brief survey to collect information about employee satisfaction survey. We need something tight and easy but that gathers as much usable ',
  organisation: oxfam,
  due_by: '2015-07-27',
  skills: [
    human_resources
  ]
)

# Does not work!
#brad_pitt = Volunteer.create(first_name: 'Brad', last_name: 'Pitt', email: 'brad.pitt@gmail.com', image: 'http://img.timeinc.net/time/time100/2007/images/brad_pitt.jpg')
# volunteers = [
#   # first_name, last_name, email, image, IsCoordinator
#   ['Brad', 'Pitt', 'brad.pitt@gmail.com', 'http://img.timeinc.net/time/time100/2007/images/brad_pitt.jpg', false],
#   ['Angelina', 'Jolie', 'angelina.jolie@yahoo7.com.au', 'http://photos.laineygossip.com/articles/angelina-jolie-parenting-21may14-07.jpg', true]
# ]



