function JOBLIST = MonteCarloImageGenerationJobFile_ND()

% Region dimensions
regionHeight = 256;
regionWidth  = 256;
regionDepth  = 64;

DefaultJob.JobOptions.ParallelProcessing = 0;
DefaultJob.JobOptions.NumberOfDigits = 6;
DefaultJob.JobOptions.RotationRangeType = 'lin';
DefaultJob.JobOptions.RotationAngleUnits = 'rad';
DefaultJob.JobOptions.RunCompiled = 0;
DefaultJob.JobOptions.ReSeed = 1;

DefaultJob.ImageType = 'synthetic';
DefaultJob.SetType = 'mc';
DefaultJob.CaseName = '2015-04-07_uncertainty_calibration_images';
DefaultJob.ProjectRepository = '~/Desktop/uncertainty_calibration_images';

DefaultJob.Parameters.RegionHeight = regionHeight;
DefaultJob.Parameters.RegionWidth = regionWidth;
DefaultJob.Parameters.Sets.Start = 1;
DefaultJob.Parameters.Sets.End = 1;
DefaultJob.Parameters.Sets.ImagesPerSet = 10;

% Rigid-body displacements (pixels)
DefaultJob.Parameters.TX = 1 * regionWidth  / 8 * [-1, 1];
DefaultJob.Parameters.TY = 1 * regionHeight / 8 * [-1, 1];
DefaultJob.Parameters.TZ = 1 * regionDepth  / 8 * [-1, 1];

% Range of isotropic scaling factors
DefaultJob.Parameters.Scaling = [1 1]; 

% Range of rotation angles (degrees)
DefaultJob.Parameters.Rotation_Z_01 = 0 * [1 1];
DefaultJob.Parameters.Rotation_Y = 0 * [1 1];
DefaultJob.Parameters.Rotation_Z_02 = 0 * [1 1];

% Range of horizontal shearing factors
DefaultJob.Parameters.ShearX = 1 * [1, 1];

% Range of vertical shearing factors
DefaultJob.Parameters.ShearY = 1 * [1, 1];

% Range of particle concentrations (particles per pixel)
DefaultJob.Parameters.ParticleConcentration = 0.002 * [1 1];

% Particle diameter (pixels)
DefaultJob.Parameters.ParticleDiameter.Mean = sqrt(8);
DefaultJob.Parameters.ParticleDiameter.Std = [0, 0];

% Noise parameters
DefaultJob.Parameters.Noise.Mean = 0.05;
DefaultJob.Parameters.Noise.Std = 0.05;

% Image dimensionality
DefaultJob.Parameters.ImageDimensionalitiy = 2;

% Standard deviation of the simulated Gaussian beam profile
% in the Z-direction.
DefaultJob.Parameters.BeamPlaneStdDev = 4;

% Case 1
SegmentItem = DefaultJob;
SegmentItem.SetType = 'lin';
SegmentItem.CaseName = '2015-04-07_uncertainty_calibration_images';
SegmentItem.Parameters.RegionHeight = 64;
SegmentItem.Parameters.RegionWidth = 64;
SegmentItem.Parameters.RegionDepth = 64;
SegmentItem.Parameters.TX =  1 * [0 1];
SegmentItem.Parameters.TY =  1 * [0 1];
SegmentItem.Parameters.TZ =  0 * [0 1];
SegmentItem.Parameters.Rotation_Z_01 = 0 * pi * [0 1];
SegmentItem.Parameters.Rotation_Y    = 0 * pi * [0 1];
SegmentItem.Parameters.Rotation_Z_02 = 0 * pi * [0 1];
SegmentItem.Parameters.ShearX = 1 * [0.01, 0.2];
SegmentItem.Parameters.ShearY = 1 * [0.01, 0.2];
SegmentItem.Parameters.Scaling = 1 * [1, 1];
SegmentItem.Parameters.Noise.Mean = 0.00;
SegmentItem.Parameters.Noise.Std = 0.00;
SegmentItem.Parameters.ParticleDiameter.Mean = 1 * [0.01, 0.1];
SegmentItem.Parameters.ParticleDiameter.Std = 0 * [0.00, 0.10];
JOBLIST(1) = SegmentItem;

end








