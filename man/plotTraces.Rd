\name{plotTraces}
\alias{plotTraces}
\title{Plots ultrasound polar coordinate data}

\description{
  Filters rawTraces by categories, tiers, and layers. Plots extracted segments
  with means and standard deviation bands calculated through use of polar 
  coordinates. Compares significant constasts between segments along various 
  parts of the tongue.
}

\usage{
plotTraces(rawTraces, polarTraces = "", tiernameAll = c(NA), 
                 categoriesAll = list(c(NA)), layersAll = c(NA),
                 seg_filter = list(c(NA)), mergeCategories = c(FALSE), 
                 origin.algorithm = "BottomMiddle", origin.x = NA,
                 scaling.factor = 800/600,  interval = 1, mean.lines =
                 TRUE, points.display = FALSE, palette = c(),
                 bands.lines = FALSE, bands.fill = TRUE,
                 legend.position = "topleft", means.styles = c(),
                 standard.deviation.styles = "l", plot.ticks = FALSE,
                 plot.labels = FALSE, legend.size = 3, transparency =
                 0.37, pdf.filename = c(), bands.linewidth = 0.3,
                 png.filename = c(), legend.linewidth = 5,
                 means.linewidth = 3, tick.size = 2, maskCategories =
                 c(), rays = list(), bestFitRays = FALSE,
                 bestFitRays.show_elbows = FALSE,
                 bestFitRays.start_point_density = 1, 
                 bestFitRays.intersection_rays.negative = c(),
                 bestFitRays.intersection_rays.positive = c(),
                 angle_neg_rotate = c(), angle_pos_rotate = c(), 
                 ray_color = "darkgrey", elbow_color = "black", bubble = FALSE,
                 x_coor = 0, y_coor = 0, difference_plot = FALSE, 
                 angle_between_best_fit = FALSE, debug_intersections = FALSE)
}

\arguments{
  \item{rawTraces}{data frame returned from loadAllTracesMidPoint()}
  \item{polarTraces}{returned from makeTracesPolar(), optional, outdated}
  \item{tiernameAll}{respective tiers (if applicable) within layers. If none
  specified, all tiers are checked.}
  \item{categoriesAll}{respective categories of segments to extract within 
  tiers.}
  \item{layersAll}{list of layers within metadata to extract x and y coodinate
  data from. Defaults to 'tongue' layer.}
  \item{mergeCategories}{boolean or boolean array, as to whether to merge 
  respective categories.}
  \item{seg_filter}{respective segment_text for additional filtering}
  \item{origin.algorithm}{takes list of all extracted x-coordinates and sets}
  \item{origin.x}{override x coordinate of origin}
  \item{scaling.factor}{default 800/600}
  \item{x_coor}{x_coor of transducer (default = 0)}
  \item{y_coor}{y_coor of transducer (default = 0)}
  \item{angle_between_best_fit}{boolean, whether or not to display violin
  plot of angles between the bestfit lines per category}
  \item{bands.fill}{boolean, whether or not to show standard deviation bands}
  \item{bands.lines}{boolean, whether or not to show lines on edges of standard
  deviation bands}
  \item{bands.linewidth}{line thickness of standard deviation bands}
  \item{bestFitRays}{boolean, whether or not to display lines of best fit for 
  tongue body and tongue root}
  \item{bestFitRays.start_point_density}{Number of intersecting traces per 
  category needed to extend bestFitRays until (default = 1), 0 would be until
  farthest points, 2 would be until each segment has standard deviation}
  \item{bestFitRays.intersection_rays.negative}{List of percentages along 
  bestfit ray on left side to intersect data}
  \item{bestFitRays.intersection_rays.positive}{List of percentages along
  bestfit ray on right side to intersect data}
  \item{angle_neg_rotate}{Corresponding angles to 
  bestFitRays.intersection_rays.negative (default = 0) to rotate rays while
  still keeping the intersections with the bestfit line the same}
  \item{angle_pos_rotate}{Corresponding angles to 
  bestFitRays.intersection_rays.positive (default = 0) to rotate rays while
  still keeping the intersections with the bestfit line the same}
  \item{rays}{list of arrays to specify (x,y), and angle of intersecting ray}
  \item{bestFitRays.show_elbows}{boolean, whether or not to show PMC along
  means}
  \item{bubble}{boolean, whether or not to display PMC cluster graph}
  \item{difference_plot}{boolean, whether or not to display difference_plot for
  the first two segments}
  \item{debug_intersections}{boolean, whether or not to print data frame of 
  segments and their intersections with the perpedicular ray(s)}
  \item{elbow_color}{color of PMC along means (default = "black")}
  \item{interval}{sampling interval, in degrees, for finding intersections with
  existing traces (default = `1`)}
  \item{mean.lines}{boolean, whether or not to display mean lines}
  \item{means.styles}{array to override default solid line (sequentially in 
  order of categories)}
  \item{means.linewidth}{size of mean lines}
  \item{standard.deviation.styles}{line type for standard deviation upper and 
  low bands, (default = "l")}
  \item{transparency}{transparency of standard deviation bands 
  (default = 0.37)}
  \item{palette}{array to override default colour palette}
  \item{pdf.filename}{pdf file name, saves in current directory}
  \item{png.filename}{png file name, saves in current directory}
  \item{plot.labels}{boolean, whether or not to show labels}
  \item{plot.ticks}{boolean, whether or not to show tick marks}
  \item{tick.size}{size of label scaling on axises}
  \item{points.display}{boolean, whether or not to show original 
  annotated points}
  \item{ray_color}{color of bestFitRays.intersection_rays.negative and
  bestFitRays.intersection_rays.positive (default = "darkgrey")}
  \item{labels}{array to override labels}
  \item{legend.position}{default "center", with an option of
  "topleft", "bottomright"}
  \item{legend.size}{size of legend (default = 0.6)}
  \item{legend.linewidth}{size of displayed legend lines }
  \item{maskCategories}{array to override current segment labels}
}
\value{
  Returns a dataframe of filename, annotation number in file, segment,
  x-coordinate, y-coordinate, segment text; Displays and pairwise comparisons.
  User can export output to pdf or png.
}