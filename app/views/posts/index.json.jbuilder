json.array! @posts do |post|
  json.title post.title
  json.link post.link
  json.upvotes post.upvotes
  json.comments post.comments
end
