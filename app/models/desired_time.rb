class DesiredTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '午前勤務（6:00~12:00)' },
    { id: 3, name: '午後勤務（12:00~18:00）' },
    { id: 4, name: '夕夜勤務（18:00~24:00）' },
    { id: 5, name: '深夜勤務（0:00~6:00）' },
  ]

  include ActiveHash::Associations
  has_many :posts

  end