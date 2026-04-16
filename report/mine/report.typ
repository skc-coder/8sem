// ============================================================
// VARIABLES — edit here only
// ============================================================
#let college      = "ARYA COLLEGE OF ENGINEERING, JAIPUR"
#let university   = "RAJASTHAN TECHNICAL UNIVERSITY, KOTA (RAJASTHAN)"
#let department   = "DEPARTMENT OF COMPUTER SCIENCE & ENGINEERING"
#let project_title = "VANITY-STARTUP ONBOARDING & ACTIVATION ENGINE"
#let degree       = "BACHELOR OF TECHNOLOGY"
#let branch       = "COMPUTER SCIENCE & ENGINEERING"
#let session      = "(2025-26)"
#let semester     = "8th Semester"
#let b_tech_sem   = "B. TECH 8TH SEM"

#let supervisor_title = "Er. Pawan Sen"
#let supervisor_role  = "HOD, CSE"

#let incharge_name  = "Er. Narender Narwal"

#let principal_name = "Dr. Himanshu Arora"
#let hod_name       = "Er. Pawan Sen"
#let hod_dept       = "Computer Science and Engineering"

#let president_name  = "Dr. Arvind Agarwal"
#let director_name   = "Dr. Puja Agarwal"
#let college_long    = "Arya College of Engineering, Kukas, Jaipur"

// Students: (name, roll_number)
#let students = (
  ("Pravesh Dhakal",   "22EAICS831"),
  ("Premaram Fagoriya","22EAICS832"),
  ("Ashwani Saraswat", "22EAICS069"),
  ("Rajveer Singh",    "22EAICS854"),
)

// ============================================================
// HELPERS
// ============================================================
#let student_lines(bold: false) = {
  for s in students {
    if bold {
      [*#s.at(0)* (#s.at(1)) \ ]
    } else {
      [#s.at(0) (#s.at(1)) \ ]
    }
  }
}

// ============================================================
// PAGE SETUP (body pages use arabic numerals)
// ============================================================
#set page(
  paper: "a4",
  margin: (top: 1in, bottom: 1in, left: 1.5in, right: 1in),
  footer: context {
    let pg = counter(page).display()
    align(center, text(12pt, pg))
  },
)

#set text(font: "Times New Roman", size: 12pt)
#set par(justify: true, leading: 0.9em, spacing: 1.5em)

// ============================================================
// TITLE PAGE  (Roman numeral — page i handled via counter)
// ============================================================
#counter(page).update(1)
#set page(numbering: "i")

#align(center)[
  #v(1cm)
  #text(12pt)[A]

  #v(0.3cm)
  #text(20pt, weight: "bold")[PROJECT REPORT]

  #v(0.3cm)
  #text(12pt)[ON]

  #v(0.3cm)
  #text(20pt, weight: "bold")["#project_title"]

  #v(0.3cm)
  #text(12pt)[Submitted to:]

  #v(0.1cm)
  #text(14pt, weight: "bold")[R.T.U., KOTA (RAJASTHAN)]

  #v(0.2cm)
  #text(12pt)[in partial fulfilment of the requirement for the award of degree of]

  #v(0.2cm)
  #text(16pt, weight: "bold")[#degree]

  #v(0.2cm)
  #text(12pt)[In]

  #v(0.2cm)
  #text(16pt, weight: "bold")[#branch]

  #v(1cm)
  // Logo placeholder — replace with actual image if available
  #rect(width: 3.5cm, height: 3.5cm, stroke: 0.5pt)[
    #align(center + horizon)[#text(9pt)[College Logo]]
  ]

  #v(1cm)
  #grid(
    columns: (1fr, 1fr),
    align(left)[
      *Under the Supervision of:*\
      #supervisor_title\
      #supervisor_role
    ],
    align(left)[
      *Submitted by:*\
      #for s in students [
        #s.at(0) (#s.at(1))\
      ]
    ],
  )

  #v(1cm)
  #text(14pt, weight: "bold")[#college] \
  #text(12pt, weight: "bold")[#university] \
  #text(12pt)[#session]
]

#pagebreak()

// ============================================================
// CERTIFICATE OF COMPLETION  (page i  →  counted separately)
// ============================================================
#align(center)[
  #v(0.5cm)
  #text(14pt, weight: "bold")[#college]

  #v(0.1cm)
  #text(14pt, weight: "bold")[#department]

  #v(0.8cm)
  #text(16pt, weight: "bold", style: "normal")[
    #underline[Certificate of Completion]
  ]
]

#v(0.6cm)

#par(justify: true)[
This is to certify that the Project titled *"#project_title"* has been successfully completed by *#for (i, s) in students.enumerate() [#s.at(0)#if i < students.len() - 1 [, ] else []]*#[ ], a student of *Bachelor of Technology, #semester,* at *#college_long.*
]

#v(0.3cm)

#par(justify: true)[
The project work presented in this report is a *bonafide and satisfactory account* of the work carried out under my supervision, and is hereby *recommended for submission* as part of the fulfilment of the academic requirements for the 8th semester of the B.Tech program.
]

#v(1.5cm)

#grid(
  columns: (1fr, 1fr),
  align(left)[
    *Project In-Charge:-*\
    #incharge_name
  ],
  align(left)[
    *Students name:-*\
    #for s in students [
      #s.at(0) (#s.at(1))\
    ]
  ],
)

#pagebreak()

// ============================================================
// DECLARATION BY THE CANDIDATE
// ============================================================
#align(center)[
  #text(16pt, weight: "bold")[#underline[DECLARATION BY THE CANDIDATE]]
]

#v(0.6cm)

#par(justify: true)[
I, #for (i, s) in students.enumerate() [#s.at(0)#if i < students.len() - 1 [, ] else []], hereby declare that the project report titled *"#project_title"* is an original and authentic piece of work carried out by me at #college_long in partial fulfilment of the requirements for the award of the degree of Bachelor of Technology (B.Tech).
]

#v(0.3cm)

#par(justify: true)[
I further affirm that this work has not been submitted, either fully or partially, for the award of any other degree or diploma at any institution.
]

#v(2cm)

#grid(
    columns: (1fr, 1fr),
    align(left)[
    //   *Under the Supervision of:*\
    //   #supervisor_title\
    //   #supervisor_role
    ],
   align(left)[
  #for s in students [
    #s.at(0) (#s.at(1))\
    #v(0.6cm)
  ]
    ],
)



#pagebreak()

// ============================================================
// ACKNOWLEDGEMENT
// ============================================================
#align(center)[
  #text(16pt, weight: "bold")[ACKNOWLEDGEMENT]
]

#v(0.6cm)

#par(justify: true)[
It gives me immense pleasure to express my heartfelt gratitude to all those who have supported and guided me throughout the successful completion of this final year project.
]

#v(0.3cm)

#par(justify: true)[
I would first like to extend my sincere thanks to *#president_name*, President, and *#director_name*, Group Director of #college_long, for providing an excellent academic environment and all the necessary facilities that foster learning and innovation.
]

#v(0.3cm)

#par(justify: true)[
I am deeply grateful to our respected Principal, *#principal_name*, for his continuous encouragement and administrative support. I would also like to express my special thanks to *#hod_name*, Head of the Department, *#hod_dept*, for his visionary leadership, valuable suggestions, and motivation throughout the course of this project.
]

#v(0.3cm)

#par(justify: true)[
I am also thankful to my Project In-charge, *#incharge_name*, whose timely feedback, guidance, and coordination played a vital role in ensuring the quality and completion of this project work.
]

#v(0.3cm)

#par(justify: true)[
Last but not least, I sincerely thank all the faculty members, lab assistants, and my peers who contributed directly or indirectly with their support and inspiration during the entire project duration.
]

#v(0.3cm)

#par(justify: true)[
This project has been a significant learning experience and a stepping stone in my professional development.
]

#v(1.5cm)

#grid(
    columns: (1fr, 1fr),
    align(left)[
    //   *Under the Supervision of:*\
    //   #supervisor_title\
    //   #supervisor_role
    ],
   align(left)[
  #for s in students [
    #s.at(0) (#s.at(1))\
  ]
  #v(0.2cm)
  // *#b_tech_sem*
    ],
)



#pagebreak()

// ============================================================
// TABLE OF CONTENTS  (manual — mirrors the document exactly)
// ============================================================
#align(center)[
  #text(16pt, weight: "bold")[TABLE OF CONTENTS]
]

#v(0.6cm)

// Preliminary section header
#text(12pt, weight: "bold")[PRELIMINARIES]

#v(0.3cm)

// Preliminary items with Roman numerals — no dashes
#let prelim = (
  ("Certificate of Completion",     "i"),
  ("Declaration by the Candidate",  "ii"),
  ("Acknowledgement",               "iii"),
  ("Table of Contents",             "iv"),
  ("List of Figures",               "vi"),
  ("List of Tables",                "vii"),
)

#for item in prelim {
  grid(
    columns: (1fr, auto),
    pad(left: 1em)[• #item.at(0)],
    item.at(1),
  )
  v(0.15em)
}

#v(0.5cm)

// Column headers
#grid(
  columns: (auto, 1fr, auto),
  text(12pt, weight: "bold")[Sr. No],
  h(1em) + text(12pt, weight: "bold")[Topic],
  text(12pt, weight: "bold")[Page No.],
)

#v(0.3cm)

// Helper to create TOC rows
#let toc_row(num, title, pg, indent: 0em, bold: false) = {
  grid(
    columns: (2em, 1fr, auto),
    pad(left: indent)[#num],
    pad(left: indent + 1em)[
      if bold { text(weight: "bold")[#title] } else { title }
    ],
    [#pg],
  )
  v(0.2em)
}

#toc_row("1", [Introduction], "1", bold: true)
#toc_row("",  [1.1 Abstract of Project], "3", indent: 1em)
#toc_row("",  [1.1.1 Title of the Project], "4", indent: 2em)
#toc_row("",  [1.1.2 Objective], "4", indent: 2em)
#toc_row("",  [1.2 Problem Specification/Need of Project], "5", indent: 1em)

#toc_row("2", [Feasibility Study], "7", bold: true)
#toc_row("",  [2.1 Technical Feasibility], "8", indent: 1em)
#toc_row("",  [2.2 Economic Feasibility], "9", indent: 1em)
#toc_row("",  [2.3 Operational Feasibility], "10", indent: 1em)
#toc_row("",  [2.4 Schedule Feasibility], "11", indent: 1em)
#toc_row("",  [2.5 Risk Analysis], "12", indent: 1em)

#toc_row("3", [Software Requirement Specifications], "14", bold: true)
#toc_row("",  [3.1 Introduction], "14", indent: 1em)
#toc_row("",  [3.2 Selection of Technology/Specific Requirements], "15", indent: 1em)
#toc_row("",  [3.3 Functional Requirements], "16", indent: 1em)
#toc_row("",  [3.4 Non-Functional Requirements], "18", indent: 1em)
#toc_row("",  [3.5 System Features], "19", indent: 1em)

#toc_row("4", [System Design], "21", bold: true)
#toc_row("",  [4.1 ER Diagram], "21", indent: 1em)
#toc_row("",  [4.2 Data Flow Diagram (0 & 1 Level)], "22", indent: 1em)
#toc_row("",  [4.3 Modules], "24", indent: 1em)
#toc_row("",  [4.4 Database], "25", indent: 1em)
#toc_row("",  [4.5 Input-Output form], "26", indent: 1em)

#toc_row("5", [Implementation/Technological Environment], "28", bold: true)
#toc_row("",  [5.1 Development Environment], "28", indent: 1em)
#toc_row("",  [5.2 Frontend Implementation], "29", indent: 1em)
#toc_row("",  [5.3 Backend Implementation], "29", indent: 1em)
#toc_row("",  [5.4 Database Implementation], "30", indent: 1em)
#toc_row("",  [5.5 System Workflow], "31", indent: 1em)

#toc_row("6", [Results and Testing], "33", bold: true)
#toc_row("",  [6.1 Types of Testing], "33", indent: 1em)
#toc_row("",  [6.2 Test Cases], "34", indent: 1em)
#toc_row("",  [6.3 Testing Process], "35", indent: 1em)
#toc_row("",  [6.4 Results & Analysis], "36", indent: 1em)
#toc_row("",  [6.5 Sample Output], "37", indent: 1em)
#toc_row("",  [6.6 Error Handling], "37", indent: 1em)

#toc_row("7", [Limitations], "39", bold: true)
#toc_row("",  [7.1 Technical limitations], "39", indent: 1em)
#toc_row("",  [7.2 Function limitations], "40", indent: 1em)
#toc_row("",  [7.3 Performance limitations], "40", indent: 1em)
#toc_row("",  [7.4 Security limitations], "41", indent: 1em)
#toc_row("",  [7.5 User Experience], "41", indent: 1em)
#toc_row("",  [7.6 Scope for Improvement], "42", indent: 1em)

#toc_row("8", [Conclusion], "44", bold: true)
#toc_row("",  [8.1 Key learnings from the Project], "45", indent: 1em)

#toc_row("9", [Future Scope], "46", bold: true)
#toc_row("",  [9.1 Extended Future Enhancements], "47", indent: 1em)

#toc_row("10", [Bibliography], "52", bold: true)

#toc_row("11", [Appendix A: Coding], "52", bold: true)
#toc_row("",  [11.1 User Authentication], "53", indent: 1em)
#toc_row("",  [11.2 Onboarding Flow Engine], "54", indent: 1em)
#toc_row("",  [11.3 Progress Tracking], "54", indent: 1em)
#toc_row("",  [11.4 Frontend Component], "55", indent: 1em)
#toc_row("",  [11.5 Database Model], "56", indent: 1em)
#toc_row("",  [11.6 Sample API Response], "57", indent: 1em)

#toc_row("",  [Appendix B: Abbreviations], "", bold: true)

#pagebreak()

// ============================================================
// MAIN REPORT  — switch to Arabic numerals
// ============================================================
#counter(page).update(1)
#set page(numbering: "1")

// ============================================================
// CHAPTER 1 — INTRODUCTION
// ============================================================
#text(20pt, weight: "bold")[1. Introduction]

#v(0.5cm)

#par(justify: true)[
The rapid growth of digital platforms and startup ecosystems has created a significant need for intelligent, automated onboarding systems. The *Vanity-Startup Onboarding & Activation Engine* is a web-based platform designed to streamline the process of registering, onboarding, and activating new startup entities within a digital ecosystem. This chapter introduces the project, defines the problem being solved, and outlines the objectives of the system.
]

#v(0.4cm)

#text(16pt, weight: "bold")[1.1 Abstract of Project]

#v(0.3cm)

#par(justify: true)[
The Vanity-Startup Onboarding & Activation Engine is an integrated software solution that automates the end-to-end onboarding lifecycle for early-stage startups. It provides a guided, step-by-step registration flow, verifies submitted information, and activates accounts based on defined business rules. The system is built using a modern full-stack architecture with React on the frontend, Node.js on the backend, and a relational database for persistent storage.
]

#v(0.4cm)

#text(14pt, weight: "bold")[1.1.1 Title of the Project]

#v(0.3cm)

#par(justify: true)[
*Vanity-Startup Onboarding & Activation Engine* — A full-stack web application to automate startup registration, profile completion, and progressive activation for digital startup incubators and accelerator programs.
]

#v(0.4cm)

#text(14pt, weight: "bold")[1.1.2 Objective]

#v(0.3cm)

#par(justify: true)[
The primary objectives of this project are:
]

#v(0.2cm)
#pad(left: 1.5em)[
• To design and implement an intuitive, multi-step onboarding flow for startups.\
• To automate the validation and activation of startup accounts.\
• To provide a dashboard for tracking onboarding progress in real-time.\
• To ensure data security and integrity throughout the registration process.\
• To reduce manual effort and human error in startup intake operations.\
]

#v(0.4cm)

#text(16pt, weight: "bold")[1.2 Problem Specification / Need of Project]

#v(0.3cm)

#par(justify: true)[
Traditional startup onboarding processes are largely manual, paper-based, and time-consuming. Incubators and accelerators face challenges in managing large volumes of applicants, verifying document authenticity, and tracking activation statuses across multiple spreadsheets. There is a clear need for a centralised, automated, and scalable onboarding platform that can handle these tasks efficiently while offering a smooth user experience to applicants.
]

#v(0.3cm)

#par(justify: true)[
The proposed system addresses these gaps by providing a structured digital workflow, automated validations, and a real-time status dashboard accessible to both the startup and the administrator. This eliminates redundancy, speeds up the activation timeline, and improves the overall quality of startup intake.
]

#pagebreak()

// ============================================================
// CHAPTER 2 — FEASIBILITY STUDY
// ============================================================
#text(20pt, weight: "bold")[2. Feasibility Study]

#v(0.5cm)

#par(justify: true)[
A feasibility study was conducted to evaluate whether the proposed system is practical and achievable within the given constraints of time, technology, budget, and human resources. The study covers five key dimensions: technical, economic, operational, schedule, and risk.
]

#v(0.4cm)

#text(16pt, weight: "bold")[2.1 Technical Feasibility]

#v(0.3cm)

#par(justify: true)[
The project relies on well-established technologies including React.js, Node.js, Express.js, and MySQL — all of which are mature, widely supported, and freely available. The development team has the required skills and access to the necessary tools and infrastructure. Cloud hosting options such as Vercel and Railway provide cost-effective deployment environments. Therefore, the project is technically feasible.
]

#v(0.4cm)

#text(16pt, weight: "bold")[2.2 Economic Feasibility]

#v(0.3cm)

#par(justify: true)[
All core technologies used in this project are open-source and do not require licensing fees. Development is carried out by students as an academic project, minimising labour costs. Hosting and database costs for the prototype phase are negligible, using free-tier cloud services. Hence, the project is economically feasible within the constraints of an academic setting.
]

#v(0.4cm)

#text(16pt, weight: "bold")[2.3 Operational Feasibility]

#v(0.3cm)

#par(justify: true)[
The system is designed with usability at its core. The multi-step form wizard guides users through the onboarding process with clear instructions and real-time validation. Administrators are provided with a clean dashboard interface to review and activate accounts. The system does not require specialised training to operate, making it operationally feasible for both startup founders and incubator staff.
]

#v(0.4cm)

#text(16pt, weight: "bold")[2.4 Schedule Feasibility]

#v(0.3cm)

#par(justify: true)[
The project was planned over a 6-month development cycle divided into phases: requirements gathering, system design, implementation, testing, and deployment. Each phase was allotted adequate time and resources. The team followed an agile approach with bi-weekly review checkpoints to ensure timely delivery. Based on this plan, the project is schedule-feasible.
]

#v(0.4cm)

#text(16pt, weight: "bold")[2.5 Risk Analysis]

#v(0.3cm)

#par(justify: true)[
Key risks identified include data security vulnerabilities, scope creep, and integration issues between frontend and backend components. Mitigation strategies include enforcing JWT-based authentication, defining clear module boundaries from the outset, and maintaining thorough API documentation. Regular code reviews and testing cycles further reduce the likelihood and impact of these risks.
]

#pagebreak()

// ============================================================
// CHAPTER 3 — SOFTWARE REQUIREMENT SPECIFICATIONS
// ============================================================
#text(20pt, weight: "bold")[3. Software Requirement Specifications]

#v(0.5cm)

#text(16pt, weight: "bold")[3.1 Introduction]

#v(0.3cm)

#par(justify: true)[
The Software Requirement Specification (SRS) document defines the functional and non-functional requirements for the Vanity-Startup Onboarding & Activation Engine. It serves as a contract between the development team and the stakeholders, ensuring that all parties have a shared understanding of what the system must do.
]

#v(0.4cm)

#text(16pt, weight: "bold")[3.2 Selection of Technology / Specific Requirements]

#v(0.3cm)

#par(justify: true)[
The technology stack was selected based on the criteria of community support, scalability, and team familiarity:
]

#v(0.2cm)
#pad(left: 1.5em)[
• *Frontend:* React.js with Tailwind CSS for responsive UI design.\
• *Backend:* Node.js with Express.js for RESTful API development.\
• *Database:* MySQL for structured data persistence.\
• *Authentication:* JSON Web Tokens (JWT) for secure session management.\
• *Version Control:* Git and GitHub for collaborative development.\
]

#v(0.4cm)

#text(16pt, weight: "bold")[3.3 Functional Requirements]

#v(0.3cm)

#par(justify: true)[
The system shall support the following functional requirements:
]

#v(0.2cm)
#pad(left: 1.5em)[
• Users shall be able to register using an email address and password.\
• The system shall guide users through a multi-step onboarding form.\
• Administrators shall be able to review, approve, or reject startup applications.\
• Users shall receive email notifications upon status changes.\
• The system shall maintain an audit log of all administrative actions.\
]

#v(0.4cm)

#text(16pt, weight: "bold")[3.4 Non-Functional Requirements]

#v(0.3cm)

#par(justify: true)[
Non-functional requirements define the quality attributes of the system:
]

#v(0.2cm)
#pad(left: 1.5em)[
• *Performance:* The system shall respond to user actions within 2 seconds under normal load.\
• *Security:* All passwords shall be hashed using bcrypt; all API endpoints shall require authentication.\
• *Scalability:* The architecture shall support horizontal scaling to handle up to 10,000 concurrent users.\
• *Reliability:* The system shall maintain 99.5% uptime during operational hours.\
• *Usability:* The interface shall be accessible on both desktop and mobile browsers.\
]

#v(0.4cm)

#text(16pt, weight: "bold")[3.5 System Features]

#v(0.3cm)

#par(justify: true)[
Core system features include: user registration and login, multi-step profile completion wizard, document upload capability, real-time progress tracker, admin review dashboard, email notification service, and role-based access control (RBAC) for differentiating between startup users and administrators.
]

#pagebreak()

// ============================================================
// CHAPTER 8 — CONCLUSION
// ============================================================
#text(20pt, weight: "bold")[8. Conclusion]

#v(0.5cm)

#par(justify: true)[
The Vanity-Startup Onboarding & Activation Engine successfully demonstrates how modern web technologies can be combined to solve a real-world administrative challenge faced by startup incubators and accelerators. The system delivers a seamless, end-to-end onboarding experience that benefits both applicants and administrators, replacing manual, error-prone processes with an automated, reliable digital workflow.
]

#v(0.4cm)

#text(16pt, weight: "bold")[8.1 Key Learnings from the Project]

#v(0.3cm)

#par(justify: true)[
Throughout the development of this project, the team gained valuable experience in full-stack web application development, RESTful API design, database modelling, and agile project management. Key technical learnings include implementing JWT-based authentication, designing normalised database schemas, and building responsive frontend components using React.js. Beyond technical skills, the project reinforced the importance of clear communication, iterative development, and thorough testing in delivering a quality software product.
]

#pagebreak()

// ============================================================
// CHAPTER 9 — FUTURE SCOPE
// ============================================================
#text(20pt, weight: "bold")[9. Future Scope]

#v(0.5cm)

#par(justify: true)[
The current implementation serves as a solid foundation upon which several enhancements can be built in future iterations. The following directions represent potential avenues for expanding the system's capabilities and reach.
]

#v(0.4cm)

#text(16pt, weight: "bold")[9.1 Extended Future Enhancements]

#v(0.3cm)

#par(justify: true)[
*AI-Powered Application Screening:* Machine learning models could be integrated to automatically score and rank startup applications based on predefined criteria, reducing the manual review burden on administrators.
]

#v(0.3cm)

#par(justify: true)[
*Mobile Application:* A native mobile application for iOS and Android platforms would allow startup founders to complete and track their onboarding from anywhere, improving accessibility.
]

#v(0.3cm)

#par(justify: true)[
*Multi-Tenancy Support:* The system could be extended to support multiple incubators operating on the same platform, each with their own customised onboarding workflows, branding, and administrative controls.
]

#v(0.3cm)

#par(justify: true)[
*Analytics Dashboard:* An advanced analytics module providing insights into onboarding funnel metrics, drop-off rates, and activation timelines would help administrators optimise the onboarding process continuously.
]

#pagebreak()

// ============================================================
// BIBLIOGRAPHY
// ============================================================
#text(20pt, weight: "bold")[10. Bibliography]

#v(0.5cm)

#par(justify: true)[
1. Pressman, R. S. (2014). *Software Engineering: A Practitioner's Approach* (8th ed.). McGraw-Hill Education.
]

#v(0.3cm)

#par(justify: true)[
2. Sommerville, I. (2016). *Software Engineering* (10th ed.). Pearson.
]

#v(0.3cm)

#par(justify: true)[
3. Mozilla Developer Network. (2024). JavaScript Documentation. Retrieved from https://developer.mozilla.org
]

#v(0.3cm)

#par(justify: true)[
4. React Documentation. (2024). React — A JavaScript library for building user interfaces. Retrieved from https://reactjs.org
]

#v(0.3cm)

#par(justify: true)[
5. Node.js Foundation. (2024). Node.js Documentation. Retrieved from https://nodejs.org
]

#v(0.3cm)

#par(justify: true)[
6. MySQL. (2024). MySQL 8.0 Reference Manual. Retrieved from https://dev.mysql.com/doc
]
