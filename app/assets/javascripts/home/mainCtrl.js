angular.module('ngtest')
    .controller('MainCtrl', [
      '$scope',
      'posts',
      function ($scope, posts) {
        $scope.header = "to jest test!";
        $scope.posts = posts.posts;
        $scope.addPost = function () {
          if (!$scope.title || $scope.title === '') {
            return
          }

          console.log('title: ' + $scope.title);

          $scope.posts.push({
            title: $scope.title,
            link: $scope.link,
            upvotes: 0,
            comments: [
              {author: 'Joe', body: 'Cool post!', upvotes: 0},
              {author: 'Bob', body: 'Gread idea, but everything is wrong!', upvotes: 0}
            ]
          });
          $scope.title = '';
          $scope.link = '';
        };

        $scope.incrementUpvotes = function (post) {
          post.upvotes += 1;
        };
      }]);
