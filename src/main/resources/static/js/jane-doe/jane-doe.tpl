<!-- <div class="container text-center alert alert-success alert-dismissable">
  <div>
    <div class="">
      <label>Currently viewing Jane Doe's Screen</label>
      <div ng-repeat="notification in notifications"> {{notification}} </div>
    </div>
  </div>
  <button ng-click="pushNotificationtoJaneDoe()" class="btn btn-success">Generate Notification</button>
  <div>
    <div class="label label-info">
      <label>Check John Doe Screen</label>
    </div>
  </div>
</div>
 -->
<div class="container text-center alert alert-success alert-dismissable">
  <div>
    <div class="">
      <label>Currently viewing
        <span class="btn-success user-container">
          <img style="height: 50px;border-radius: 100%;margin: 0px 5px;" src="../../img/jane.jpg" /> Jane Doe's </span> Screen</label>
      <li class="menu-list-notifications dropdown ng-class: (notifications | orderByPriority | filter:{read: false}).length > 0 ? 'unread-notifications': ''">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="ion-ios-bell noti-icon">
         <div ng-if="(notifications | orderByPriority | filter:{read: false}).length > 0" class="ng-class:(notifications | orderByPriority | filter:{read: false}).length > 0 ? 'unread-notifications style-notification': ''">{{(notifications | orderByPriority | filter:{read: false}).length}}</div>
       </i> </a>
        <ul class="dropdown-menu menu-override">
          <li class="noti-num noti-style">You have {{(notifications | orderByPriority | filter:{read: false}).length}} notifications</li>
          <li ng-repeat="notification in notifications | orderByPriority " class="noti-style block-fix noti-parent">
            <div ui-sref="home.john-doe">
              <div style="float:left;width:20%;">
                <img ng-src="{{notification.imgSrc}}" width="45px" style="border-radius: 100%;"> </div>
              <div style="float:left;width:80%;">
                <span>
                  <strong>{{notification.firstName}}&nbsp;{{notification.lastName}}</strong>&nbsp;{{notification.description}} </span>
              </div>
            </div>
          </li>
        </ul>
      </li>
    </div>
  </div>
  <div>Click <i class="ion-person-add"></i> Add Friend to generate the notification and review it on John Doe's profile. </div>
  <div class="profile-container">
    <div class="img-container">
      <img style="border-radius: 100%;margin: 0px 5px;" src="../../img/john.jpg"> </div>
    <div class="user-info-container">
      <div ui-sref="home.john-doe">
        <h3>John Doe</h3>
      </div>
      <div>@john-doe</div>
      <div class="label label-info">Developer</div>
    </div>
    <div class="btn-container">
      <button ng-click="pushNotificationtoJaneDoe()" class="btn btn-info btn-add"><i class="ion-person-add"></i> Add Friend</button>
    </div>
  </div>
  <!--   <div>
    <div class="label label-success">
      <label>Check Jane Doe Screen</label>
    </div>
  </div> --></div>
