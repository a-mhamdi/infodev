#import "@preview/timeliney:0.0.1"

#import timeliney: *

/* ---------- TIMELINE OF LABS ---------- */
#let tml = (
timeliney.timeline(
  show-grid: true,
  {     
    headerline(group(([*Feb.*], 5)), group(([*Mar.*], 5)), group(([*Apr.*], 5)))
    headerline(
      group(..range(5).map(n => strong("W" + str(n + 1)))),
      group(..range(5).map(n => strong("W" + str(n + 1)))),
      group(..range(5).map(n => strong("W" + str(n + 1))))
    )
  
    taskgroup(title: [*Lab \#1*], {
      task(text(olive)[_Develop & Code_], (0, 3), style: (stroke: 2pt + olive))
      task(text(maroon)[_Review & Update_], (2, 3), style: (stroke: 2pt + maroon))
      task(text(eastern)[_Finalize & Submit_], (3, 4), style: (stroke: 2pt + eastern))
    })

    taskgroup(title: [*Lab \#2*], {
      task(text(olive)[_Develop & Code_], (2, 5), style: (stroke: 2pt + olive))
      task(text(maroon)[_Review & Update_], (4, 5), style: (stroke: 2pt + maroon))
      task(text(eastern)[_Finalize & Submit_], (5, 6), style: (stroke: 2pt + eastern))
    })

    taskgroup(title: [*Lab \#3*], {
      task(text(olive)[_Develop & Code_], (4, 7), style: (stroke: 2pt + olive))
      task(text(maroon)[_Review & Update_], (6, 7), style: (stroke: 2pt + maroon))
      task(text(eastern)[_Finalize & Submit_], (7, 8), style: (stroke: 2pt + eastern))
    })

    taskgroup(title: [*Lab \#4*], {
      task(text(olive)[_Develop & Code_], (6, 9), style: (stroke: 2pt + olive))
      task(text(maroon)[_Review & Update_], (8, 9), style: (stroke: 2pt + maroon))
      task(text(eastern)[_Finalize & Submit_], (9, 10), style: (stroke: 2pt + eastern))
    })

    taskgroup(title: [*Exam*], {
      task(text(lime)[_Review Session_], (10, 12), style: (stroke: 2pt + lime))
      task(text(red)[_Evaluation_], (12, 13), style: (stroke: 2pt + red))
    })

    /*
    milestone(
      at: 3.75,
      style: (stroke: (dash: "dashed")),
      align(center, [
        *Conference demo*\
        Dec 2023
      ])
    )

    milestone(
      at: 6.5,
      style: (stroke: (dash: "dashed")),
      align(center, [
        *App store launch*\
        Aug 2024
      ])
    )
    */
  }
)
)
