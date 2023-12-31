# Load-Shedding-Traffic-Light-Negotiation

This project involved adapting the existing MATLAB Traffic Light Negotiation with Unreal Engine Visualization model to suit South African conditions, particularly accounting for Load Shedding events. In South Africa, during periods of no electricity, traffic lights function as four-way stops. For simplicity in this project, the traffic lights were simulated as stop signs.

The primary challenge faced was replicating the Load Shedding scenario within Unreal Engine. This setup deactivates all traffic lights, displaying them without any color indication. Once the load shedding state is identified the vehicle's programming focuses on identifying the stop line and halting at the required distance. Detection of the stop line is achieved using image processing techniques displayed in the project breakdown below. Initially, the image was cropped to display only the bottom half, minimizing errors in subsequent processes like Hough Transform for identifying horizontal lines. The cropped image underwent conversion to grayscale, noise reduction via a Gaussian filter, and subsequent edge detection. The Hough Transform was then applied to the edge-detected image, filtering lines based on angle and distance criteria.

Perception-based detection utilized a YOLOv2 detector specially trained to recognize all four traffic light states: Green, Yellow, Red, and Load Shedding (No State). Upon identifying the traffic light state, the appropriate logic was implemented to guide the vehicle in either halting at the intersection or proceeding through it. This involved leveraging the detected states to determine the vehicle's response accurately.

In summary, the project successfully identifies the load shedding traffic light state and detects the intersection's stop line to calculate the distance the vehicle is from the intersection. When encountering load shedding conditions, the vehicle stops at the intersection and treats it as a stop street, proceeding cautiously. Additionally, the scenario can be switched to normal conditions, allowing the vehicle to dynamically decide whether to stop or continue over the intersection based on the detected traffic light states, replicating real-world driving behavior. 

How to run: 

Download all three files in this GitHub repository, TLNWithUnrealTestBench.slxc, detetorYOLO2, and AutoVrtlEnv.uproject. These three files are the Simulink model, the yolov2 detector, and the unreal executable file for load shedding conditions. All additional files needed to run the project can be found on this One drive link https://uctcloud-my.sharepoint.com/:f:/g/personal/wlsmeg005_myuct_ac_za/EnvxSOyK-_5LvkLQAbFS7ScBS-vQ9cjmIyAmt8WAW08hcw?email=capstones%40mathworks.com&e=EJlbTh. This project uses the Traffic Light Negotiation with Unreal Engine Visualization project module which can be downloaded from Simulink directly. Please follow the steps in this link for the necessary toolboxes and packages needed https://www.mathworks.com/help/driving/ug/traffic-light-negotiation-with-unreal-engine-visualization.html. 

Steps:
1. Once the project file is downloaded from Simulink as explained above, open the Simulink model TrafficLightDecisionLogic.slx which has been downloaded from this GitHub repository. ![Full Module](https://github.com/megwilson8/Traffic-Light-Negotiation-/assets/88933163/de30e896-77bd-43b2-92d0-2662399e95b4)
2. Once the Simulink model is open, you need to change the file location of the Unreal Engine scene. To do this, open the sensors environment sub-model, double-click on the Simulation 3D Scene configuration block, and modify the file path to match the location where you saved the AutoVrtlEnv.uproject you downloaded from GitHub. This Unreal Engine scene displays the load shedding conditions. To test normal conditions, modify this block to 'US City Block'.
![TLNWithUnrealExample_02](https://github.com/megwilson8/Traffic-Light-Negotiation-/assets/88933163/1a61a560-d5a6-4169-8b11-ff5836b19b92)

3. Modify the detector file location to match where you saved the detectorYOLO2.mat file. It should be located in TLNUnreal, within the TLNUnreal folder.

4. Run the simulation.
   
# Brief Project Breakdown
There are two main areas in this project: Traffic light state detection and calculating the distance to the intersection stop line. The image below depicts the traffic light during load shedding conditions. 

![NoState1_1196](https://github.com/megwilson8/Traffic-Light-Negotiation-/assets/88933163/66701cc0-3144-4dc5-9f04-81f1b5caac2d)

A YOLOv2 detector was trained to indentify the traffic light state. Once the state is identified, the stop line is determined using image processing. 

Below shows the load shedding state being detected.
![boundingbox](https://github.com/megwilson8/Traffic-Light-Negotiation-/assets/88933163/216c1c76-018a-4a0e-a0c2-0b18ed9c0cd3)

Subsequently, the distance to the traffic light is calculated based on this information. The steps are shown in the images below.

1. Convert the image to greyscale

![Grayscale](https://github.com/megwilson8/Traffic-Light-Negotiation-/assets/88933163/481edbac-062a-4d70-83a2-487b696d7b4d)

2. Filter the image lines using a Gaussian filter, and then apply edge detection.

![Edge detection after filtering](https://github.com/megwilson8/Traffic-Light-Negotiation-/assets/88933163/19a63da7-1b3e-4a6b-9fa8-f3e0bb47ebdf)

3. Apply the Hough transform to the processed image to identify the stop line based on its angle and length. The distance from the stop line is calculated using a formula shown in the code block during the simulation. Subsequently, the necessary braking is applied for the vehicle to stop at the traffic light.
   
 ![Filtered Line](https://github.com/megwilson8/Traffic-Light-Negotiation-/assets/88933163/ccf26306-5ca9-484a-ac69-b462463f3b95)


For more details on how the project was done please refer to my thesis report in the One Drive file.



