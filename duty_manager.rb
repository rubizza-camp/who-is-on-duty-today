class DutyManager
  attr_reader :store
  NUMBERS = %w[3467 3536 3532 3460 3459 3573 3529 3488 3486 3547 3476 3531 3523 3457 3626 3473 3574 3688 3638 3541 3570 3657 3512 3444 3715 3711 3640 3729 3123 3496 3538 3520 3545 3663]

  def self.instance
    @instance ||= self.new
  end

  def initialize
    @store = {}
  end

  def who_is_on_duty?
    date = Date.today.to_s
    @store[date] ||= NUMBERS.shuffle.sample
  end
end
