class CartResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :products, as: :has_many, through: :orders
  field :orders, as: :has_many
  field :total, as: :number
  # add fields here
end
