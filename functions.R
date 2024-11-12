get_data <- function(){
  CleanData::unemp           # This function is as simple as it gets; it doesn’t take any arguments and returns the data that we added to our package
}


make_plot <- function(data){
  ggplot(data) +
    geom_col(
      aes(x = year,
          y = active_population,
          fill = place_name)
    ) +
    theme(legend.position = "bottom",
          legend.title = element_blank())  # we can now use this function to define new targets in our _targets.R file
}
