function getTargetFrames = retrieveTargetFrames(pathParams)
addpath(genpath('/data/user/ssrira0/MATLAB/eye_tracking_utils_kmv'))
recording_properties = RecordingProperties;
calibration_LT = load(fullfile(pathParams.dataSourceDirFull, [pathParams.runName '_LTdat.mat']);
video_start_time_getsecs = load(fullfile(pathParams.dataSourceDirFull, [pathParams.runName '_rawVidStart.mat']);
raw_frames = compute_event_frames(calibration_LT, video_start_time_getsecs, recording_properties);
round_frames= round(raw_frames);
frameSet_all = [round_frames];
frameSet_h = frameSet_all(1:9);
getTargetFrames.frameSet= transpose(frameSet_h);
getTargetFrames.gazeTargets = transpose(calibration_LT.targets);




