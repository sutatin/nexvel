Company.create!([
  {name: "ボストンコンサルティンググループ", logoURL: "http://www.sarasijam.com/images/bcg-logo.gif"},
  {name: "リクルートライフスタイル", logoURL: "http://wired.jp/wp-content/uploads/2013/03/Recruit-Lifestyle-logo.jpg"},
  {name: "レバレジーズ", logoURL: "http://leverages.up.seesaa.net/image/lv_logo%28LeveragesE381AEE381BF%29.jpg"},
  {name: "DeNA", logoURL: "http://dena.com/jp/images/og.png"},
  {name: "LITALICO", logoURL: "http://litalico.co.jp/ogp.png"},
  {name: "ワークスアプリケーションズ", logoURL: "http://jeek.s3.amazonaws.com/corporation/img/654/corp_654.jpg"},
  {name: "野村総合研究所", logoURL: "https://s3-ap-northeast-1.amazonaws.com/lionlogo/nri.png"}
])
Interest.create!([
  {user_id: 1, company_id: 1, status: "最終面接", date: nil},
  {user_id: 1, company_id: 2, status: "1次選考中", date: nil},
  {user_id: 1, company_id: 3, status: "情報収集中", date: nil},
  {user_id: 1, company_id: 4, status: "2次選考中", date: nil},
  {user_id: 1, company_id: 5, status: "2次結果待ち", date: nil},
  {user_id: 1, company_id: 6, status: "情報収集中", date: nil},
  {user_id: 1, company_id: 7, status: "最終面接", date: nil}
])
User.create!([
  {name: "tomoki", email: "tomoki@gmail.com", tel: "111-382-1906", password_digest: "$2a$10$COlm/x/.kHIfwuWbc089DOgmfdFP721liA0zS5vklplDmyNY.YA9a", kind: "user"}
])
