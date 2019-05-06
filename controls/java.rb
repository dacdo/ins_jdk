# encoding: utf-8
# copyright: 2019, The Authors

title 'checking java installation'

# you can also use plain tests
# describe ora_jdk do
#   it { should be_installed }
# end

# you add controls here
control 'java-1.0' do
  impact 0.5
  title 'Check Oracle JDK installation'
  desc 'Check Oracle JDK installation'
  describe ora_jdk do
    it { should be_installed }
  end
end

control 'java-2.0' do
  impact 0.5
  title 'Check Java SE JRE installation'
  desc 'Check ava SE JRE installation'
  describe java_jre do
    it { should be_installed }
  end
end