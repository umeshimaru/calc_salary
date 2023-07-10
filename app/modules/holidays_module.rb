module HolidaysModule
  def self.holiday?(date)
    holidays_2023 = [
      [Date.new(2023, 1, 1), 'Sun'],   # 元日
      [Date.new(2023, 1, 9), 'Mon'],   # 成人の日
      [Date.new(2023, 2, 11), 'Sat'],  # 建国記念の日
      [Date.new(2023, 3, 21), 'Tue'],  # 春分の日
      [Date.new(2023, 4, 29), 'Sat'],  # 昭和の日
      [Date.new(2023, 5, 3), 'Wed'],   # 憲法記念日
      [Date.new(2023, 5, 4), 'Thu'],   # みどりの日
      [Date.new(2023, 5, 5), 'Fri'],   # こどもの日
      [Date.new(2023, 7, 17), 'Mon'],  # 海の日
      [Date.new(2023, 8, 11), 'Fri'],  # 山の日
      [Date.new(2023, 9, 18), 'Mon'],  # 敬老の日
      [Date.new(2023, 9, 23), 'Sat'],  # 秋分の日
      [Date.new(2023, 10, 9), 'Mon'],  # 体育の日
      [Date.new(2023, 11, 3), 'Fri'],  # 文化の日
      [Date.new(2023, 11, 23), 'Thu']  # 勤労感謝の日
    ]
      holidays_2023.any? { |holiday| holiday[0] == date }
  end
end