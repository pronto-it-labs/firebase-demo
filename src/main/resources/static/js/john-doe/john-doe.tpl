<div class="container text-center alert alert-info alert-dismissable">
  <div>
    <div class="">
      <label>Currently viewing
        <span class="btn-info user-container">
          <img style="height: 50px;border-radius: 100%;margin: 0px 5px;" src="../../img/john.jpg" /> John Doe's </span> Screen</label>
      <li class="menu-list-notifications dropdown ng-class: (notifications | orderByPriority | filter:{read: false}).length > 0 ? 'unread-notifications': ''">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="ion-ios-bell noti-icon">
         <div ng-if="(notifications | orderByPriority | filter:{read: false}).length > 0" class="ng-class:(notifications | orderByPriority | filter:{read: false}).length > 0 ? 'unread-notifications style-notification': ''">{{(notifications | orderByPriority | filter:{read: false}).length}}</div>
       </i> </a>
        <ul class="dropdown-menu">
          <li class="noti-num noti-style">You have {{(notifications | orderByPriority | filter:{read: false}).length}} notifications</li>
          <li ng-repeat="notification in notifications | orderByPriority " class="noti-style">
            <div class="col-xs-2">
              <img ng-show="notification.postedByPic" ng-src="http://{{notification.postedByPic}}" width="45px"> <i class="fa fa-user-md no-profilepic-font-reply" ng-show="notification.postedByPic == '' || notification.postedByPic === null"></i> </div>
            <div class="col-xs-10 padl-xs-24">
              <span>
                <strong>{{notification.firstName}}</strong>&nbsp;{{notification.lastName}} </span>
            </div>
          </li>
        </ul>
      </li>
    </div>
  </div>
  <button ng-click="pushNotificationtoJohnDoe()" class="btn btn-info">Generate Notification</button>
  <!--   <div>
    <div class="label label-success">
      <label>Check Jane Doe Screen</label>
    </div>
  </div> --></div>
