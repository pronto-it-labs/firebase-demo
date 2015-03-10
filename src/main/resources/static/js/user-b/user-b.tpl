<div class="container text-center alert alert-success alert-dismissable">
  <div>
    <div class="">
      <label>Currently viewing User-B's Screen</label>
      <div ng-repeat="notification in notifications"> {{notification}} </div>
    </div>
  </div>
  <button ng-click="pushNotificationtoB()" class="btn btn-success">Generate Notification</button>
  <div>
    <div class="label label-info">
      <label>Check User-A Screen</label>
    </div>
  </div>
</div>
