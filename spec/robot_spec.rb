require_relative '../robot'

describe Robot do
  before(:each) do
    @r1 = Robot.new
  end
  describe 'Initialization' do
    it 'should create new robot that is the instance of Robot' do
      expect(@r1).to be_instance_of Robot
    end

    it 'should create robots with different name' do
      @r2 = Robot.new
      expect(@r1.name).not_to eq(@r2.name)
    end
  end

  describe 'Reset' do
    it 'should create new name that is different from previous name' do
      old_name = @r1.name
      @r1.reset
      expect(@r1.name).not_to eq(old_name)
    end
  end
end
