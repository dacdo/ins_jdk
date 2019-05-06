class OracleJdk < Inspec.resource(1)
  name 'ora_jdk'

  example "
    describe ora_jdk do
      it { should be_installed }
    end
    describe java_jre do
      it { should be_installed }
    end
  "
  def installed?
    inspec.command('java -version').stderr.include?('Oracle')
  end
end
