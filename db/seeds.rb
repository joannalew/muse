# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Job.destroy_all
Company.destroy_all

demo = User.create(first_name: 'Demo', last_name: 'User', email: 'demouser@example.com', password: 'password')
user1 = User.create(first_name: 'Bob', last_name: 'Bruin', email: 'bob@ucla.edu', password: 'password')
user2 = User.create(first_name: 'Jane', last_name: 'Smith', email: 'jane@email.com', password: 'password')

company1 = Company.create(name: "Nike", logo: 'https://assets.themuse.com/uploaded/companies/1403/small_logo.png')
company2 = Company.create(name: "Outdoor Voices", logo: 'https://assets.themuse.com/uploaded/companies/738/small_logo.png')
company3 = Company.create(name: "Wall Street Journal", logo: 'https://assets.themuse.com/uploaded/companies/365/small_logo.png')
company4 = Company.create(name: 'Wayfair', logo: 'https://assets.themuse.com/uploaded/companies/1631/small_logo.png')

job1 = Job.create(company_id: company1.id, title: "Senior Director, Product Marketing, SNKRS", location: "New York City, NY", url: 'https://jobs.nike.com/job/-/-/824/10621511?src=JB-12260', 
                  description: "Nike is a company based on Innovation. It is in our nature to innovate. Think something nobody else thinks, build something nobody else builds, or improve something that already exists. Curiosity is life. Assumption is death.\n\n

s23NYC, the Nike studio based in New York responsible for the SNKRS app and Nike's sneakerhead community, is looking for a Senior Director of Product Marketing to imagine and build the future of digital community with us.\n\n

As the Senior Director of Product Marketing, you will 1) help build and execute campaigns or trials that authentically showcase our product features to the SNKRS community and 2) help position the SNKRS product to our customer segments in a manner that deepens community engagement and increases consumer happiness.\n\n

YOUR ROLE:\n
    • Drive the SNKRS product positioning in partnership with a cross-functional studio team (Product Overseeing, Design, Engineering)
    • Create and manage campaigns that showcase SNKRS product features
    • Deepen partnership with quantitative and qualitative insights teams to leverage data insights to improve consumer happiness; build tactics to enhance product 'fairness' for consumers
    • Drive new pilot programs with global and geo partnership; leverage deep understanding of consumer segmentation to target new products or services (digital or physical) to under-served segments
    • Provide input to seasonal pitchbacks for global and geo campaigns across all categories
    • Coordinate and scale cross-functional digital marketing efforts around the world
    • Manage day-to-day workload and priorities of the product marketing team, ensuring everyone brings their A game.
    • Communicate campaign best practices, 'playbook', timelines, benefits and results with the larger Nike Digital Marketing org
    • Partner with influencer marketing teams to manage community and product influencer outreach
    • As one of the studio team leads, shape the culture and values of our studio to reflect the sneaker community we serve.
\n\n

Qualifications\n
    • 12+ years of Digital/Social Marketing experience with multiple campaign launches that you're proud of. Background in mobile apps highly preferred\n
    • 2-3 years working on viral/social experiences; seeking someone who knows how to hack organic growth by creating emotional, shareable experiences that earn the right to go viral.\n
    • Deep understanding of social/viral KPIs that deepen engagement; deep understanding of A/B testing and cohort analysis to spot key trends in consumer behavior\n
    • Ability to manage and develop high performing marketing managers\n
    • Skilled at marketing cases with data to senior leadership, armed with an insatiable curiosity about sneaker culture and empathy for our users\n
    • Focused on outcomes over process in a collaborative, fast-paced startup style environment\n
    • Effective communicator, comfortable speaking in front of diverse, senior audiences\n
    • Inspired collaborator; expert in working with cross-functional global and geo teams; can further the team agenda with sugar, not salt.\n\n

EXTRA CREDIT:\n
    • Startup experience\n
    • Focus on diverse, urban communities\n
    • Street culture enthusiast\n\n

ABOUT s23NYC:\n
s23NYC is Nike's first digital experience studio and the driving force behind some of the brand's most memorable moments (as featured in Fast Company, Engadget, and TechCrunch and others). Tucked in the heart of New York's iconic Flatiron District, s23NYC is a dedicated team of marketers, designers, and engineers focused on reimagining how Nike's most dedicated fans unlock, discover, and think about their kicks. With a passion for sneakers and an emphasis on rewarding the community that loves them, s23NYC builds, designs and deploys innovative, interactive, and slightly mischievous features for the Nike SNKRS app (iOS and Android).\n
    • 12+ years of Digital/Social Marketing experience with multiple campaign launches that you're proud of. Background in mobile apps highly preferred\n
    • 2-3 years working on viral/social experiences; seeking someone who knows how to hack organic growth by creating emotional, shareable experiences that earn the right to go viral.\n
    • Deep understanding of social/viral KPIs that deepen engagement; deep understanding of A/B testing and cohort analysis to spot key trends in consumer behavior\n
    • Ability to manage and develop high performing marketing managers\n
    • Skilled at marketing cases with data to senior leadership, armed with an insatiable curiosity about sneaker culture and empathy for our users\n
    • Focused on outcomes over process in a collaborative, fast-paced startup style environment\n
    • Effective communicator, comfortable speaking in front of diverse, senior audiences\n
    • Inspired collaborator; expert in working with cross-functional global and geo teams; can further the team agenda with sugar, not salt.\n\n

EXTRA CREDIT:\n
    • Startup experience\n
    • Focus on diverse, urban communities\n
    • Street culture enthusiast\n\n

ABOUT s23NYC:\n
s23NYC is Nike's first digital experience studio and the driving force behind some of the brand's most memorable moments (as featured in Fast Company, Engadget, and TechCrunch and others). Tucked in the heart of New York's iconic Flatiron District, s23NYC is a dedicated team of marketers, designers, and engineers focused on reimagining how Nike's most dedicated fans unlock, discover, and think about their kicks. With a passion for sneakers and an emphasis on rewarding the community that loves them, s23NYC builds, designs and deploys innovative, interactive, and slightly mischievous features for the Nike SNKRS app (iOS and Android)\n")

job2 = Job.create(company_id: company2.id, title: "Front End Engineer", location: "Austin, TX", url: "https://jobs.lever.co/outdoorvoices/6d5de52a-3901-4eba-b987-6d1eefa331b2/apply?lever-source=themuse",
            description: "We are looking for a Front End Engineer to join our technology team and make our digital experiences best-in-class as we build out the next great activewear brand together. The right candidate is a versatile engineer, able to jump into a team environment, and make an immediate impact while also being able to autonomously lead initiatives and drive them to completion. S/he has the ability to work across desktop and mobile, and have the attention to detail to create incredible digital user experiences.\n\n
Responsibilities\n
    Ship beautiful and functional products for our customers\n
    Focus primarily on our eCommerce website\n
    Independently own feature delivery through completion\n
    Work directly with a design/creative team to build out experiences that differentiate OV from competitors in our space.\n
    Improve code quality and engineering best practices\n
    Work cross-functionally across business to deliver best in class experiences\n
    Work within an existing codebase, identify areas for improvement, and implement those improvements.\n
    Lead initiatives and report out status\n\n

Qualifications\n
    Bachelor's degree in CS or a related technical field\n
    4+ years of software development experience\n
    Experience with React/React Native and Javascript\n
    Understanding of software development life cycles to lead by example in planning and estimating out tasks for projects\n
    Excited about Progressive Web Apps\n
    Knowledge of automation/deployment best practices, and capable of building out a continuous deployment workflow\n
    Agile and excited to work in a start-up environment\n
    Ability to break down and estimate complex problems\n
    Ability to deliver high quality projects end to end, getting completed projects across the finish line\n
    Familiar with building, launching, and supporting products that are used globally\n
    A testing mindset and familiarity with testing strategies\n
    Python &/or Django experience a plus\n\n

Compensation & Benefits:\n
    Competitive compensation package\n
    OV Benefits include flexible vacation, 75% of health care premiums, dental and vision\n
    The latest OV gear and—of course—Recreation\n\n

About Outdoor Voices:\n
We believe in Doing Things — moving your body and having fun with friends. From dog jogs to dodgeball, we make clothes for sweating without the added pressure. Our team is made up of casual Recreationalists who approach activity with ease, humor, and delight. Since launching in 2014, Outdoor Voices has been featured in The New York Times, Vogue, Wall Street Journal, GQ, Forbes and Fast Co.\n")

job3 = Job.create(company_id: company2.id, title: "Payroll Specialist", location: "Austin, TX", url: "https://jobs.lever.co/outdoorvoices/bfbc8bde-f29a-4420-abec-aaf34b2e8f9d/apply?lever-source=themuse",
            description: "OV is hiring a Payroll Specialist to join the People team at our Austin, TX headquarters. As our Payroll Specialist, you’ll support Team OV in all things payroll as you own the integrity of the payroll process and ensure all employees are paid correctly and in a timely manner. If you’re and HRIS whiz who is looking for the opportunity to impact and refine the payroll process, we want to hear from you!\n\n
Responsibilities\n
    Process bi-weekly and semi-monthly payrolls using Namely Payroll to ensure compliance, accuracy, and efficiency.\n
    Process new hires, employee changes, terminations and benefit administration on the Namely HRIS side.\n
    Compile payroll data such as garnishments, vacation time, insurance and 401(k) deductions.\n
    Poll electronic time clocks (Deputy) and review the downloaded information for completeness and accuracy partnering with various department and location  supervisors for any missed times.\n
    Compile internal management reports from payroll system software.\n
    Ensure compliance and adhere to company policies relating to processing of wages and paid time off.\n
    Provide service to all employees regarding concerns with payroll and benefits, research and troubleshoot inquires.\n
    Complete any payroll and benefit related mailings, e.g. child support.\n
    Coordinate resolution with Namely Payroll/Benefit representatives/Insurance carriers to address any inquiries/requests on an on-going basis.\n
    Maintain processes and audit trails for all payroll transactions, I-9, garnishments, etc.\n
    Process and maintain 401(k) transactions and records.\n\n 

Qualification\n
    Associate’s degree or bachelor's degree.\n
    At least 2 years of  multi-state payroll experience (NY and CA preferred).\n
    High level proficiency with Microsoft Excel.\n
    Experience with Google Apps (Gmail, Calendar, Drive).\n
    Experience with Namely HRIS and Payroll is a plus.\n
    High level of ownership and organization.\n
    Attention to detail and the ability to enter data with consistent accuracy.\n
    Strong, professional communication skills in listening, speaking, and writing necessary for communication with staff, service providers and coworkers over the phone, in person, and via email.\n
    Happy to work as a part of a team or independently, willing to communicate needs in a constructive manner as well as provide support to coworkers when needed.\n
    Sound judgement and the ability to make reasonable decisions in the absence of direction.\n
    Receptive to coaching from management, responds positively with willingness to make changes when desired.\n\n

Compensation\n
    Competitive compensation.\n
    OV Benefits include flexible vacation, 75% of health care premiums, dental and vision.\n
    The latest OV gear and—of course—Recreation.\n
    We believe in Doing Things — moving your body and having fun with friends. From dog jogs to dodgeball, we make clothes for sweating without the added pressure. Our Recreational team is made up of joggers, dog walkers, and dribble-dribblers who approach activity with ease, humor, and delight. Since launching in 2014, Outdoor Voices and has been featured in The New York Times, Vogue, Wall Street Journal, GQ, Forbes, and Fast Co.\n\n

Compensation & Benefits:\n
    Competitive compensation package\n
    OV Benefits include flexible vacation, 75% of health care premiums, dental and vision\n
    The latest OV gear and—of course—Recreation\n\n

About Outdoor Voices:\n
We believe in Doing Things — moving your body and having fun with friends. From dog jogs to dodgeball, we make clothes for sweating without the added pressure. Our team is made up of casual Recreationalists who approach activity with ease, humor, and delight. Since launching in 2014, Outdoor Voices has been featured in The New York Times, Vogue, Wall Street Journal, GQ, Forbes and Fast Co.\n")

job4 = Job.create(company_id: company3.id, title: "iOS Software Engineer", location: "New York City, NY", url: "https://wsj.jobs/new-york-ny/ios-software-engineer/C15EB39318EA4B31B026809DD6521907/job/?utm_medium=.JOBS%20Universe&utm_campaign=.JOBS%20XML%20Feed&utm_source=.JOBS%20XML%20Feed-DE&vs=23",
            description: "About Our Team\n

We are looking for a iOS engineer to help us build and improve the Wall Street Journal app for iPhone and iPad. As a mobile engineer, you'll join our team of developers working together to bring innovative news and storytelling techniques to our mobile platform. Our team consists of iOS, Android, and backend developers working closely with product, design, and the newsroom.\n\n

About Our Work\n
    We write all new code in Swift\n
    We prioritize new iOS features\n
    Use use Git for source control\n
    We use Git Flow for building features\n
    We code review all pull requests\n
    We use continuous integration, with automatically deployed builds, internally and submitted to Apple\n
    We write tests for new code\n
    We work closely with product, design, and the newsroom\n
    We are continually adapting and refining our process\n\n

Requirements\n
    At least one year of iOS development experience\n
    Experience with Swift or Objective-C (preferably both)\n
    A Bachelor of Computer Science (or equivalent experience)\n
    Fluency with object-oriented programming and model-view-controller architecture\n
    Experience with Xcode and performance profiling with Instruments\n
    Familiarity with Apple's Human Interface Guidelines\n\n

Nice to Have\n
    Experience accessing an API, e.g., JSON or XML and displaying the downloaded content natively in an iOS app\n
    Fluency with Scripting Languages, such as Bash, Ruby, and JavaScript\n
    Familiarity with HTML & CSS\n
    Node.js or other non-native app development experience\n
    Experience with templating languages and grid-based layouts\n
    Experience with the software development life-cycle, especially Agile and Scrum\n
    An online technical presence, e.g., GitHub or technical writing\n\n

About the Wall Street Journal\n

The Wall Street Journal is a global news organization that provides leading news, information, commentary and analysis. It is America's largest newspaper by total average circulation with more than 2.3 million digital and print subscribers and 36 million global digital visitors per month. Building on its heritage as the preeminent source of global business and financial news, the Journal includes coverage of U.S. & world news, politics, arts, culture, lifestyle, sports, and health. It holds 36 Pulitzer Prizes for outstanding journalism. The Wall Street Journal is published by Dow Jones, a division of News Corp. The Wall Street Journal iOS app has millions of users, and has been repeatedly featured by Apple.\n\n

Dow Jones, Making Careers Newsworthy\n

All qualified applicants will receive consideration for employment without regard to race, color, religion, sex, national origin, protected veteran status, or disability status. EEO/AA/M/F/Disabled/Vets .\n\n

Dow Jones is committed to providing reasonable accommodation for qualified individuals with disabilities, in our job application and/or interview process. If you need assistance or accommodation in completing your application, due to a disability, please reach out to us at TalentResourceTeam@dowjones.com . Please put \"Reasonable Accommodation\" in the subject line.\n\n

Business Area: NEWS/WSJ\n\n

Job Category: IT Development Group\n\n

About Us\n

Dow Jones is a global provider of news and business information, delivering content to consumers and organizations around the world across multiple formats, including print, digital, mobile and live events. Dow Jones has produced unrivaled quality content for more than 125 years and today has one of the world's largest news gathering operations globally. It produces leading publications and products including the flagship Wall Street Journal, America's largest newspaper by paid circulation; Factiva, Barron's, MarketWatch, Financial News, DJX, Dow Jones Risk & Compliance, Dow Jones Newswires, and Dow Jones VentureSource.Dow Jones is a division of News Corp (NASDAQ: NWS, NWSA; ASX: NWS, NWSLV).\n\n

Req ID: 15461\n")

job5 = Job.create(company_id: company4.id, title: "Product Manager, Mobile Apps", location: "Boston, MA", url: "http://app.jobvite.com/CompanyJobs/Job.aspx?c=qI69VfwC&j=oPv28fwe&s=TheMuse",
            description: "Over the past several years, Wayfair has been heavily investing to build the best e-commerce shopping app across devices to help consumers create a home they love, wherever they may be. These efforts have resulted in a highly-rated (4.8 stars on the App Store, 4.5 stars on Google Play), awarded (won the 2018 Webby for shopping), and featured (Apple App of the Day) experience. But our job is far from finished, with substantial opportunities to deliver against a bold app vision, grow user adoption, improve innovative features like View in Room 3D and Search with Photo, and invent the next wave of revolutionary experiences.\n\n

We are looking for an experienced Product Manager to help us take the App to the next level of great. Your role will be to ensure that the App provides the most loyal Wayfair customers with the most delightful and immersive experience possible on their devices and unlocks a platform to acquire the next generation of Wayfair users. This role will join a growing App team that owns the product experience across all of Wayfair’s brands in all of our targeted geographies (US, Canada, UK, Germany). This role will be instrumental in growing a platform that already delivers more than $1B in annual run rate revenue.\n\n

This role offers the opportunity to transform the way millions of consumers around the world create homes they love, have a major impact at a rapidly growing $10B public company, partner with executives across the company on a high-profile initiative, and grow our existing cross-functional teams of experienced product managers, software engineers, data scientists, product designers and analysts.\n\n

Responsibilities:\n\n
    Own the product roadmap for your team, spanning iOS/Android platforms, all our retail brands and all of our international locations.  This will include a combination of building and owning some features directly (e.g., View in Room product, App onboarding experience), and enabling a large number of other teams to build new features/tools on top of our platforms.\n
    Measure performance, keep your pulse on the customer, anticipate bottlenecks, make trade-offs and take acceptable risks to maximize the benefit for our customer and business.\n
    Write detailed user stories and requirements for product initiatives, and assist a cross-functional team of designers, manual testers, and engineers to bring them to life.\n
    Utilize data to understand customer needs and behaviors, and transform that knowledge into platform enhancements and new features.\n
    Lead project planning and provide updates to stakeholders for cross-group & cross-departmental projects.\n
    Work closely with engineering and product leadership to understand larger, department & company wide initiatives.\n
    Help translate department initiatives into manageable, actionable components.\n\n


Qualifications:\n
    3+ years experience in e-commerce or B2C product management\n
    Track record of building high-impact consumer products\n
    Ability to think and perform both tactically and strategically\n
    Excellent analytical skills with demonstrated experience turning data into actionable insights\n
    Deep understanding of business strategy and metrics\n
    Passionate about building functional and engaging user experiences\n
    Cross functional leadership experience\n
    Entrepreneurial mindset, with a bias for customer focused innovation\n
    Ability to multi-task and work well within a dynamic, fast-paced organization\n
    Positive, people-oriented, and energetic attitude\n
    Experience managing a team is a plus\n
    Familiarity with Excel, SQL, and multivariate testing practices a plus\n
    BA with strong academic record (strong preference for quantitative, scientific, or technical backgrounds)\n\n")
