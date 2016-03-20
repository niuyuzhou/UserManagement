<div class="generic-container">
    <div class="panel panel-default">
        <div class="panel-heading"><span class="lead">User Registration Form </span></div>
        <div class="formcontainer">
            <form ng-submit="submit()" name="myForm" class="form-horizontal">
                <input type="hidden" ng-model="user.id" />
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-lable" for="file">Name</label>
                        <div class="col-md-7">
                            <input type="text" ng-model="user.username" name="uname" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
                            <div class="has-error" ng-show="myForm.$dirty">
                                <span ng-show="myForm.uname.$error.required">This is a required field</span>
                                <span ng-show="myForm.uname.$error.minlength">Minimum length required is 3</span>
                                <span ng-show="myForm.uname.$invalid">This field is invalid </span>
                            </div>
                        </div>
                    </div>
                </div>
                  
                
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-lable" for="file">Address</label>
                        <div class="col-md-7">
                            <input type="text" ng-model="user.address" class="form-control input-sm" placeholder="Enter your Address. [This field is validation free]"/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-lable" for="file">Email</label>
                        <div class="col-md-7">
                            <input type="email" ng-model="user.email" name="email" class="email form-control input-sm" placeholder="Enter your Email" required/>
                            <div class="has-error" ng-show="myForm.$dirty">
                                <span ng-show="myForm.email.$error.required">This is a required field</span>
                                <span ng-show="myForm.email.$invalid">This field is invalid </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-actions floatRight">
                        <input type="submit"  value="{{!user.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
                        <button type="button" onclick="location.href='#/users/'" class="btn btn-warning btn-sm">Return</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>