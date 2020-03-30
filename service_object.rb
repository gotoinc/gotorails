require "ostruct"

class DivideNumbersService
  ERRORS = {
    division_on_zero: "You can't divide number on 0"
  }

  def self.call(*args)
    new(*args).send(:call)
  end

  private
  def initialize(divident, divider)
    @divident = divident
    @divider = divider
    @return = OpenStruct.new(success?: nil, result: 0, errors: { })
  end

  def call
    if @divider != 0
      @return[:success?] = true
      @return.result = @divident / @divider
    else
      @return[:success?] = false
      @return.errors[:division_on_zero] = ERRORS[:division_on_zero]
    end

    @return
  end
end

p "=== Success case ==="

result = DivideNumbersService.call(4, 2)

p "Success? -- #{result.success?}"
p "Errors -- #{result.errors}"
p "Result -- #{result.result}"

p "=== Unsuccess case ==="

result = DivideNumbersService.call(4, 0)

p "Success? -- #{result.success?}"
p "Errors -- #{result.errors}"
p "Result -- #{result.result}"
