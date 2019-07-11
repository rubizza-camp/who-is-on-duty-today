class DutyManager
  attr_reader :store

  def initialize
    @store = {}
  end

  def who_is_on_duty?
    date = Date.today.to_s
    @store[date] ||= %w[111 222 333].shuffle.sample
  end
end