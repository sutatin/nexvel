module CompaniesHelper
  def make_label_class(status)
    label_tag = "label-success"
    array = Array[["最終面接","label-danger"], ["2次選考","label-warning"],["情報収集中","label-info"]]
    array.each do |elm1,elm2|
        label_tag = elm2 if elm1 == status
    end
    return label_tag
  end
end
