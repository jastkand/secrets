require 'spec_helper'

describe Secrets do
  describe '#configure' do
    it 'sets up location of secrets.yml file' do
      Secrets::Config.configure do |config|
        config.secrets_file = File.realpath('spec/fixtures/secrets.yml')
      end

      expect(Secrets::Config.configuration.secrets_file).to eq File.realpath('spec/fixtures/secrets.yml')
    end
  end

  describe '#' do
    before do
      Secrets::Config.configure do |config|
        config.secrets_file = File.realpath('spec/fixtures/secrets.yml')
      end
    end

    it 'responds to method if params exist' do
      expect(Secrets.staging).not_to be_nil
    end

    it 'responds to method on params chain' do
      expect(Secrets.staging.user).not_to be_nil
    end

    it 'raises exception if params is not specified' do
      expect { Secrets.development }.to raise_error NoMethodError
    end
  end
end
