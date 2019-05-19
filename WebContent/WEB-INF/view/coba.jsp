<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" ng-app="StarterApp">
<head>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/angular_material/1.0.0/angular-material.min.css">
	<link href="/recources/css/coba.scss">
</head>
<body layout="row" ng-controller="AppCtrl">
	<md-sidenav layout="column" class="md-sidenav-left md-whiteframe-z2"
		md-component-id="left" md-is-locked-open="$mdMedia('gt-md')">
	<md-toolbar class="md-hue-2"> <span flex></span>
	<div layout="row" layout-align="start center">
		<md-icon class="md-avatar" md-svg-icon="avatars:svg-1"></md-icon>
		<span flex></span>
	</div>
	<span flex></span>
	<div class="md-body-2">Firstname Lastname</div>
	<div class="md-body-1">email@domainname.com</div>
	</md-toolbar> <md-list flex> <md-list-item class="md-2-line"
		ng-repeat="item in menu" role="link" md-ink-ripple> <md-icon
		md-svg-icon="{{item.icon}}" aria-label="{{item.title}}"></md-icon>
	<div class="md-list-item-text">
		<span class="md-body-2">{{item.title}}</span>
	</div>
	</md-list-item> <md-divider></md-divider> <md-subheader class="md-no-sticky">Management</md-subheader>
	<md-list-item class="md-2-line" ng-repeat="item in admin" role="link"
		md-ink-ripple> <md-icon md-svg-icon="{{item.icon}}"
		aria-label="{{item.title}}"></md-icon>
	<div class="md-list-item-text">
		<span class="md-body-2">{{item.title}}</span>
	</div>
	</md-list-item> </md-list> </md-sidenav>
	<div layout="column" class="relative" layout-fill role="main">
		<md-button class="md-fab md-fab-bottom-right" aria-label="Add"
			ng-click="showAdd($event)"> <md-icon
			md-svg-icon="content:ic_add_24px" aria-label="Plus"></md-icon> </md-button>
		<md-toolbar class="animate-show md-whiteframe-z1"
			ng-show="!showSearch">
		<div class="md-toolbar-tools">
			<md-button class="md-icon-button" ng-click="toggleSidenav('left')"
				hide-gt-md aria-label="Menu"> <md-icon
				md-svg-icon="navigation:ic_menu_24px" aria-label="Menu"></md-icon> </md-button>
			<h3>Q &amp; A</h3>
			<span flex></span>
			<md-button class="md-icon-button" aria-label="Search"
				ng-click="toggleSearch()"> <md-icon
				md-svg-icon="action:ic_search_24px" aria-label="Search"></md-icon> </md-button>
			<md-button class="md-icon-button" aria-label="Open Settings"
				ng-click="showListBottomSheet($event)"> <md-icon
				md-svg-icon="navigation:ic_more_vert_24px" aria-label="More"></md-icon>
			</md-button>
		</div>
		<span flex></span> <md-tabs md-stretch-tabs="always"
			md-selected="data.selectedIndex"> <md-tab id="tab1"
			aria-controls="tab1-content"> Answered </md-tab> <md-tab id="tab2"
			aria-controls="tab2-content"> Bookmarked </md-tab> </md-tabs> </md-toolbar>
		<md-toolbar ng-show="showSearch"
			class="animate-show md-hue-1 md-whiteframe-z1">
		<div class="md-toolbar-tools">
			<md-button class="md-icon-button" ng-click="toggleSearch()"
				aria-label="Menu"> <md-icon
				md-svg-icon="navigation:ic_arrow_back_24px" aria-label="Back"></md-icon>
			</md-button>
			<h3 role="button" ng-click="toggleSearch()">Back</h3>
			<span flex="5"></span> <span ng-controller="DemoCtrl as ctrl" flex>
				<md-autocomplete md-theme="input" md-input-name="autocompleteField"
					md-no-cache="ctrl.noCache" md-selected-item="ctrl.selectedItem"
					md-search-text="ctrl.searchText"
					md-items="item in ctrl.querySearch(ctrl.searchText)"
					md-item-text="item.display" placeholder="Search">
				<md-item-template> <span
					md-highlight-text="ctrl.searchText">{{item.display}}</span> </md-item-template>
				<div ng-messages="searchForm.autocompleteField.$error"
					ng-if="searchForm.autocompleteField.$touched">
					<div ng-message="required">
						You <b>must</b> have a favorite state.
					</div>
					<div ng-message="minlength">Your entry is not long enough.</div>
					<div ng-message="maxlength">Your entry is too long.</div>
				</div>
				</md-autocomplete>
			</span>

		</div>
		</md-toolbar>
		<md-content flex> <ui-view layout="column" layout-fill>
		<ng-switch on="data.selectedIndex" class="tabpanel-container">
		<div role="tabpanel" id="tab1-content" aria-labelledby="tab1"
			ng-switch-when="0" md-swipe-left="next()" md-swipe-right="previous()"
			layout="column" layout-margin>
			<div>
				<md-card ng-repeat="item in activity | filter:search"> <md-list-item
					class="md-2-line"> <md-icon class="md-avatar"
					md-svg-icon="avatars:{{item.avatar}}"></md-icon>
				<div class="md-list-item-text">
					<h3>{{item.what}}</h3>
					<p>
						{{item.who}} in <a ui-sref="#">category name 
					</p>
				</div>
				</md-list-item> <md-divider></md-divider> <md-card-content>
				{{item.notes}} </md-card-content> <md-divider></md-divider> <md-card-actions
					layout="row" layout-align="space-around center">
				<md-button> <md-icon
					md-svg-icon="action:ic_thumb_up_24px" aria-label="Forward"></md-icon>
				<span>12 <span hide-xs>likes</span></span> </md-button> <md-button>
				<md-icon md-svg-icon="communication:ic_forum_24px"
					aria-label="Forward"></md-icon> <span>4 <span hide-xs>comments</span></span>
				</md-button> <md-button> <md-icon
					md-svg-icon="device:ic_access_time_24px" aria-label="Forward"></md-icon>
				<span>4hrs <span hide-xs>ago</span></span> </md-button> </md-card-actions> </md-card>
			</div>
		</div>
		<div role="tabpanel" id="tab2-content" aria-labelledby="tab2"
			ng-switch-when="1" md-swipe-left="next()" md-swipe-right="previous()"
			layout="row" layout-align="center center">
			<div flex-gt-sm="90" flex-gt-md="80">
				<h2 class="md-title inset">Favorites</h2>
				<md-card> <md-list> <md-list-item
					class="md-3-line"
					ng-repeat="item in activity | filter:search | orderBy:'-what'">
				<md-icon class="md-avatar" hide-sm
					md-svg-icon="avatars:{{item.avatar}}"></md-icon>
				<div class="md-list-item-text">
					<h3>{{item.what}}</h3>
					<h4>{{item.who}}</h4>
					<p>{{item.notes}}</p>
				</div>
				<md-divider md-inset hide-sm ng-if="!$last"></md-divider> <md-divider
					hide-gt-sm ng-if="!$last"></md-divider> </md-list-item> <md-divider></md-divider>
				<md-list-item> <md-button class="md-primary">
				<md-icon md-svg-icon="navigation:ic_arrow_forward_24px"
					aria-label="Forward"></md-icon> <span>More</span> </md-button> </md-list-item> </md-list> </md-card>
			</div>

		</div>

		</ng-switch> </ui-view> </md-content>
	</div>
	<!-- Angular Material requires Angular.js Libraries -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-aria.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-messages.min.js"></script>

	<!-- Angular Material Library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/angular_material/1.0.0/angular-material.min.js"></script>
		<script type="text/javascript" src="/recources/js/coba.js"></script>
</body>
</html>