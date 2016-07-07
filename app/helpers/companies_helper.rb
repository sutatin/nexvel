module CompaniesHelper
  def make_label_class(status)
    label_tag = "label-success"
    array = Array[["最終","label-danger"], ["2","label-warning"],["1","label-info"]]
    array.each do |elm1,elm2|
        label_tag = elm2 if status.include?(elm1)
    end
    return label_tag
  end
end
