class PostResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :title, as: :text
  field :body, as: :textarea
  # add fields here

  grid do
    title :title, as: :text
    body :body, as: :text
    cover :image, as: :file, link_to_resource: true
  end
end
