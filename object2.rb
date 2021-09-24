class Lesson
  # 全校生徒数をクラス変数で定義
  @@all_students_count = 0

  def self.print_all_students_count
    p "全校生徒は#{@@all_students_count}人です"
  end

  def initialize(teacher_name, grade, group)
    @teacher_name = teacher_name
    @grade = grade
    @group = group
    # 空欄の名簿を作成
    @meibo = []
  end

  # 生徒を入学させる（入学メソッド）
  def enter(name)
    @meibo.push name
    # 入学したら全校生徒数を+1
    @@all_students_count += 1
  end

  # 名簿を出力させる
  def print_meibo()
    p @meibo
  end
end

Lesson.print_all_students_count

# 山中先生が担当する1年1組
yamanaka = Lesson.new("山中", 1, 1)
yamanaka.enter("平沢")
yamanaka.enter("秋山")
yamanaka.enter("田中")
yamanaka.enter("山田")
yamanaka.enter("鈴木")

Lesson.print_all_students_count

# 森先生が担当する1年2組
mori = Lesson.new("森", 1, 2)
mori.enter("樋口")
mori.enter("齊藤")
mori.enter("星野")
mori.enter("和田")
mori.enter("高山")

Lesson.print_all_students_count


yamanaka.print_meibo()
mori.print_meibo()