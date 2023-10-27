# Traffic-Light-Negotiation-

Navigating an interaction is a safety-critical task for autonomous vehicles. Using perception to identify traffic lights, other modes of transport, humans and animals despite lighting conditions and occlusions is an interesting problem.

This project requires navigating an intersection safely, considering the traffic light state and surrounding vehicles. The position of other vehicles and traffic light states can be obtained using a combination of sensors and perception algorithms.

Deleverables:
• A comprehensive survey of existing methods related to the problem.
• Design implementation in simulation using MATLAB and Simulink.
• Data collection and thorough performance evaluation of the solution.
• Project report.
• Project poster.

The adjustments made were:
- Creating a load shedding environment in Unreal Engine to simulate the traffic lights displaying no colour.
- Detecting the intersection without the driving scenario.
  
The trafffic light state was detected using a YOLOv2 detector and the stop line detection was detected using image processing. 
The distance to the stop line was calculated to replace the driving scenarios known distance.  

Before downloading the folders the "Traffic Light Negotiation with Unreal Engine Visualization" Tutorail file needs to be downloaded from MATLAB. 
The Unreal Executable AutoVrtlEnv.exe is needed for the Unreal Engine Environment in simulation. The Simulink model TLNWithUnrealTestBench.slx
is the Simulink Model containing the adjustments to the model. 
