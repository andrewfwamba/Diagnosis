; ###### Mental Health Diagnosis Expert System ######

; Starting Menu Section 
(defrule Main_Menu
 (not (iffoundChoice ?))
=>
 (printout t crlf crlf crlf
 "Select from below options to start your
Diagnosis" crlf crlf
 " 1.) Experiencing Mental unease? " crlf crlf

 " 2.) EXIT SYSTEM.." crlf crlf crlf
 " Enter no. of your choice: " )
(assert (iffoundChoice (read))))
; ################# Knowledge Base ################

;; Rules to diagnose mental health

;; ################ Rule number  0 ##################
 (defrule Experiencing_Mental_unease
 (iffoundChoice 1)
 ?retractCh1 <- (iffoundChoice 1)
 (not (ifYesNochoice ?))
 =>
 (retract ?retractCh1)
 (printout t crlf crlf crlf " Having unwanted memories
  ? (yes | no) " crlf crlf " Your answer: " )
 (assert (ifYesNochoice (read))))
;; ################ Rule number  1 ##################
(defrule Experiencing_Mental_unease1
 (ifYesNochoice yes)
 ?retractChy <- (ifYesNochoice yes)
 (not (ifYesNochoice1 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Feeling fear and feelings of helplessness
in your dreams ? (Yes | No) " crlf crlf " Your
answer: " )
 (assert (ifYesNochoice1 (read))))
;; ################ Rule number  02 ###################
 (defrule Experiencing_Mental_unease2
 (ifYesNochoice1 yes)
 ?retractChy <- (ifYesNochoice1 yes)
 (not (ifYesNochoice2 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Feeling emotional or physical distress when
experiencing reminders of the 
Trauma ? (Yes | No) " crlf crlf
 " Your answer: " )
 (assert (ifYesNochoice2 (read))))
;;  ################ Rule number 03 ####################
; Conclusion
 (defrule Experiencing_Mental_unease3
 (ifYesNochoice2 yes)
 ?retractChy <- (ifYesNochoice2 yes)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf" You are suffering from 
 Post Traumatic Stress Disorder (PTSD) Recommended to take 
 Diets with vitamin Bs to help improve the memory" crlf
crlf " Thank you for using this system. Glad you were served 
"crlf crlf ))
;;  ################ Rule number 04 ######################
 (defrule Experiencing_Mental_unease4
 (ifYesNochoice2 no)
 ?retractChy <- (ifYesNochoice2 no)
 (not (ifYesNochoice3 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Have you experienced any threatening life events " crlf
 " " crlf
 "? (Yes | No) " crlf crlf
 " Your answer: " )
 (assert (ifYesNochoice3 (read))))
;  ################# Ruler number 05 ###################
; Conclusion
  (defrule Experiencing_Mental_unease5
 (ifYesNochoice3 yes)
 ?retractChy <- (ifYesNochoice3 yes)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " You may be suffering from 
 Bipolar stress disorder " crlf crlf
 "Recommendations: Interpersonal therapy" crlf
 "Behavioural therapy" crlf
 "Antipsychotic medication"
 crlf crlf " Thank you for using the
 system. Glad you were served "crlf crlf )
)
; ################ Rule number 06 ########################
 (defrule Experiencing_Mental_unease6
 (ifYesNochoice3 no)
 ?retractChy <- (ifYesNochoice3 no)
 (not (ifYesNochoice4 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Do you feel like you have been disconnected from
 Reality? (Yes | No) "
crlf crlf
 " Your answer: " )
 (assert (ifYesNochoice4 (read)))
)
; ################ Rule number 07 ###########################
; Conclusion
 (defrule Experiencing_Mental_unease7
 (ifYesNochoice4 yes)
 ?retractChy <- (ifYesNochoice4 yes)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " You are suffering from
Psychosis- Psychotic disorder" crlf crlf
"Recommendations are: Cognitive behavioral therapy and
psychotic medicaions"
 crlf crlf " Thank you for using the
system. Glad you were served "crlf crlf )
)
; ################### Rule number 08 ########################
; No matches
 (defrule Experiencing_Mental_unease8
 (ifYesNochoice4 no)
 ?retractChy <- (ifYesNochoice4 no)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " If your symptoms don't exist in this diagnosis you might have to visit a doctor
 for closer evaluation OR" crlf
 "Try again..."
 crlf crlf " Thank you for using the system 
 Glad you were served "crlf crlf )
)
; ################### Rule number 09 ########################
 (defrule Experiencing_Mental_unease9
(ifYesNochoice1 no)
 ?retractChy <- (ifYesNochoice1 no)
 (not (ifYesNochoice5 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Are you experiencing Nightmares 
 or unwanted flashbacks," crlf
 " Emotional distress when experiencing reminders of the trauma
 ? (Yes | No) " crlf crlf
 " Your answer: " )
 (assert (ifYesNochoice5 (read)))
)
;; ################### Rule number 10 #########################
; Conclusion
 (defrule Experiencing_Mental_unease10
(ifYesNochoice5 yes)
 ?retractChy <- (ifYesNochoice5 yes)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf "You might be suffering from the Post Traumatic Stress 
 Disorder" crlf crlf
 "Recommended diets with vitamin Bs to recover the memory"
 crlf crlf " Thank you for using the
Program. Glad you were served"crlf crlf )
)
;; ################### Rule number 11 ###########################
 (defrule Experiencing_Mental_unease11
(ifYesNochoice5 no)
 ?retractChy <- (ifYesNochoice5 no)
 (not (ifYesNochoice6 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Are you experiencing feelings of guilt and despair " crlf
 "? (Yes | No) "
crlf crlf
 " Your answer: " )
 (assert (ifYesNochoice6 (read)))
)
;; ################### Rule number 12 #############################
; Conclusion
 (defrule Experiencing_Mental_unease12
(ifYesNochoice6 yes)
 ?retractChy <- (ifYesNochoice6 yes)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " You might be experiencing Bipolar disorder " crlf crlf
 "Recommendations: Interpersonal therapy and social living therapy"
 crlf crlf " Thank you for using the system. Glad you were served "crlf crlf )
)
;; ################### Rule number 13 #############################
; No matches
 (defrule Experiencing_Mental_unease13
(ifYesNochoice6 no)
 ?retractChy <- (ifYesNochoice6 no)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " If your symptoms don't exist in this diagnosis you might have to visit a doctor
 for closer evaluation OR" crlf
 "Try again..."
 crlf crlf " Thank you for using the system 
 Glad you were served "crlf crlf )
)
;; ################### Rule number 14 ###############################
 (defrule Experiencing_Mental_unease14 
  ( ifYesNochoice no)
 ?retractChy <- (ifYesNochoice no)
 (not (ifYesNochoice7 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf "Do you have to avoid 
some places or situations ? (yes | no) "
crlf crlf
 " Your answer: " )
 (assert (ifYesNochoice7 (read)))
)
;; ################### Rule number 15 #################################
 (defrule Experiencing_Mental_unease15
 ( ifYesNochoice7 yes)
 ?retractChy <- (ifYesNochoice7 yes)
 (not (ifYesNochoice8 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Do you experience fear being in flying
airplane or being in crowds " crlf
 
  crlf
 " rapid heart beat ? (yes | no) " crlf crlf
 " Your answer: " )
 (assert (ifYesNochoice8 (read)))
)
;; ################### Rule number 16 ################################
; Conclusion
 (defrule Experiencing_Mental_unease16
 ( ifYesNochoice8 yes)
 ?retractChy <- (ifYesNochoice8 yes)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " You are suffering from panic attacks (agoraphobia)
  You are recommended to attend therapy sessions. Avoid caffeine and alcohol."
 crlf crlf " Thank you for using or 
 our system "crlf crlf )
)
;; ################### Rule number 17 ################################
; No matches
 (defrule Experiencing_Mental_unease17
 ( ifYesNochoice8 no)
 ?retractChy <- (ifYesNochoice8 no)
 =>
 (retract ?retractChy)
(printout t crlf crlf crlf " If your symptoms don't exist in this diagnosis you might have to visit a doctor
 for closer evaluation OR" crlf
 "Try again..."
 crlf crlf " Thank you for using the system 
 Glad you were served "crlf crlf )
)
;; ################### Rule number 18 #################################
 (defrule Experiencing_Mental_unease18
 ( ifYesNochoice7 no)
 ?retractChy <- (ifYesNochoice7 no)
 (not (ifYesNochoice9 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Experiencing overwhelming
fear  ? (yes | no) " crlf crlf
 " Your answer: " )
 (assert (ifYesNochoice9 (read)))
)
;; ################### Rule number 19 #################################
 (defrule Experiencing_Mental_unease19
 ( ifYesNochoice9 yes)
 ?retractChy <- (ifYesNochoice9 yes)
 (not (ifYesNochoice10 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Feeling of being dettached from the world
  "crlf
 
  crlf crlf
 " Your answer: " )
 (assert (ifYesNochoice10 (read)))
)
;; ################### Rule number 20 ################################
; Conclusion
 (defrule Experiencing_Mental_unease20
 ( ifYesNochoice10 yes)
 ?retractChy <- (ifYesNochoice10 yes)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " You may be suffering from Anxiety Disorder
Recommend change of diet and lifestyle " crlf crlf 
"Cognitive behaviour 
therapy is also an option " crlf crlf
" Acceptance and commitment therapy also 
recommended"
 crlf crlf " Thank you for 
 using this system. Glad you were served"crlf crlf )
)
;; ##################### Rule number 21 ################################
 (defrule Experiencing_Mental_unease21
 ( ifYesNochoice10 no)
 ?retractChy <- (ifYesNochoice10 no)
 (not (ifYesNochoice11 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Do you feel Shortness of breath, 
 Experiencing Palpitations- Sensation that the heart is racing fluttering or skipping a beat
  or sense of choking"
 "  ?
(yes | no) " crlf crlf
 " Your answer: " )
 (assert (ifYesNochoice11 (read)))
)
;; ##################### Rule number 22 ##################################
;  Conclusion
 (defrule Experiencing_Mental_unease22
 ( ifYesNochoice11 yes)
 ?retractChy <- (ifYesNochoice11 yes)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " You may be suffering from Post Traumatic Stress Disorder" crlf crlf 
"Self Treatment by avoiding Caffeine Nicotine, cold medicine thet contain pseudoephedrine, energy drinks and 
stimulants." crlf crlf 
"Further consultation from Qualified Psychiatrist is advised" 
crlf crlf " Thank you for using the
Program. "crlf crlf )
)
;; ##################### Rule number 23 ####################################
; No matches
 (defrule Experiencing_Mental_unease23
 ( ifYesNochoice11 no)
 ?retractChy <- (ifYesNochoice11 no)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " If your symptoms don't exist in this diagnosis you might have to visit a doctor
 for closer evaluation OR" crlf
 "Try again..."
 crlf crlf " Thank you for using the system 
 Glad you were served "crlf crlf )
)
;; ##################### Rule number 24 ###################################
 (defrule Experiencing_Mental_unease24
 ( ifYesNochoice9 no)
 ?retractChy <- (ifYesNochoice9 no)
 (not (ifYesNochoice12 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Are you Experiencing insomnia 
 or sleeping too much
  ? (yes | no) " crlf crlf
 " Your answer: " )
 (assert (ifYesNochoice12 (read)))
)
;; ##################### Rule number 25 ###################################
 (defrule Experiencing_Mental_unease25
 ( ifYesNochoice12 yes)
 ?retractChy <- (ifYesNochoice12 yes)
 (not (ifYesNochoice13 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Are you feeling emptiness, trouble in concentrating
or hoplessness "crlf crlf
 " (yes | no) "
crlf crlf
 " Your answer: " )
 (assert (ifYesNochoice13 (read)))
)
;; ##################### Rule number 26 ####################################
; Conclusion
 (defrule Experiencing_Mental_unease26
 ( ifYesNochoice13 yes)
 ?retractChy <- (ifYesNochoice13 yes)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf "You are suffering from
Mood disorder " crlf crlf
"You are recommended to have psychotherapy" crlf crlf
"Brain simulation therapy such as electroconvulsive therapy"
 crlf crlf " Thank you for using the
system Glad you were served" crlf crlf )
)
;; ##################### Rule number 27 ###################################
 (defrule Experiencing_Mental_unease27
 ( ifYesNochoice13 no)
 ?retractChy <- (ifYesNochoice13 no)
 (not (ifYesNochoice14 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Have you lost a loved one recently or having 
 relationships problems "crlf
 " or have stopped a particular medication? (yes | no) " crlf crlf
 " Your answer: " )
 (assert (ifYesNochoice14 (read)))
)
;; ##################### Rule number 28 ####################################
; Conclusion
 (defrule Experiencing_Mental_unease28
 ( ifYesNochoice14 yes)
 ?retractChy <- (ifYesNochoice14 yes)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf "You may be suffering from
Acute insomnia also known as short term insomnia " crlf crlf
"Recommended to check your medications. Have cognitive behavioural therapy"
 crlf crlf " Thank you for using the
Program. Glad you were Served "crlf crlf )
)
;; ##################### Rule number 29 #####################################
 (defrule Experiencing_Mental_unease29
 ( ifYesNochoice12 no)
 ?retractChy <- (ifYesNochoice12 no)
 (not (ifYesNochoice15 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " Have you been experiencing difficulty
 to fall back asleep after waking up at night"
 
 "? (yes| no) " crlf
crlf
 " Your answer: " )
 (assert (ifYesNochoice15 (read)))
)
;; ######################## Rule number 30 ###################################
; conclusion
 (defrule Experiencing_Mental_unease30
 ( ifYesNochoice15 yes)
 ?retractChy <- (ifYesNochoice15 yes)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf "You are suffering from
Insomnia" crlf crlf 
"Recommended cognitive behavioural therapy" crlf crlf
"Light therapy where you're exposed to bright light mimicking 
natural sunlight Recommended"
 crlf crlf " Thank you for using the
system. Glad you were served "crlf crlf )
)
;; ######################## Rule number 31 ##################################
; No matches
 (defrule Experiencing_Mental_unease31
 ( ifYesNochoice15 no)
 ?retractChy <- (ifYesNochoice15 no)
 => 
 (retract ?retractChy)
(printout t crlf crlf crlf " If your symptoms don't exist in this diagnosis you might have to visit a doctor
 for closer evaluation OR" crlf
 "Try again..."
 crlf crlf " Thank you for using the system 
 Glad you were served "crlf crlf )
)
;; ######################## Rule number 32 ####################################
;  No matches
 (defrule Experiencing_Mental_unease32
 ( ifYesNochoice14 no)
 ?retractChy <- (ifYesNochoice14 no)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf " If your symptoms don't exist in this diagnosis you might have to visit a doctor
 for closer evaluation OR" crlf
 "Try again..."
 crlf crlf " Thank you for using the system 
 Glad you were served "crlf crlf )
) 