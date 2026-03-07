#set document(
  title: "Brendan Luchen",
)

#show link: underline
#show heading: smallcaps
// #show heading: set align(center)

#set page(
  paper: "us-letter",
  margin: (x: 1cm, y: 1cm),
  footer: context [
    #set text(7.5pt)
    Handcrafted with #sym.suit.heart.stroked and Typst
    #h(1fr) #sym.ast.triple #h(1fr)
    Created on #datetime.today().display()
    #h(1fr) #sym.ast.triple #h(1fr)
    This document lives at #link("http://resume.bml.rocks")
  ]
)

#set text(
  font: "New Computer Modern",
  size: 10pt,
)

#set heading(
  //justify: true,
)

#let horiline(items, separator: sym.dot.c) = {
  let spaced-sep = [#h(1fr) #(separator) #h(1fr)]
  items.join(spaced-sep)
}


#align(center + top)[
  #grid(columns: (2fr, 3fr, 2fr), gutter: 2em, [
    #image("logo.png", width: 4em)
  ], [
    #title[
      #sym.floral.l
      Brendan M Luchen
      #sym.floral.r
    ]
    Senior Full-Stack Engineer
  ], align(right + top)[
      #link("mailto:brendan@luchenlabs.com") #emoji.mail \
      // #link("geo:42.6334,-71.3162?u=1000&q=Lowell")[Lowell, MA] #emoji.pin.round \
      // #image("fourier.jpg", width: 4em)
  ])
]

#line(length: 100%)

#text(font: "New Computer Modern")[
#horiline((
    link("https://www.luchenlabs.com")[`www.luchenlabs.com`],
    link("https://www.bml.rocks")[`www.bml.rocks`],
    link("https://cheezmeister.github.io")[`cheezmeister.github.io`],
    link("https://linkedin.com/in/Cheezmeister")[`linkedin.com/in/Cheezmeister`],
  ), separator: sym.diamond.stroked.dot)
]

= Synopsis
Versatile and motivated Full-Stack Engineer with Frontend and DevOps capability. \
10+ years of experience building, fixing, and scaling web applications. \
Deep understanding of the SDLC, Agile/Scrum methodologies, UX, DX, and techdebt management. \
Proven track record of positivity, collaboration, interdisciplinary and cross-functional innovation.

= Employer
#let role(employer, url, location, title, dates) = {
  grid(
    columns: (1fr, auto),
    gutter: 6pt,
    [*#employer* (#link("https://" + url)[#url])],
    align(right)[*#location*],
    text(style: "italic")[#title],
    align(right)[#dates],
  )
}
#let employer-summary(text) = [#text]

#let impact(items) = {
  pad(left: 1em,
    list(..items)
  )
}
#let technologies(tech) = {
  block(
    fill: silver,
    stroke: 0.5pt + gray,
    inset: 6pt,
    radius: 2pt,
    width: 100%,
    [*Technologies:* #tech]
  )
}

#role("John Turner Consulting", "consultjtc.com", "Portsmouth, NH", "Asphalt Plant Technician", "August 2024–present")
#employer-summary("Strategic Engineering Solutions that Exceed Expectations")

= Prior Employers
#role("Archipelago AI", "archipelago-ai.com", "Distributed Remote", "Founding Software Engineer, Full Stack", "April 2024–March 2025")
#employer-summary("Work smarter, chat less.")
#impact((
  [Architected and implemented scalable microservices using Kotlin and Ktor],
  [Designed resilient database integration patterns using jOOQ and TiDB],
  [Integrated klogging to emit structured logs from the api server backend],
  [Developed and verified the first end-to-end integration between frontend, backend, and database layer],
  [Mentored grad student intern towards introducing Kotlin unit testing],
  [Collaborated with UX designer to establish process and plan a Storybook-based design system],
))
#technologies[Kotlin (Ktor, Klogging, Koin, jOOQ) · TypeScript (NodeJS, SvelteKit, TailwindCSS) · IaC (GitHub Actions, Ansible, Docker, Dagger CI) · MySQL (TiDB)]

// ────────────────────────────────────────────────────────────────────
#role("BCNC", "bcnc.net", "Boston, Massachusetts (Hybrid Remote)", "Technology Support Specialist", "September 2023–March 2024")
#employer-summary("Adult Education and Workforce Initiatives.")
#impact((
  [Managed electronics inventory, offered live tech support, and streamlined IT operations],
  // [Supported the resolution of a \~\$13,000 disputed bill with T-Mobile],
))
#technologies[Squarespace · Zapier · Sharepoint · QR Codes]

#role("Teikametrics", "teikametrics.com", "Boston, Massachusetts (Hybrid Remote)", "Software Engineer II (SE2)", "February 2019–January 2023")
#employer-summary("The AI-powered platform to optimize and grow your ecommerce business on Walmart & Amazon.")
#impact((
  [Introduced i18n to the React frontend],
  [Delivered a billing backend enabling some \$25k of MRR to be automatically invoiced and charged],
  [Launched a documentation system for Flywheel's event-driven architecture, leveraging AsyncAPI],
  [Designed and implemented a scalable and secure cloud-based microservice-logging system],
  [Championed a dynamic, collaborative, safe, and healthy culture],
))
#technologies[PostgreSQL · Docker · Heroku · Ruby · Rails · React · TypeScript · Scala · Cats · Java · Spring Boot · Redis · TailwindCSS · Python · Bash · Golang · Datadog · Terraform · Kubernetes · AWS · Elasticsearch · Logstash · Kibana · Monorepo · SOA/Microservices · EDA]

// ────────────────────────────────────────────────────────────────────
#line(length: 100%)
// ────────────────────────────────────────────────────────────────────

= Shipped Software

#let shipped = (
  ("http://ocjb.me", "OverClocked Jukebox (2019)", "Web jukebox for VGM arrangements from ocremix.org ", "[ Elixir/Phoenix/JS ]"),
  ("https://cheezmeister.itch.io/vec", "Vec (2015)", "Procedural arcade game Windows/Mac/Linux ", "[ C++/SDL/OpenGL ]"),
  ("https://is.gd/chromaReview", "Chromathud (2013)", "Educational puzzle game for PC and Xbox Live Indie Games ", "[ C#/.NET/XNA ]"),
  ("", "Modern Warfare 3 (2011)", "Multiplatform console/PC FPS game (© Activision) ", "[ C++/idtech3 ]"),
  ("", "Haiku for Android", "Thin client to Epic's EMR (© Epic Systems Corporation) ", "[ Java/Android/C# ]"),
  ("", "Flywheel", "The eCommerce Seller's Operating System (© Teikametrics) ", "[ TypeScript/Python/Postgres ]"),
)

#for (url, title, desc, tech) in shipped [
  *#title*: #desc #if url.len() > 0 [ (#link(url)) ] else [ ] \
]

= Skills
// ── Skills ────────────────────────────────────────────────────────────────────

#table(
  columns: (auto, 1fr, 1fr, 1fr),
  stroke: none,
  inset: (x: 2pt, y: 4pt),
  align: (right, left, left, left),
  // Header
  [], [*Proficient*], [*Competent*], [*Familiar*],
  // Rows
  table.hline(stroke: 0.5pt),
  [*Programming*],
    [Java, Kotlin, Scala, JS/TS/ES2015+],
    [Python, Ruby, C, C$sharp$, C$plus.double$],
    [Perl, Haskell, Elixir, Elm, Golang],
  [*Markup/Data*],
    [Markdown, JSON, HTML, SQL],
    [Haml, Pug, TOML, XML],
    [YAML, Sass, Terraform],
  [*Libraries/API*],
    [Spring, NodeJS, React],
    [Rails, OpenGL, Angular],
    [Phoenix, Ionic],
  [*Tools/Software*],
    [git, Vim, tmux],
    [Docker, Heroku, GHA, Jira],
    [GDB, Terraform, k8s, Ansible],
  [*Natural Language*],
    [English (native)],
    [Spanish],
    [Japanese, German],
)

= Education
#grid(
  columns: (1fr, auto),
  gutter: 3pt,
  [*Rochester Institute of Technology*],
  align(right)[Rochester, New York],
  [_Bachelor of Science: Computer Science_],
  align(right)[May 2011],
  [_Magna cum laude_],
  [],
)

- Minor: German Language · Minor: Mathematics · Study abroad in Dubrovnik, Croatia

#line(length: 100%)
= Past Employers


#role("Applied Training Systems, Inc.", "mitratech.com", "Seattle, Washington (Hybrid Remote)", "Software Engineer", "April 2017–August 2018")
#employer-summary("Reviewsnap and Trakstar are mature and well-tuned performance appraisal and management systems.")
#technologies[Python · Swagger · Docker · Ruby · Rails · React · Sass]

#role("Comcast Technology Solutions", "theplatform.com", "Seattle, Washington", "Software Development Engineer in Test (SDET)", "August 2014–November 2016")
#employer-summary([Comcast Technology Solutions (formerly #link("https://en.wikipedia.org/wiki/ThePlatform")[thePlatform]) delivers a media management and publishing platform to distribute video and other digital content.])
#technologies[Java · Spring · AngularJS · TestNG · OpenStack · AWS · Chef · Gatling · Jenkins · TeamCity]

#role("Amazon", "amazon.com", "Seattle, Washington", "Software Development Engineer (SDE)", "June 2013–February 2014")
#employer-summary("The Platform Excellence in Fatals team is tasked with bringing customer-facing failures ever closer to zero.")
#impact((
  // [Drove company-wide initiatives to reduce HTTP 5xx and other failures],
  // [Shared a 24/7 pager-duty rotation one out of every 3 weeks],
))
#technologies[JavaScript · jQuery · Spring · Java · Hibernate · Ruby · Rails · InnoDB · Brazil/Apollo]

#role("Epic", "epic.com", "Madison, Wisconsin", "Software Developer", "September 2011–March 2013")
#employer-summary("Epic Chronicles is the leading electronic medical record in the US, emphasizing an integrated patient record and continuity of healthcare across providers and time. Its user-facing frontends include Hyperspace, Canto, Haiku, and MyChart.")
#impact((
  // [Prototyped and developed _Haiku for Android_, Epic's mobile sidekick for physicians],
  // [Ensured ability for providers to capture clinical images and video in a HIPAA-compliant fashion],
))
// #technologies[Java · Android · ADK · M (MUMPS) · C\#/.NET · VB6 · Chronicles]

#let resume-url = "resume.bml.rocks"
#import "@preview/tiaoma:0.3.0"
#align(right + bottom)[
  #tiaoma.qrcode(resume-url, width: 3em)
]


