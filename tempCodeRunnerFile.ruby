
# Find the peaks in the experimentROLL data
peaks_indices, _ = find_peaks(experimentROLL)

# Extract the corresponding times for these peaks
peaks_times = time_S[peaks_indices]

# Extract the corresponding roll values for these peaks
peaks_values = np.array(experimentROLL)[peaks_indices]

# Print out the peak data
for i in range(len(peaks_indices)):
    print(f"Peak {i+1}: Time = {peaks_times[i][0]}s, Roll = {peaks_values[i]} degrees")

# Note: Make sure your time_S array is correctly formatted for indexing. 
# If time_S is a 2D array with shape (n, 1), the above code works. 
# If it's not, you may need to adjust the indexing accordingly.