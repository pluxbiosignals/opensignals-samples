%% OpenSignals Lab Streaming Layer - Receiving data from an available OpenSignals stream
%	Example script to show how to receive a (multi-)channel signal stream from OpenSignals
%	using the Lab Streaming Layer (LSL)
%
%	Notes:
%	- 	This example is based on the official LSL 'ReceiveData.m' example which can be found here:
%		http.com/labstreaminglayer/liblsl-Matlab/blob/master/examples/ReceiveData.m
%	-	Visit the official Lab Streaming Layer repository for the latest news and versions of the LSL:
%    	https://github.com/sccn/labstreaminglayer
%	-	You can download OpenSignals (r)evolution here:
%    	https://www.biosignalsplux.com/en/software

% Load liblsl-matlab Library
lib = lsl_loadlib();

% Resolve an available OpenSignals stream
disp('Looking for an available OpenSignals stream...');
streams = {};
while isempty(streams)
	streams = lsl_resolve_byprop(lib, 'name', 'OpenSignals');
end
disp('OpenSignals stream found...');

% Create an inlet to receive signal samples from the stream
inlet = lsl_inlet(streams{1});

% Get information about the stream
stream_info = inlet.info();

% Get individual stream attributes
stream_name = stream_info.name();
stream_mac = stream_info.type();
stream_n_channels = stream_info.channel_count();

% Store sensor channel info & units in a containers.map
stream_channels = containers.Map('KeyType', 'double', 'ValueType', 'any');
channels = stream_info.desc().child('channels').child('channel');
channel = 0;

% Loop through all available channels
for k = 1:(stream_n_channels - 1)
	% Get the channel number (e.g. 1)
	channel = k + 1;

	% Get the channel type (e.g. ECG)
	sensor = channels.child_value('sensor');

	% Get the channel unit (e.g. mV)
	unit = channels.child_value('unit');
    
	% Store the information in stream_channels
	stream_channels(channel) = [sensor, unit]
    channels = channels.next_sibling();
end

while true
    % Receive samples
    [samples, ts] = inlet.pull_sample();
    fprintf('%.5f\n', ts);
    fprintf('%.2f\t', samples);
end
