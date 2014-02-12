<?php
session_start ();
include ("system/admin_user.class.php");
include ("system/mysql.inc");
include ("system/config.inc");
include ("system/user.class.php");
$admin_user = new admin_user;
$user_fb = new user;

require 'system/facebook-php-sdk-master/src/facebook.php';


 $app_id = '224379811082880';
 $app_secret = '828cea338eb6198d8cf02083532c6acc';
 $app_namespace = 'tuprode';
 $app_url = 'http://apps.facebook.com/' . $app_namespace . '/';
 $scope = 'email,publish_actions';

$facebook = new Facebook(array(
  'appId'  => $app_id,
  'secret' => $app_secret,
));

$user = $facebook->getUser();

//PARA REDIRECCIONAR A FACE, ESTO DEBO DESCOMENTAR CUANDO SUBO
   if (!$user) {
     $loginUrl = $facebook->getLoginUrl(array(
       'scope' => $scope,
       'redirect_uri' => $app_url,
     ));
     
     print('<script> top.location.href=\'' . $loginUrl . '\'</script>');
   } 

if ($user) {
  try {
    $user_profile = $facebook->api('/me');

    $id = $user_profile['id'];
    $username = $user_profile['username'];
    $email = $user_profile['email'];
    $fr_name = $user_profile['first_name'];
    $ls_name = $user_profile['last_name'];
    $fb_location_id = $user_profile['location']['id'];
    $fb_location_name = $user_profile['location']['name'];
    $gender = $user_profile['gender'];

    if ($user_fb->add_fb($id,$username,$email,$fr_name,$ls_name,$fb_location_id,$fb_location_name,$gender)){

    }

  } catch (FacebookApiException $e) {
    error_log($e);
    $user = null;
  }
}

if ($user) {
  $logoutUrl = $facebook->getLogoutUrl();
} else {
  $loginUrl = $facebook->getLoginUrl();
}

?>
<?php echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?".">"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

		<title>TU PRODE </title>

    <link rel="stylesheet" type="text/css" href="ext/resources/css/ext-all.css" />
    <link rel="stylesheet" type="text/css" href="ext/layout-browser/ux/css/CenterLayout.css" />
    <link rel="stylesheet" type="text/css" href="ext/layout-browser/layout-browser.css">
    <script type="text/javascript" src="ext/adapter/ext/ext-base.js"></script>
    <script type="text/javascript" src="ext/ext-all.js"></script>

    <script type="text/javascript" src="ext/layout-browser/ux/CenterLayout.js"></script>
    <script type="text/javascript" src="ext/layout-browser/ux/RowLayout.js"></script>

    <script type="text/javascript" src="ext/layout-browser/layouts/basic.js"></script>
    <script type="text/javascript" src="ext/layout-browser/layout-browser.js"></script>



</head>
	<body>
    <div id="header">
        <h1>Tu Prode</h1>   
    </div>
    <div style="display:none;">

        <!-- Start page content -->
        <div id="start-div">
            <div style="float:left;" ><img src="images/layout-icon.gif" /></div>
            <div style="margin-left:100px;">
                <h2>Bienvenido a TuProde!</h2>
                <p>Desde aquí vas a poder seguir los torneos y tan solo en unos segundos podrás completar los prodes asignados a tu
                perfil!</p>
                <p>Selecciona cada fecha para participar !! Pronto tendrás mas novedades.</p>
            </div>
        </div>

        <!-- Basic layouts -->
        <div id="fecha1-details">
            <h2>Bienvenido a TuProde</h2>
            <p>Solo debes posicionar el mouse sobre los resultados y cambiar el resultado 0 a 0 por lo que consideres, si dejas el 0 a 0 
            sin modificaciones no contabilizará ningún resultado para ese partido.</p>
            <p><b>Próximamente aqui el Ranking de puntos:</b></p>
            <pre><code>
                <br>
                <br>
            </code></pre> 
            <p><a href="javascript:sendChallenge()">Agrega a tus amigos</a></p>
        </div>
        <div id="fecha2-details">
            <h2>Ext.layout.Accordion</h2>
            <p>Displays one panel at a time in a stacked layout.  No special config properties are required other
            than the layout &mdash; all panels added to the container will be converted to accordion panels.</p>
            <p><b>Sample Config:</b></p>
            <pre><code>
layout: 'accordion',
items:[{
    title: 'Panel 1',
    html: 'Content'
},{
    title: 'Panel 2',
    id: 'panel2',
    html: 'Content'
}]
            </code></pre>
            <p>You can easily customize individual accordion panels by adding styles scoped to the panel by class or id.
            For example, to style the panel with id 'panel2' above you could add rules like this:</p>
            <pre><code>
#panel2 .x-panel-body {
    background:#ffe;
    color:#15428B;
}
#panel2 .x-panel-header-text {
    color:#555;
}
            </code></pre>
            <p><a href="http://extjs.com/deploy/dev/docs/?class=Ext.layout.Accordion" target="_blank">API Reference</a></p>
        </div>
        <div id="fecha3-details">
            <h2>Ext.layout.AnchorLayout</h2>
            <p>Provides anchoring of contained items to the container's edges.  This type of layout is most commonly
            seen within FormPanels (or any container with a FormLayout) where fields are sized relative to the
            container without hard-coding their dimensions.</p>
            <p>In this example, panels are anchored for example purposes so that you can easily see the effect.
            If you resize the browser window, the anchored panels will automatically resize to maintain the
            same relative dimensions.</p>
            <p><b>Sample Config:</b></p>
            <pre><code>
layout: 'anchor',
items: [{
    title: 'Panel 1',
    height: 100,
    anchor: '50%'
},{
    title: 'Panel 2',
    height: 100,
    anchor: '-100'
},{
    title: 'Panel 3',
    anchor: '-10, -262'
}]
            </code></pre>
            <p><a href="http://extjs.com/deploy/dev/docs/?class=Ext.layout.AnchorLayout" target="_blank">API Reference</a></p>
        </div>
        <div id="fecha4-details">
            <h2>Ext.layout.BorderLayout</h2>
            <p>This Layout Browser page is already a border layout, and this example shows a separate border layout
            nested within a region of the page's border layout.  Border layouts can be nested with just about any
            level of complexity that you might need.</p>
            <p>Every border layout <b>must</b> at least have a center region.  All other regions are optional.</p>
            <p><b>Sample Config:</b></p>
            <pre><code>
layout:'border',
defaults: {
    collapsible: true,
    split: true,
    bodyStyle: 'padding:15px'
},
items: [{
    title: 'Footer',
    region: 'south',
    height: 150,
    minSize: 75,
    maxSize: 250,
    cmargins: '5 0 0 0'
},{
    title: 'Navigation',
    region:'west',
    margins: '5 0 0 0',
    cmargins: '5 5 0 0',
    width: 175,
    minSize: 100,
    maxSize: 250
},{
    title: 'Main Content',
    collapsible: false,
    region:'center',
    margins: '5 0 0 0'
}]
            </code></pre>
            <p><a href="http://extjs.com/deploy/dev/docs/?class=Ext.layout.BorderLayout" target="_blank">API Reference</a></p>
        </div>
        <div id="fecha5-details">
            <h2>Ext.layout.CardLayout (TabPanel)</h2>
            <p>The TabPanel component is an excellent example of a sophisticated card layout.  Each tab is just
            a panel managed by the card layout such that only one is visible at a time.  In this case, configuration
            is simple since we aren't actually building a card layout from scratch.  Don't forget to set the
            activeItem config in order to default to the tab that should display first.</p>
            <p><b>Sample Config:</b></p>
            <pre><code>
xtype: 'tabpanel',
activeTab: 0, // index or id
items:[{
    title: 'Tab 1',
    html: 'This is tab 1 content.'
},{
    title: 'Tab 2',
    html: 'This is tab 2 content.'
},{
    title: 'Tab 3',
    html: 'This is tab 3 content.'
}]
            </code></pre>
            <p><a href="http://extjs.com/deploy/dev/docs/?class=Ext.layout.CardLayout" target="_blank">CardLayout API Reference</a></p>
            <p><a href="http://extjs.com/deploy/dev/docs/?class=Ext.TabPanel" target="_blank">TabPanel API Reference</a></p>
        </div>
        <div id="fecha6-details">
            <h2>Ext.layout.CardLayout (Wizard)</h2>
            <p>You can use a CardLayout to create your own custom wizard-style screen.  The layout is a standard
            CardLayout with a Toolbar at the bottom, and the developer must supply the navigation function
            that implements the wizard's business logic (see the code in basic.js for details).</p>
            <p><b>Sample Config:</b></p>
            <pre><code>
layout:'card',
activeItem: 0, // index or id
bbar: ['->', {
    id: 'card-prev',
    text: '&amp;laquo; Previous'
},{
    id: 'card-next',
    text: 'Next &amp;raquo;'
}],
items: [{
    id: 'card-0',
    html: 'Step 1'
},{
    id: 'card-1',
    html: 'Step 2'
},{
    id: 'card-2',
    html: 'Step 3'
}]
            </code></pre>
            <p><a href="http://extjs.com/deploy/dev/docs/?class=Ext.layout.CardLayout" target="_blank">API Reference</a></p>
        </div>
        <div id="fecha7-details">
            <h2>Bienvenido a TuProde</h2>
            <p>This is a useful layout style when you need multiple columns that can have varying content height.
            Any fixed-width column widths are calculated first, then any percentage-width columns specified using
            the <tt>columnWidth</tt> config will be calculated based on remaining container width.  Percentages
            should add up to 1 (100%) in order to fill the container.</p>
            <p><b>Sample Config:</b></p>
            <pre><code>
layout:'column',
items: [{
    title: 'Width = 25%',
    columnWidth: .25,
    html: 'Content'
},{
    title: 'Width = 75%',
    columnWidth: .75,
    html: 'Content'
},{
    title: 'Width = 250px',
    width: 250,
    html: 'Content'
}]
            </code></pre>
            <p><a href="http://extjs.com/deploy/dev/docs/?class=Ext.layout.ColumnLayout" target="_blank">API Reference</a></p>
        </div>
        <div id="fecha8-details">
            <h2>Ext.layout.FitLayout</h2>
            <p>A very simple layout that simply fills the container with a single panel.  This is usually the best default
            layout choice when you have no other specific layout requirements.</p>
            <p><b>Sample Config:</b></p>
            <pre><code>
layout:'fit',
items: {
    title: 'Fit Panel',
    html: 'Content',
    border: false
}
            </code></pre>
            <p><a href="http://extjs.com/deploy/dev/docs/?class=Ext.layout.FitLayout" target="_blank">API Reference</a></p>
        </div>
        <div id="fecha9-details">
            <h2>Ext.layout.FormLayout</h2>
            <p>FormLayout has specific logic to deal with form fields, labels, etc.  While you can use a FormLayout in
            a standard panel, you will normally want to use a FormPanel directly in order to get form-specific functionality
            like validation, submission, etc.  FormPanels use a FormLayout internally so the layout config is not needed
            (and the layout may not render correctly if overridden).</p>
            <p><b>Sample Config:</b></p>
            <pre><code>
xtype: 'form', // FormPanel
labelWidth: 75,
width: 350,
defaultType: 'textfield',
items: [{
        fieldLabel: 'First Name',
        name: 'first',
        allowBlank:false
    },{
        fieldLabel: 'Last Name',
        name: 'last'
    },{
        fieldLabel: 'Company',
        name: 'company'
    },{
        fieldLabel: 'Email',
        name: 'email',
        vtype:'email'
    }
],
buttons: [
    {text: 'Save'},
    {text: 'Cancel'}
]
            </code></pre>
            <p><a href="http://extjs.com/deploy/dev/docs/?class=Ext.layout.FormLayout" target="_blank">API Reference</a></p>
        </div>
        <div id="fecha10-details">
            <h2>Ext.layout.TableLayout</h2>
            <p>Outputs a standard HTML table as the layout container.  This is sometimes useful for complex layouts
            where cell spanning is required, or when you want to allow the contents to flow naturally based on standard
            browser table layout rules.</p>
            <p><b>Sample Config:</b></p>
            <pre><code>
layout:'table',
layoutConfig: {
    columns: 3
},
items: [
    {html:'1,1',rowspan:3},
    {html:'1,2'},
    {html:'1,3'},
    {html:'2,2',colspan:2},
    {html:'3,2'},
    {html:'3,3'}
]
            </code></pre>
            <p><a href="http://extjs.com/deploy/dev/docs/?class=Ext.layout.TableLayout" target="_blank">API Reference</a></p>
        </div>

        <div id="fecha11-details">
            <h2>Ext.layout.VBoxLayout</h2>
            <p>A layout that allows for the vertical and horizontal stretching of child items, much like the container
            layout with size management.</p>
            <p><b>Sample Config:</b></p>
            <pre><code>
layout:'vbox',
layoutConfig: {
    align : 'stretch',
    pack  : 'start',
},
items: [
    {html:'panel 1', flex:1},
    {html:'panel 2', height:150},
    {html:'panel 3', flex:2}
]
            </code></pre>
            <p><a href="http://extjs.com/deploy/dev/docs/?class=Ext.layout.VBoxLayout" target="_blank">API Reference</a></p>
        </div>

        <div id="fecha12-details">
            <h2>Ext.layout.HBoxLayout</h2>
            <p>A layout that allows for the vertical and horizontal stretching of child items, much like the column
            layout but can stretch items vertically.</p>
            <p><b>Sample Config:</b></p>
            <pre><code>
layout:'hbox',
layoutConfig: {
    align : 'stretch',
    pack  : 'start',
},
items: [
    {html:'panel 1', flex:1},
    {html:'panel 2', width:150},
    {html:'panel 3', flex:2}
]
            </code></pre>
            <p><a href="http://extjs.com/deploy/dev/docs/?class=Ext.layout.HBoxLayout" target="_blank">API Reference</a></p>
        </div>


        <!-- Custom layouts -->
        <div id="fecha13-details">
            <h2>Ext.ux.layout.RowLayout</h2>
            <p>This is a custom layout that is useful when you need a layout style with multiple rows of content.
            Any fixed-height rows are calculated first, then any percentage-height rows specified using the
            <tt>rowHeight</tt> config will be calculated based on remaining container height.  Percentages
            should add up to 1 (100%) in order to fill the container. Standard panel widths (fixed or
            percentage) are also supported.</p>
            <p><b>Sample Config:</b></p>
            <pre><code>
layout:'ux.row',
items: [{
    title: 'Height = 25%',
    rowHeight: .25,
    width: '50%'
},{
    title: 'Height = 100px',
    height: 100,
    width: 300
},{
    title: 'Height = 75%',
    rowHeight: .75
}]
            </code></pre>
        </div>
        <div id="fecha14-details">
            <h2>Ext.ux.layout.CenterLayout</h2>
            <p>This is a custom layout for centering contents within a container.  The only requirement is
            that the container have a single child panel with a width specified (fixed or percentage).
            The child panel can then contain  any content, including other components, that will display
            centered within the main container. To make the centered panel non-visual, remove the title
            and add <tt>border:false</tt> to the child config.</p>
            <p><b>Sample Config:</b></p>
            <pre><code>
layout:'ux.center',
items: {
    title: 'Centered Panel',
    width: '75%',
    html: 'Some content'
}
            </code></pre>
        </div>


        <!-- Combination layouts -->
        <div id="fecha15-details">
            <h2>Tabs With Nested Layouts</h2>
            <p>There are multiple levels of layout nesting within three different TabPanels in this example.
            Each tab in a TabPanel can have its own separate layout.  As we can see, some have plain content,
            while others contain full BorderLayouts.  There is also a fully-loaded grid nested down inside
            the inner-most tab, showing that there is no limit to how complex your layout can be.</p>
            <p>One of the trickiest aspects of deeply nested layouts is dealing with borders on all the
            different panels used in the layout.  In this example, body padding and region margins are used
            extensively to provide space between components so that borders can be displayed naturally in
            most cases. A different approach would be to minimize padding and use the config properties
            related to borders to turn borders on and off selectively to achieve a slightly different look
            and feel.</p>
        </div>
        <div id="fecha16-details">
            <h2>Complex Layout</h2>
            <p></p>
        </div>

        <!-- Form layouts -->
        <div id="fecha17-details">
            <h2>Absolute Layout Form</h2>
            <p>FormLayout supports absolute positioning in addition to standard anchoring for flexible control over
            positioning of fields and labels in containers.  In this example, the top and left positions of the labels
            and fields are positioned absolute, while the field widths are anchored to the right and/or bottom of the container.</p>
        </div>
    </div>
    <div id="fb-root"></div>
<script src="//connect.facebook.net/en_US/all.js"></script>
<script src="Scripts/ui.js"></script>
<script>
          var appId = '<?php echo $facebook->getAppID() ?>';
          FB.init({
            appId: appId,
            frictionlessRequests: true,
            cookie: true,
          });

          FB.getLoginStatus(function(response) {
            uid = response.authResponse.userID ? response.authResponse.userID : null;
          });
      </script>
</body>
</html>
