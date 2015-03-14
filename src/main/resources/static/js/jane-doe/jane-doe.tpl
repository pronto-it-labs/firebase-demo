<div class="container text-center alert alert-success alert-dismissable">
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
