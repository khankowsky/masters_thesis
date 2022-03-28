###############################################################################
######################## Presentation Plots ###################################
###############################################################################


###############################################################################
######################## Plots for IMS Poster #################################
###############################################################################

#plotting the matches for 1 mile and 24 hrs
paired_tows_1mi_24hr %>%
  ggplot() + 
  geom_sf(data = areas, fill = "grey") +
  geom_polygon(data = NEUS, aes(x=long, y = lat, group = group), fill = "darkgreen",  
               color="black",inherit.aes = FALSE)  +
  geom_point(data = paired_tows_1mi_24hr, aes(x = END_TOW_LON.x,y = END_TOW_LAT.x, color = "NEFSC")) +
  geom_point(data = paired_tows_1mi_24hr, aes(x = END_TOW_LON.y,y = END_TOW_LAT.y, color = "Study Fleet")) +
  
  # geom_segment(data = paired_tows_1mi_24hr, aes(x = START_TOW_LON.x, xend = END_TOW_LON.x,
  #                                               y = START_TOW_LAT.x, yend = END_TOW_LAT.x)) +
  coord_sf(ylim = c(39, 44),  xlim = c(-74, -66)) + 
  scale_colour_manual("", breaks = c("NEFSC", "Study Fleet"), values = c("red", "blue")) +
  labs(title = "Study Fleet tows Matched to NEFSC tows", subtitle = "within 1 mi and 24 hrs")



#plotting the matches for 5 mi and 3 days 
paired_tows_5mi_72hr %>%
  ggplot() + 
  geom_sf(data = areas, fill = "grey") +
  geom_polygon(data = NEUS, aes(x=long, y = lat, group = group), fill = "darkgreen",  
               color="black",inherit.aes = FALSE)  +
  geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.x,y = END_TOW_LAT.x, color = "NEFSC")) +
  geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.y,y = END_TOW_LAT.y, color = "Study Fleet")) +
  
  # geom_segment(data = paired_tows_1mi_24hr, aes(x = START_TOW_LON.x, xend = END_TOW_LON.x,
  #                                               y = START_TOW_LAT.x, yend = END_TOW_LAT.x)) +
  coord_sf(ylim = c(39, 44),  xlim = c(-74, -66)) + 
  scale_colour_manual("", breaks = c("NEFSC", "Study Fleet"), values = c("red", "blue")) +
  labs(title = "Study Fleet tows Matched to NEFSC tows", subtitle = "within 5 mi and 72 hrs")



#Zooming in on the GOM and looking at tow length for 5mi and 3 day matches 
paired_tows_5mi_72hr %>%
  ggplot() + 
  geom_sf(data = areas, fill = "grey") +
  geom_polygon(data = NEUS, aes(x=long, y = lat, group = group), fill = "darkgreen",  
               color="black",inherit.aes = FALSE)  +
  # geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.x,y = END_TOW_LAT.x, color = "NEFSC")) +
  # geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.y,y = END_TOW_LAT.y, color = "Study Fleet")) +
  geom_segment(data = paired_tows_5mi_72hr, aes(x = START_TOW_LON.x, xend = END_TOW_LON.x,
                                                y = START_TOW_LAT.x, yend = END_TOW_LAT.x, color = "NEFSC")) +
  geom_segment(data = paired_tows_5mi_72hr, aes(x = START_TOW_LON.y, xend = END_TOW_LON.y,
                                                y = START_TOW_LAT.y, yend = END_TOW_LAT.y, color = "Study Fleet")) +
  coord_sf(ylim = c(41.9, 43.3),  xlim = c(-71, -69.6)) + 
  scale_colour_manual("", breaks = c("NEFSC", "Study Fleet"), values = c("red", "blue"))
# labs(title = "Study Fleet tows Matched to NEFSC tows", subtitle = "within 5 mi and 72 hrs")



#Zooming in on the GB and looking at tow length for 5mi and 3 day matches 
paired_tows_5mi_72hr %>%
  ggplot() + 
  geom_sf(data = areas, fill = "grey") +
  geom_polygon(data = NEUS, aes(x=long, y = lat, group = group), fill = "darkgreen",  
               color="black",inherit.aes = FALSE)  +
  # geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.x,y = END_TOW_LAT.x, color = "NEFSC")) +
  # geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.y,y = END_TOW_LAT.y, color = "Study Fleet")) +
  geom_segment(data = paired_tows_5mi_72hr, aes(x = START_TOW_LON.x, xend = END_TOW_LON.x,
                                                y = START_TOW_LAT.x, yend = END_TOW_LAT.x, color = "NEFSC")) +
  geom_segment(data = paired_tows_5mi_72hr, aes(x = START_TOW_LON.y, xend = END_TOW_LON.y,
                                                y = START_TOW_LAT.y, yend = END_TOW_LAT.y, color = "Study Fleet")) +
  coord_sf(ylim = c(40.5, 42.5),  xlim = c(-69.6, -66)) + 
  scale_colour_manual("", breaks = c("NEFSC", "Study Fleet"), values = c("red", "blue"))
# labs(title = "Study Fleet tows Matched to NEFSC tows", subtitle = "within 5 mi and 72 hrs")



#Zooming in on the SNE and looking at tow length for 5mi and 3 day matches 
paired_tows_5mi_72hr %>%
  ggplot() + 
  geom_sf(data = areas, fill = "grey") +
  geom_polygon(data = NEUS, aes(x=long, y = lat, group = group), fill = "darkgreen",  
               color="black",inherit.aes = FALSE)  +
  # geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.x,y = END_TOW_LAT.x, color = "NEFSC")) +
  # geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.y,y = END_TOW_LAT.y, color = "Study Fleet")) +
  geom_segment(data = paired_tows_5mi_72hr, aes(x = START_TOW_LON.x, xend = END_TOW_LON.x,
                                                y = START_TOW_LAT.x, yend = END_TOW_LAT.x, color = "NEFSC")) +
  geom_segment(data = paired_tows_5mi_72hr, aes(x = START_TOW_LON.y, xend = END_TOW_LON.y,
                                                y = START_TOW_LAT.y, yend = END_TOW_LAT.y, color = "Study Fleet")) +
  coord_sf(ylim = c(39.5, 41.5),  xlim = c(-72.2, -70.2)) + 
  scale_colour_manual("", breaks = c("NEFSC", "Study Fleet"), values = c("red", "blue"))
# labs(title = "Study Fleet tows Matched to NEFSC tows", subtitle = "within 5 mi and 72 hrs")



#plotting the matches for 7 miles and 120 hrs
paired_tows_7mi_120hr %>%
  ggplot() + 
  geom_sf(data = areas, fill = "grey") +
  geom_polygon(data = NEUS, aes(x=long, y = lat, group = group), fill = "darkgreen",  
               color="black",inherit.aes = FALSE)  +
  geom_point(data = paired_tows_7mi_120hr, aes(x = END_TOW_LON.x,y = END_TOW_LAT.x, color = "NEFSC")) +
  geom_point(data = paired_tows_7mi_120hr, aes(x = END_TOW_LON.y,y = END_TOW_LAT.y, color = "Study Fleet")) +
  
  # geom_segment(data = paired_tows_1mi_24hr, aes(x = START_TOW_LON.x, xend = END_TOW_LON.x,
  #                                               y = START_TOW_LAT.x, yend = END_TOW_LAT.x)) +
  coord_sf(ylim = c(39, 44),  xlim = c(-74, -66)) + 
  scale_colour_manual("", breaks = c("NEFSC", "Study Fleet"), values = c("red", "blue")) +
  labs(title = "Study Fleet tows Matched to NEFSC tows", subtitle = "within 7 mi and 120 hrs (5 days)")




###############################################################################
################## Plots for First Committee Meeting  #########################
###############################################################################

#plotting the matches for 1 mile and 24 hrs
paired_tows_1mi_24hr %>%
  ggplot() + 
  geom_sf(data = areas, fill = "grey") +
  geom_polygon(data = NEUS, aes(x=long, y = lat, group = group), fill = "darkgreen",  
               color="black",inherit.aes = FALSE)  +
  geom_point(data = paired_tows_1mi_24hr, aes(x = END_TOW_LON.x,y = END_TOW_LAT.x, color = "NEFSC")) +
  geom_point(data = paired_tows_1mi_24hr, aes(x = END_TOW_LON.y,y = END_TOW_LAT.y, color = "Study Fleet")) +
  
  # geom_segment(data = paired_tows_1mi_24hr, aes(x = START_TOW_LON.x, xend = END_TOW_LON.x,
  #                                               y = START_TOW_LAT.x, yend = END_TOW_LAT.x)) +
  coord_sf(ylim = c(39, 44),  xlim = c(-74, -66)) + 
  scale_colour_manual("", breaks = c("NEFSC", "Study Fleet"), values = c("red", "blue")) +
  labs(title = "Study Fleet tows Matched to NEFSC tows", subtitle = "within 1 mi and 24 hrs")



#plotting the matches for 5 mi and 3 days 
paired_tows_5mi_72hr %>%
  ggplot() + 
  geom_sf(data = areas, fill = "grey") +
  geom_polygon(data = NEUS, aes(x=long, y = lat, group = group), fill = "darkgreen",  
               color="black",inherit.aes = FALSE)  +
  geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.x,y = END_TOW_LAT.x, color = "NEFSC")) +
  geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.y,y = END_TOW_LAT.y, color = "Study Fleet")) +
  
  # geom_segment(data = paired_tows_1mi_24hr, aes(x = START_TOW_LON.x, xend = END_TOW_LON.x,
  #                                               y = START_TOW_LAT.x, yend = END_TOW_LAT.x)) +
  coord_sf(ylim = c(39, 44),  xlim = c(-74, -66)) + 
  scale_colour_manual("", breaks = c("NEFSC", "Study Fleet"), values = c("red", "blue")) +
  labs(title = "Study Fleet tows Matched to NEFSC tows", subtitle = "within 5 mi and 72 hrs")



#Zooming in on the GOM and looking at tow length for 5mi and 3 day matches 
paired_tows_5mi_72hr %>%
  ggplot() + 
  geom_sf(data = areas, fill = "grey") +
  geom_polygon(data = NEUS, aes(x=long, y = lat, group = group), fill = "darkgreen",  
               color="black",inherit.aes = FALSE)  +
  # geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.x,y = END_TOW_LAT.x, color = "NEFSC")) +
  # geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.y,y = END_TOW_LAT.y, color = "Study Fleet")) +
  geom_segment(data = paired_tows_5mi_72hr, aes(x = START_TOW_LON.x, xend = END_TOW_LON.x,
                                                y = START_TOW_LAT.x, yend = END_TOW_LAT.x, color = "NEFSC")) +
  geom_segment(data = paired_tows_5mi_72hr, aes(x = START_TOW_LON.y, xend = END_TOW_LON.y,
                                                y = START_TOW_LAT.y, yend = END_TOW_LAT.y, color = "Study Fleet")) +
  coord_sf(ylim = c(41.9, 43.3),  xlim = c(-71, -69.6)) + 
  scale_colour_manual("", breaks = c("NEFSC", "Study Fleet"), values = c("red", "blue"))
# labs(title = "Study Fleet tows Matched to NEFSC tows", subtitle = "within 5 mi and 72 hrs")



#Zooming in on the GB and looking at tow length for 5mi and 3 day matches 
paired_tows_5mi_72hr %>%
  ggplot() + 
  geom_sf(data = areas, fill = "grey") +
  geom_polygon(data = NEUS, aes(x=long, y = lat, group = group), fill = "darkgreen",  
               color="black",inherit.aes = FALSE)  +
  # geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.x,y = END_TOW_LAT.x, color = "NEFSC")) +
  # geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.y,y = END_TOW_LAT.y, color = "Study Fleet")) +
  geom_segment(data = paired_tows_5mi_72hr, aes(x = START_TOW_LON.x, xend = END_TOW_LON.x,
                                                y = START_TOW_LAT.x, yend = END_TOW_LAT.x, color = "NEFSC")) +
  geom_segment(data = paired_tows_5mi_72hr, aes(x = START_TOW_LON.y, xend = END_TOW_LON.y,
                                                y = START_TOW_LAT.y, yend = END_TOW_LAT.y, color = "Study Fleet")) +
  coord_sf(ylim = c(40.5, 42.5),  xlim = c(-69.6, -66)) + 
  scale_colour_manual("", breaks = c("NEFSC", "Study Fleet"), values = c("red", "blue"))
# labs(title = "Study Fleet tows Matched to NEFSC tows", subtitle = "within 5 mi and 72 hrs")



#Zooming in on the SNE and looking at tow length for 5mi and 3 day matches 
paired_tows_5mi_72hr %>%
  ggplot() + 
  geom_sf(data = areas, fill = "grey") +
  geom_polygon(data = NEUS, aes(x=long, y = lat, group = group), fill = "darkgreen",  
               color="black",inherit.aes = FALSE)  +
  # geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.x,y = END_TOW_LAT.x, color = "NEFSC")) +
  # geom_point(data = paired_tows_5mi_72hr, aes(x = END_TOW_LON.y,y = END_TOW_LAT.y, color = "Study Fleet")) +
  geom_segment(data = paired_tows_5mi_72hr, aes(x = START_TOW_LON.x, xend = END_TOW_LON.x,
                                                y = START_TOW_LAT.x, yend = END_TOW_LAT.x, color = "NEFSC")) +
  geom_segment(data = paired_tows_5mi_72hr, aes(x = START_TOW_LON.y, xend = END_TOW_LON.y,
                                                y = START_TOW_LAT.y, yend = END_TOW_LAT.y, color = "Study Fleet")) +
  coord_sf(ylim = c(39.5, 41.5),  xlim = c(-72.2, -70.2)) + 
  scale_colour_manual("", breaks = c("NEFSC", "Study Fleet"), values = c("red", "blue"))
# labs(title = "Study Fleet tows Matched to NEFSC tows", subtitle = "within 5 mi and 72 hrs")



#plotting the matches for 7 miles and 120 hrs
paired_tows_7mi_120hr %>%
  ggplot() + 
  geom_sf(data = areas, fill = "grey") +
  geom_polygon(data = NEUS, aes(x=long, y = lat, group = group), fill = "darkgreen",  
               color="black",inherit.aes = FALSE)  +
  geom_point(data = paired_tows_7mi_120hr, aes(x = END_TOW_LON.x,y = END_TOW_LAT.x, color = "NEFSC")) +
  geom_point(data = paired_tows_7mi_120hr, aes(x = END_TOW_LON.y,y = END_TOW_LAT.y, color = "Study Fleet")) +
  
  # geom_segment(data = paired_tows_1mi_24hr, aes(x = START_TOW_LON.x, xend = END_TOW_LON.x,
  #                                               y = START_TOW_LAT.x, yend = END_TOW_LAT.x)) +
  coord_sf(ylim = c(39, 44),  xlim = c(-74, -66)) + 
  scale_colour_manual("", breaks = c("NEFSC", "Study Fleet"), values = c("red", "blue")) +
  labs(title = "Study Fleet tows Matched to NEFSC tows", subtitle = "within 7 mi and 120 hrs (5 days)")



#plotting the matches for 7 miles and 192 hrs
paired_tows_7mi_192hr %>%
  ggplot() + 
  geom_sf(data = areas, fill = "grey") +
  geom_polygon(data = NEUS, aes(x=long, y = lat, group = group), fill = "darkgreen",  
               color="black",inherit.aes = FALSE)  +
  geom_point(data = paired_tows_7mi_192hr, aes(x = END_TOW_LON.x,y = END_TOW_LAT.x, color = "NEFSC")) +
  geom_point(data = paired_tows_7mi_192hr, aes(x = END_TOW_LON.y,y = END_TOW_LAT.y, color = "Study Fleet")) +
  
  # geom_segment(data = paired_tows_1mi_24hr, aes(x = START_TOW_LON.x, xend = END_TOW_LON.x,
  #                                               y = START_TOW_LAT.x, yend = END_TOW_LAT.x)) +
  coord_sf(ylim = c(39, 44),  xlim = c(-74, -66)) + 
  scale_colour_manual("", breaks = c("NEFSC", "Study Fleet"), values = c("red", "blue")) +
  labs(title = "Study Fleet tows Matched to NEFSC tows", subtitle = "within 7 mi and 192 hrs (8 days)")




######################## Table of Common Species ##############################

#table of common species for study fleet 
paired_tows_5mi_72hr %>% 
  count(COMMON_NAME, EFFORT_ID) %>%
  count(COMMON_NAME) %>%
  arrange(desc(n)) %>%
  kbl(col.names = c("Species", "Count")) %>%
  kable_classic("striped", full_width = FALSE)


#table of common species for NEFSC survey 
paired_tows_5mi_72hr %>% 
  count(SVSPP, cruise_station_ID)  %>%
  count(SVSPP) %>%
  arrange(desc(n)) %>%
  kbl(col.names = c("Species", "Count")) %>%
  kable_classic("striped", full_width = FALSE)



############ Distributions of CPUE/Ln(CPUE)/Relative Efficiency ###############
###### these are early explorations, conducted before standardization #######

#plotting the distribution of CPUE for nefsc/sf for cod 
paired_tows_5mi_72hr %>%
  filter(SVSPP == 73 & SPECIES_ITIS == 164712) %>% #cod
  ggplot() + 
  geom_histogram(aes(x = sf_species_cpue, y = ..density..), fill = "red",
                 bins = 183) + 
  geom_label(aes(x = 7, y = 0.4, label = "Study Fleet CPUE"), color = "red") + 
  geom_histogram(aes(x = nefsc_species_cpue, y = -..density..), fill = "blue", 
                 bins = 183) + 
  geom_label(aes(x = 7, y = -0.4, label = "NEFSC CPUE"), color = "blue") + 
  labs(x = "CPUE (lb/min)", y = "Density", 
       title = "Histogram of CPUE for Atlantic Cod", 
       subtitle = "Pairs within 5 mi and 72 hrs")



#plotting the distribution of Ln(CPUE) for nefsc/sf for cod 
paired_tows_5mi_72hr %>%
  filter(SVSPP == 73 & SPECIES_ITIS == 164712) %>% #cod
  mutate(nefsc_species_cpue_LN = log(nefsc_species_cpue)) %>%
  mutate(sf_species_cpue_LN = log(sf_species_cpue)) %>%
  ggplot() + 
  geom_histogram(aes(x = sf_species_cpue_LN, y = ..density..), fill = "red",
                 bins = 183) + 
  geom_label(aes(x = -5, y = 0.5, label = "Study Fleet CPUE"), color = "red") + 
  geom_histogram(aes(x = nefsc_species_cpue_LN, y = -..density..), fill = "blue", 
                 bins = 183) + 
  geom_label(aes(x = -5, y = -1, label = "NEFSC CPUE"), color = "blue") + 
  labs(x = "Ln(CPUE) [lb/min]", y = "Density", 
       title = "Histogram of Ln(CPUE) for Atlantic Cod", 
       subtitle = "Pairs within 5 mi and 72 hrs")



#plotting the histogram for relative efficiency for cod 
paired_tows_5mi_72hr %>%
  filter(SVSPP == 73 & SPECIES_ITIS == 164712) %>% #cod
  mutate(relative_efficiency = sf_species_cpue/nefsc_species_cpue) %>%
  ggplot() + 
  geom_histogram(aes(x = relative_efficiency), bins = 183) + 
  labs(x = "Relative Efficiency (SF CPUE / NEFSC CPUE)", y = "Count", 
       title = "Histogram of Relative Efficiency for Atlantic Cod", 
       subtitle = "Pairs within 5 mi and 72 hrs")


###############################################################################




