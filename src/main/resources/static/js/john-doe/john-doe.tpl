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
        <ul class="dropdown-menu menu-override">
          <li class="noti-num noti-style">You have {{(notifications | orderByPriority | filter:{read: false}).length}} notifications</li>
          <li ng-repeat="notification in notifications | orderByPriority " class="noti-style block-fix noti-parent">
          <div ui-sref="home.jane-doe">
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
  <div>Some text here.</div>
  <div class="profile-container">
    <div class="img-container">
      <img style="border-radius: 100%;margin: 0px 5px;" src="../../img/jane.jpg"> </div>
    <div class="user-info-container">
      <div ui-sref="home.jane-doe">
        <h3>Jane Doe</h3>
      </div>
      <div>@jane-doe</div>
      <div class="label label-info">Designer</div>
    </div>
    <div class="btn-container">
      <button ng-click="pushNotificationtoJohnDoe()" class="btn btn-success btn-add"><i class="ion-person-add"></i> Add Friend</button>
    </div>
  </div>
  <!--   <div>
    <div class="label label-success">
      <label>Check Jane Doe Screen</label>
    </div>
  </div> --></div>
