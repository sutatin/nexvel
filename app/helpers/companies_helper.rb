module CompaniesHelper
  def make_label_class(status)
    label_tag = "label-success"
    array = Array[["最終","label-danger"], ["2","label-warning"],["1","label-info"]]
    array.each do |keyword,class_value|
        label_tag = class_value if status.include?(keyword)
    end
    return label_tag
  end
end
