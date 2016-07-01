Company.create!([
  {name: "ボストンコンサルティンググループ", logoURL: "http://www.sarasijam.com/images/bcg-logo.gif"},
  {name: "リクルートライフスタイル", logoURL: "https://s3-ap-northeast-1.amazonaws.com/in-fra/company/main_img/44ee5c45d822d94923637dabc2a86c04_production"},
  {name: "レバレジーズ", logoURL: "http://leverages.up.seesaa.net/image/lv_logo%28LeveragesE381AEE381BF%29.jpg"},
  {name: "DeNA", logoURL: "https://anywher.net/wp-content/uploads/2014/11/logo-color_DeNA.jpg"},
  {name: "LITALICO", logoURL: "http://www.zaikei.co.jp/files/press/201411181620031dg1.jpg"},
  {name: "ワークスアプリケーションズ", logoURL: "http://jeek.s3.amazonaws.com/corporation/img/654/corp_654.jpg"},
  {name: "野村総合研究所", logoURL: "https://s3-ap-northeast-1.amazonaws.com/lionlogo/nri.png"}
])
Interest.create!([
  {user_id: 1, company_id: 1, status: "最終面接", date: "2016-08-09"},
  {user_id: 1, company_id: 2, status: "1次選考中", date: "2016-07-17"},
  {user_id: 1, company_id: 3, status: "情報収集中", date: ""},
  {user_id: 1, company_id: 4, status: "2次選考", date: "2016-07-05"},
  {user_id: 1, company_id: 5, status: "2次選考", date: "2016-07-19"},
  {user_id: 1, company_id: 6, status: "情報収集中", date: ""},
  {user_id: 1, company_id: 7, status: "最終面接", date: "2016-07-28"}
])
User.create!([
  {name: "tomoki", email: "tomoki@gmail.com", tel: "111-382-1906", password_digest: "$2a$10$COlm/x/.kHIfwuWbc089DOgmfdFP721liA0zS5vklplDmyNY.YA9a", kind: "user"}
])
