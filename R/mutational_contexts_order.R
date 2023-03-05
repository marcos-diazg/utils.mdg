# R functions to change from SigProfiler mutational matrix row order to
# MutationalPatterns / SignatureToolsLib / others style and vice versa
# Author: Marcos Díaz-Gay
# Date: Nov 17, 2022

map_MP_to_SP <- function(dataset) {
	if (nrow(dataset) == 96) {
		new_dataset = dataset
		new_dataset[5:8,] = dataset[17:20,]
		new_dataset[9:12,] = dataset[33:36,]
		new_dataset[13:16,] = dataset[49:52,]
		new_dataset[17:20,] = dataset[65:68,]
		new_dataset[21:24,] = dataset[81:84,]
		
		new_dataset[25:28,] = dataset[5:8,]
		new_dataset[29:32,] = dataset[21:24,]
		new_dataset[33:36,] = dataset[37:40,]
		new_dataset[37:40,] = dataset[53:56,]
		new_dataset[41:44,] = dataset[69:72,]
		new_dataset[45:48,] = dataset[85:88,]
		
		new_dataset[49:52,] = dataset[9:12,]
		new_dataset[53:56,] = dataset[25:28,]
		new_dataset[57:60,] = dataset[41:44,]
		new_dataset[61:64,] = dataset[57:60,]
		new_dataset[65:68,] = dataset[73:76,]
		new_dataset[69:72,] = dataset[89:92,]
		
		new_dataset[73:76,] = dataset[13:16,]
		new_dataset[77:80,] = dataset[29:32,]
		new_dataset[81:84,] = dataset[45:48,]
		new_dataset[85:88,] = dataset[61:64,]
		new_dataset[89:92,] = dataset[77:80,]
		
		return(new_dataset)
	}
}

map_SP_to_MP <- function(dataset) {
	if (nrow(dataset) == 96) {
		new_dataset = dataset
		new_dataset[17:20,] = dataset[5:8,]
		new_dataset[33:36,] = dataset[9:12,]
		new_dataset[49:52,] = dataset[13:16,] 
		new_dataset[65:68,] = dataset[17:20,]
		new_dataset[81:84,] = dataset[21:24,]
		
		new_dataset[5:8,] = dataset[25:28,]
		new_dataset[21:24,] = dataset[29:32,]
		new_dataset[37:40,] = dataset[33:36,]
		new_dataset[53:56,] = dataset[37:40,]
		new_dataset[69:72,] = dataset[41:44,]
		new_dataset[85:88,] = dataset[45:48,]
		
		new_dataset[9:12,] = dataset[49:52,]
		new_dataset[25:28,] = dataset[53:56,]
		new_dataset[41:44,] = dataset[57:60,]
		new_dataset[57:60,] = dataset[61:64,]
		new_dataset[73:76,] = dataset[65:68,]
		new_dataset[89:92,] = dataset[69:72,]
		
		new_dataset[13:16,] = dataset[73:76,]
		new_dataset[29:32,] = dataset[77:80,]
		new_dataset[45:48,] = dataset[81:84,]
		new_dataset[61:64,] = dataset[85:88,] 
		new_dataset[77:80,] = dataset[89:92,]
		
		return(new_dataset)
	}
}
