<div class="generic-container">
    <div class="panel panel-default">
          <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">List of Users </span></div>
        <div class="tablecontainer">
            <table class="table table-hover">
                <thead>
                	<tr>
                	    <td><span>Add user:</span>
							<button type="button" onclick="location.href='#/user/*'" class="btn btn-success custom-width">Add</button>
                		</td>
                		<td span=4></td>
                	<tr>
                	<tr>
                		<td><span>Order by:</span>
							<select ng-model="orderProp">
        						<option value="id" selected>id</option>
        						<option value="username">name</option>
        						<option value="address">address</option>
        						<option value="email">email</option>
      						</select>
                		</td>
                		<td span=4></td>
                	</tr>
                    <tr>
                        <th>ID.</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>Detail</th>
                        <th width="10%"></th>
                    </tr>
                </thead>
                <tbody>
                	<tr>
						<td><input ng-model="search.id"></td>
						<td><input ng-model="search.username"></td>
						<td><input ng-model="search.address"></td>
						<td><input ng-model="search.email"></td>
						<td></td>
					</tr>
                    <tr ng-repeat="u in users | filter:search | orderBy:orderProp">
                        <td><span ng-bind="u.id"></span></td>
                        <td><span ng-bind="u.username"></span></td>
                        <td><span ng-bind="u.address"></span></td>
                        <td><span ng-bind="u.email"></span></td>
                        <td>
                        	<a href="#/user/{{u.id}}" alt="{{u.id}}">Detail&Edit</a>
                        </td>
                        <td>
                        <!-- 
                        <button type="button" ng-click="edit(u.id)" class="btn btn-success custom-width">Edit</button> 
                        --> 
                        <button type="button" ng-click="remove(u.id)" class="btn btn-danger custom-width">Remove</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>