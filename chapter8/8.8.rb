# AwesomeApiは何らかのWeb APIを利用するライブラリ、という想定
module AwesomeApi
  # 設定値を保持するクラスインスタンス変数を用意する
  @base_url = ''
  @debug_mode = false

  # クラスインスタンス変数を読み書きするための特異メソッドを定義する
  class << self
    def base_url=(value)
      @base_url = value
    end

    def base_url
      @base_url
    end

    def debug_mode=(value)
      @debug_mode = value
    end

    def debug_mode
      @debug_mode
    end
  end
end
# 設定値を保存する
AwesomeApi.base_url = 'http://example.com'
AwesomeApi.debug_mode = true
# 設定値を参照する
puts AwesomeApi.base_url
puts AwesomeApi.debug_mode