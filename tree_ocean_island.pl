#!/usr/bin/perl

use strict;
use warnings;

# Initialize variables
my $goal;
my $target_age_group;

# Get user input
print "What is the goal of your project?\n";
$goal = <STDIN>;
chomp $goal;

print "What age group is the target of the project?\n";
$target_age_group = <STDIN>;
chomp $target_age_group;

# Check for valid input
if ($goal ne 'physical fitness' && $goal ne 'healthy habits' && $target_age_group ne 'young people') {
  print "This project does not encourage physical fitness or healthy habits among young people, and does not address combatting childhood obesity and sedentary lifestyles. Exiting...\n";
  exit 0;
}

# Create a project
my @project_steps;

# Check for physical fitness goal
if ($goal eq 'physical fitness') {
  push @project_steps, "Create a program to encourage physical activity among the target age group";
  push @project_steps, "Identify appropriate physical activities for the target age group";
  push @project_steps, "Encourage existing physical activities in the target age group";
  push @project_steps, "Create incentives for physical activity in the target age group";
  push @project_steps, "Implement a program to encourage physical activity in the target age group";
  push @project_steps, "Provide resources and assistance for physical activities in the target age group";
  push @project_steps, "Monitor the physical activity of the target age group";
  push @project_steps, "Evaluate the project and measure the impact of physical activity on the target age group";
  push @project_steps, "Adjust the project as needed based on the evaluation results";
}

# Check for healthy habits goal
if ($goal eq 'healthy habits') {
  push @project_steps, "Create a program to encourage healthy habits among the target age group";
  push @project_steps, "Identify appropriate healthy habits for the target age group";
  push @project_steps, "Encourage existing healthy habits in the target age group";
  push @project_steps, "Create incentives for healthy habits in the target age group";
  push @project_steps, "Implement a program to encourage healthy habits in the target age group";
  push @project_steps, "Provide resources and assistance for healthy habits in the target age group";
  push @project_steps, "Monitor the healthy habits of the target age group";
  push @project_steps, "Evaluate the project and measure the impact of healthy habits on the target age group";
  push @project_steps, "Adjust the project as needed based on the evaluation results";
}

# Check for combatting childhood obesity goal
if ($target_age_group eq 'young people') {
  push @project_steps, "Create a program to combat childhood obesity in the target age group";
  push @project_steps, "Identify appropriate nutrition education for the target age group";
  push @project_steps, "Encourage healthy eating habits in the target age group";
  push @project_steps, "Create incentives for healthy eating in the target age group";
  push @project_steps, "Implement a program to combat childhood obesity in the target age group";
  push @project_steps, "Provide resources and assistance for nutrition education in the target age group";
  push @project_steps, "Monitor the eating habits of the target age group";
  push @project_steps, "Evaluate the project and measure the impact of nutrition education on the target age group";
  push @project_steps, "Adjust the project as needed based on the evaluation results";
}

# Check for combatting sedentary lifestyles goal
if ($target_age_group eq 'young people') {
  push @project_steps, "Create a program to combat sedentary lifestyles in the target age group";
  push @project_steps, "Identify appropriate activities to reduce sedentary lifestyles in the target age group";
  push @project_steps, "Encourage physical activities in the target age group";
  push @project_steps, "Create incentives for physical activity in the target age group";
  push @project_steps, "Implement a program to combat sedentary lifestyles in the target age group";
  push @project_steps, "Provide resources and assistance for physical activities in the target age group";
  push @project_steps, "Monitor the physical activity of the target age group";
  push @project_steps, "Evaluate the project and measure the impact of physical activity on the target age group";
  push @project_steps, "Adjust the project as needed based on the evaluation results";
}

# Print project steps
print "\nProject Steps:\n\n";
foreach my $step (@project_steps) {
  print "$step\n";
}

print "\nGood luck with your project!\n";
exit 0;