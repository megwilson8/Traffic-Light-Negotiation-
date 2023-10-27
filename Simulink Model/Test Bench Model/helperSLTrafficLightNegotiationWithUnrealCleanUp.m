% Clean up script for the Traffic Light Negotiation  with Unreal Engine
% Visualization
%
% This script cleans up the example model. It is triggered by the
% CloseFcn callback.
%
%   This is a helper script for example purposes and may be removed or
%   modified in the future.

%   Copyright 2020-2022 The MathWorks, Inc.

clearBuses({ ...
    'BusActors1',...
    'BusDetectionConcatenation1',...
    'BusDetectionConcatenation1Detections',...
    'BusDetectionConcatenation1DetectionsMeasurementParameters',...
    'BusLaneBoundaries1',...
    'BusLaneBoundaries1LaneBoundaries',...
    'BusLaneCenter',...
    'BusLanes',...
    'BusLanesLaneBoundaries',...
    'BusMultiObjectTracker1',...
    'BusMultiObjectTracker1Tracks',...
    'BusRadar',...
    'BusRadarDetections',...
    'BusRadarDetectionsMeasurementParameters',...
    'BusRadarDetectionsObjectAttributes',...
    'BusVehiclePose',...
    'BusVision',...
    'BusVisionDetections',...
    'BusVisionDetectionsMeasurementParameters',...
    'BusVisionDetectionsObjectAttributes'});

clear Cf
clear Cr
clear FB_decel
clear Iz
clear LaneSensor
clear LaneSensorBoundaries
clear M
clear N
clear PB1_decel
clear PB2_decel
clear PredictionHorizon
clear ControlHorizon
clear ReferencePathInfo
clear Ts
clear ans
clear assigThresh
clear default_spacing
clear driver_decel
clear Default_decel
clear egoVehDyn
clear egoVehicle
clear hFigResults
clear hFigure
clear headwayOffset
clear intersectionInfo
clear lf
clear logsout
clear lr
clear m
clear maxMIOLeadDistance
clear max_ac
clear max_dc
clear max_steer
clear min_ac
clear min_steer
clear numSensors
clear numTracks
clear posSelector
clear referencePathInfo
clear referencePathSwitchThreshold
clear refpathSize
clear scenario
clear setVelocity
clear stopVelThreshold
clear tau
clear tau2
clear TimeFactor
clear timeMargin
clear timeToReact
clear time_gap
clear trafficLightConfig
clear v0_ego
clear vehSim3D
clear vehicleLength
clear velSelector
clear waypointsSize
clear xlimit
clear ylimit
clear egoActorID

function clearBuses(buses)
matlabshared.tracking.internal.DynamicBusUtilities.removeDefinition(buses);
end