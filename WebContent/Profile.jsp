<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="back.Comrade" import="Autentication.Register" import = "java.util.List" import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width",inital-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Russo+One" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet"
      href="./css/styles.css"
      type="text/css"/>
</head>
</body>
<%! static List<String> posts = new ArrayList<String>(); %>
<div class="top col-md-6">
	<a class="waves-effect waves-light red darken-4 btn"><i class="material-icons left">home</i>Home</a>
	<a class="waves-effect waves-light btn red darken-4"><i class="material-icons left">exit_to_app</i>Log Out</a>
</div>
<div id="modal1" class="modal bottom-sheet">
    <div class="modal-content">
      <h4>Messagens from Comrades</h4>
     	
  <ul id = "collapsa" class="collapsible popout" data-collapsible="accordion">
    <li>
      <div class="collapsible-header"><i class="material-icons">message</i>Camarada Pol Pot</div>
      <div class="collapsible-body">
      <span>
      <div class="card white">
        <div class="chip col m12 disclaimer" style = "color:black">
        	Pol
        	<img src = "http://www.jornalciencia.com/wp-content/uploads/2017/05/pol-pot-smiling.jpg">
            
        </div>
            <div class="card-content">
            <span class="card-title black-text disclaimer">
        		Important info about Yankees
            </span>
            <p>Hello comrade Stalin, how are you doing today, i have some info about
            Mhuricans call me XOXO Pol
            <p>
            </div>
            </div>
        
      </span>
      </div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">message</i>Camarada Lennin</div>
      <div class="collapsible-body"><span>
      <div class="card white">
        <div class="chip col m12 disclaimer" style = "color:black">
        	Vladimir
        	<img src = "https://i.ytimg.com/vi/yjoXiBtyZ1w/hqdefault.jpg">
        </div>
            <div class="card-content">
            <span class="card-title black-text disclaimer">
        		How are we doing today.
            </span>
            <p>Hello great comrade how is mother Russia doing today, I have a great ideia for a Hymn
            </div>
            </div>
      
      </span>
      </div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">message</i>Camarada Marx</div>
      <div class="collapsible-body">
      <span>
      <div class="card white">
        <div class="chip col m12 disclaimer" style = "color:black">
        	Karl
        	<img src = "http://cdn.thinglink.me/api/image/523023357868769280/1240/10/scaletowidth">
        </div>
            <div class="card-content">
            <span class="card-title black-text disclaimer">
        		Joseph Great ideia for a name for you kid
            </span>
            <p>Vladimir Putin, Just let this name sink in</p>
            </div>
            </div>
      </span>
      </div>
    </li>
  </ul> 
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
    </div>
  </div>
  <script>
  $(document).ready(function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
    $('#modal1').modal();
  });
  </script>
  <script>

  $(document).ready(function(){
    $('#collapsa').collapsible();
  });
        
  </script>
<div class="init-body col-md-6">
	<div class="row">
        <div class="col s12">
          <div class="card white">
            <div class="card-image">
            <img src="https://coverfiles.alphacoders.com/128/12862.jpg" style = "height: 50vh">
              <span class="card-title disclaimer">Joseph Stalin</span>
            </div>
         </div>
        </div>
        <div class="col s12 m2">
          <div class="card white">
            <div class="card-image">
            <img src = "http://memes.ucoz.com/_nw/14/91658412.jpg" style = "height: 35vh; width: 35vh;">
            </div>
            </div>
        </div>
        <div class = "col s12 m8 offset-m1">
        <div class="card white">
            <div class="card-content">
            <span class="card-title black-text">
            POST</span>
             <form class="container" action = "#" method = "GET">
                 <div class = "row">
                   <div class="input-field col s12 m6">
                     <textarea name="post" id="post"></textarea>
                     <label for="post">Only allowed opinions</label>
                   </div>
                   <div class="input-field col m6">
                     <button class="btn waves-effect waves-light" type="submit" name="action">
                       Post <i class="material-icons right">send</i>
                     </button>
                   </div>
                 </div>
       			</form>
            </div>
         </div>
    <%
	String info = null;  
    if((String)request.getParameter("post")!=null){
		posts.add(request.getParameter("post").toString());
	}%>
        </div>
        <%for (String S:posts){%>
        <div class = "row">
        <div class = "col s12 m8 offset-m3">
        <div class="card white">
        <div class="chip col m12 disclaimer" style = "color:black">
        	Joseph
        	<img src = "http://memes.ucoz.com/_nw/14/91658412.jpg">
            
        </div>
            <div class="card-content">
            <span class="card-title black-text disclaimer">
            	<%out.println(S); %>
            </span>
            </div>
            </div>
             </div>
        </div>
        <%} %>
        <div class = "row">
       <div class = "col s12 m8 offset-m3">
        <div class="card white">
        <div class="chip col m12 disclaimer" style = "color:black">
        	Joseph
        	<img src = "http://memes.ucoz.com/_nw/14/91658412.jpg">
            
        </div>
            <div class="card-content">
            <span class="card-title black-text disclaimer">
            	The people who cast the votes dont decide an election the people who count the votes do<br/>
            </span>
            	<a href = "#" class = "secondary-content"><i class = "material-icons">exposure_plus_1</i></a>
            	<a href = "#" class = "secondary-content"><i class = "material-icons">exposure_minus_1</i></a>
            </div>
         </div>
        </div>
        </div>
       </div>
       <div class="fixed-action-btn">
    <a class="btn-floating btn-large red modal-trigger" href="#modal1">
      <i class="large material-icons">message</i>
    </a>
    </div>
  </div>
  
        <footer class="page-footer red accent-4">
          <div class="container red accent-4">
            <div class="row">
              <div class="col l6 s12">
              </div>
            </div>
          </div>
          <div class = "grey-text text-lighten-4">
          	Designed in California Assembled in China
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2017 Comunist Enterprises
            </div>
          </div>
        </footer>
            
</html>