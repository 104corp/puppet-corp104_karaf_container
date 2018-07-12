require 'spec_helper_acceptance'

describe 'install corp104_karaf' do
  context 'default parameters' do
    it 'should install package' do
      pp = "class { 'corp104_karaf': }"

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => false)
      apply_manifest(pp, :catch_changes => false)
    end
  end
end
