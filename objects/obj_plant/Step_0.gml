if (is_growing) {
	if (growth >= stem_sections) {
		growth = stem_sections;
		is_growing = false;
	}
		
	growth += 0.02;
}