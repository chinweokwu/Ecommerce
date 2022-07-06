class OrderResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :product, as: :belongs_to
  field :cart, as: :belongs_to
  field :quantity, as: :number
 field :total, as: :number
  # add fields here
end
