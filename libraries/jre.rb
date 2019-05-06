class JavaJre < Inspec.resource(1)
  name 'java_jre'

  example "
    describe java_jre do
      it { should be_installed }
    end
  "
  def installed?
    inspec.command('java -version').stderr.include?('Runtime Environment')
  end
end
