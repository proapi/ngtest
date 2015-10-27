json.array! @posts do |post|
  json.id post.id
  json.title post.title
  json.link post.link
  json.upvotes post.upvotes
  json.comments post.comments
end
