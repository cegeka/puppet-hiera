#!/usr/bin/env rspec

require 'spec_helper'

describe 'hiera' do
  
  it { should contain_class 'hiera' }

end
