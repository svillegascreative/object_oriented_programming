class Paperboy
  attr_accessor :name, :experience
  attr_reader :earnings

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    50 + @experience / 2
  end

  def deliver(start_address, end_address)
    papers_delivered = end_address - start_address

    if papers_delivered < quota
      @earnings = papers_delivered * 0.25 - 2.0
    elsif papers_delivered >= quota
      @earnings = (0.25 * papers_delivered) + (papers_delivered - quota) * 0.25
    end

    @experience += papers_delivered
  end

end
