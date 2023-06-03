#!/bin/bash

# Get the list of model names
models=$(rails runner "puts ActiveRecord::Base.descendants.map(&:name)")

# Loop through each model and generate RSpec test
for model in $models
do
  rails generate rspec:model $model
done
