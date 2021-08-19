module Loggable
  # 特異メソッドとしてメソッドを定義する
  def self.log(text)
    puts "[LOG] #{text}"
  end
end
# ほかのクラスにミックスインしなくてもモジュール単体でそのメソッドを呼び出せる
Loggable.log('Hello.')

module LoggableSecond
  def log(text)
    puts "[LOG] #{text}"
  end
  #logメソッドをミックスインとしても、モジュールの特異メソッドとしても使えるようにする
  # (module_functionは対象メソッドの定義よりも下で呼び出す)
  module_function :log
end
# モジュールの特異メソッドとしてlogメソッドを呼び出す
LoggableSecond.log('Hello.')

# Loggable.Secondモジュールをincludeしたクラスを定義する
class Product
  include LoggableSecond

  def title
    # includeしたLoggalableSecondモジュールのlogメソッドを呼び出す
    log 'title is called.'
    'A great movie'
  end
end
# ミクスインとしてlogメソッドを呼び出す
product = Product.new
puts product.title


module LoggableThird
  # 定数を定義する
  PREFIX = '[LOG]'.freeze

  def log(text)
    puts "#{PREFIX} #{text}"
  end
end
# 定数を参照する
puts LoggableThird::PREFIX


# モジュールの特異メソッドとしてsqrt（平方根）メソッドを利用する
Math.sqrt(2)

class Calculator
  include Math

  def calc_sqrt(n)
    # ミックスインとしてもMathモジュールのsqrtメソッドを使う
    sqrt(n)
  end
end
calculator = Calculator.new
puts calculator.calc_sqrt(2)

# 自然数の底
puts Math::E
# 円周率
puts Math::PI

# Kernelモジュールの特異メソッドとしてputsやpを呼び出す
Kernel.puts "Hello."
Kernel.p [1, 2, 3]