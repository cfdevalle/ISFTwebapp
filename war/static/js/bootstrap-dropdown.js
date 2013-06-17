<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Javascript · Twitter Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="assets/css/docs.css" rel="stylesheet">
    <link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet">
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body data-spy="scroll" data-target=".subnav" data-offset="50">


  <!-- Navbar
    ================================================== -->
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="./index.php">Bootstrap</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li class="">
                <a href="./index.php">Inicio</a>
              </li>
              <li class="">
                <a href="./scaffolding.php">Asaptable</a>
              </li>
              <li class="">
                <a href="./base-css.php">Base CSS</a>
              </li>
              <li class="">
                <a href="./components.php">Componentes</a>
              </li>
              <li class="active">
                <a href="./javascript.php">Javascript plugins</a>
              </li>
              <li class="">
                <a href="./less.php">Usando LESS</a>
              </li>
              <li class="divider-vertical"></li>
              <li class="">
                <a href="./download.php">Personalizar</a>
              </li>
              <li class="">
                <a href="./examples.php">Ejemplos</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="container">

      <!-- Masthead
      ================================================== -->
      <header class="jumbotron subhead" id="overview">
        <h1>Javascript para Boostrap.</h1>
        <p class="lead">Da vida a los componentes de Boostrap &mdash;ahora con 12 plugins de <a href="http://jquery.com/" target="_blank">jQuery</a> personalizados.
        <div class="subnav">
          <ul class="nav nav-pills">
            <li><a href="#javascript">Todos los plugins</a></li>
            <li><a href="#modals">Modal</a></li>
            <li><a href="#dropdowns">Dropdown</a></li>
            <li><a href="#scrollspy">Scrollspy</a></li>
            <li><a href="#tabs">Tab</a></li>
            <li><a href="#tooltips">Tooltip</a></li>
            <li><a href="#popovers">Popover</a></li>
            <li><a href="#alerts">Alert</a></li>
            <li><a href="#buttons">Button</a></li>
            <li><a href="#collapse">Collapse</a></li>
            <li><a href="#carousel">Carousel</a></li>
            <li><a href="#typeahead">Typeahead</a></li>
          </ul>
        </div>
      </header>


      <!-- Using Javascript w/ Bootstrap
      ================================================== -->
      <section id="javascript">
        <div class="page-header">
          <h1>Plugins de jQuery  <small>Una docena de plugins Boostrap para empezar</small></h1>
        </div>
      <div class="row">
        <div class="span3">
          <label>
            <h3><a href="./javascript.php#modals">Modals</a></h3>
            <p>Un plugin modal eficiente pero flexible en el javascript tradicional con solo una funcionalidad m&iacute;nima requerida y valores por defecto inteligentes.</p>
          </label>
        </div>
        <div class="span3">
          <label>
            <h3><a href="./javascript.php#dropdowns">Dropdowns (Desplegables)</a></h3>
            <p>A&ntilde;ade men&uacute;s desplegables a casi cualquier cosa en Boostrap con un plugin simple. Boostrap tiene un soporte total de men&uacute; desplegable en la navbar, los tabs y las pills.</p>
          </label>
        </div>
        <div class="span3">
          <label>
            <h3><a href="./javascript.php#scrollspy">Scrollspy</a></h3>
            <p>Utiliza scrollspy para actualizar autom&aacute;ticamente los enlaces en tu navbar para mostrar el enlace activo actual en la posici&oacute;n de desplazamiento.</p>
          </label>
        </div>
        <div class="span3">
          <label>
            <h3><a href="./javascript.php#tabs">Togglable tabs</a></h3>
            <p>Utiliza este plugin para hacer tabs y pills m&aacute;s &uacute;tiles permiti&eacute;ndoles hacer un toggle a trav&eacute;s de paneles tabulables de contenido local.</p>
          </label>
        </div>
      </div> <!-- /row -->
      <div class="row">
        <div class="span3">
          <label>
            <h3><a href="./javascript.php#tooltips">Tooltips</a></h3>
            <p>Una nueva toma en el plugin de jQuery Tipsy no se basa en im&aacute;genes - utilizan CSS3 para animaciones y "data-attributes" para almacenamiento de t&iacute;tulo local. </p>
          </label>
        </div>
        <div class="span3">
          <label>
            <h3><a href="./javascript.php#popovers">Popovers</a> <small class="muted">*</small></h3>
            <p>A&ntilde;ade peque&ntilde;as superposiciones de contenido, como los del iPad,  a cualquier elemento de caja de informaci&oacute;n secundaria.</p>
            <p class="muted"><strong>*</strong> Requiere que se incluyan <a href="#tooltips">Tooltips</a></p>
          </label>
        </div>
        <div class="span3">
          <label>
            <h3><a href="./javascript.php#alerts">Alert messages</a></h3>
            <p>El plugin de alerta es una clase diminuta para a&ntilde;adir funcionalidad cercana a las alertas</p>
          </label>
        </div>
        <div class="span3">
          <label>
            <h3><a href="./javascript.php#buttons">Buttons</a></h3>
            <p>Haz m&aacute;s con botones. Estados de boton de control o crear grupos de botones para m&aacute;s componentes como las barras de herramientas. </p>
          </label>
        </div>
      </div> <!-- /row -->
      <div class="row" style="margin-bottom: 9px;">
        <div class="span3">
          <label>
            <h3><a href="./javascript.php#collapse">Collapse</a></h3>
            <p>Obt&eacute;n los estilos base y el soporte flexible para componentes desplegables como acordeones y navegaci&oacute;n.</p>
          </label>
        </div>
        <div class="span3">
          <label>
            <h3><a href="./javascript.php#carousel">Carousel</a></h3>
            <p>Crea un tiovivo (merry-go-round) de cualquier contenido que desees proporcionar una presentaci&oacute;n de diapositivas interactiva de contenido. </p>
          </label>
        </div>
        <div class="span3">
          <label>
            <h3><a href="./javascript.php#typeahead">Typeahead</a></h3>
            <p>Un plugin b&aacute;sico y f&aacute;cil de expandir para crear r&aacute;pidamente  typeaheads elegantes con cualquier entrada de texto de formulario.</p>
          </label>
        </div>
        <div class="span3">
          <label>
            <h3>Transiciones <small class="muted">*</small></h3>
            <p>Para efectos de transici&oacute;n simples, incluye bootstrap-transition.js a la diapositiva en alertas modales o de desvanecimiento.</p>
            <p class="muted"><strong>*</strong> Se requiere para animaciones de plugins.</p>
          </label>
        </div>
      </div> <!-- /row -->
      <div class="alert alert-info"><strong>&iexcl;Atenci&oacute;n!</strong> Todos los plugins de javascript requieren la &uacute;ltima versi&oacute;n de jQuery.</div>
    </section>



    <!-- Modal
    ================================================== -->
    <section id="modals">
      <div class="page-header">
        <h1>Modals <small>bootstrap-modal.js</small></h1>
      </div>
      <div class="row">
        <div class="span3 columns">
          <h3>Sobre modals</h3>
          <p>Un plugin modal eficiente pero flexible en el javascript tradicional con solo una funcionalidad m&iacute;nima requerida y valores por defecto inteligentes.</p>
          <a href="assets/js/bootstrap-modal.js" target="_blank" class="btn">Descargar archivo</a>
        </div>
        <div class="span9 columns">
          <h2>Ejemplo est&aacute;tico</h2>
          <p>Abajo tienes un modal rendido estáticamente.</p>
          <div class="well modal-example" style="background-color: #888; border: none;">
            <div class="modal" style="position: relative; top: auto; left: auto; margin: 0 auto; z-index: 1">
              <div class="modal-header">
                <a href="#" class="close" data-dismiss="modal">&times;</a>
                <h3>Encabezamiento modal</h3>
              </div>
              <div class="modal-body">
                <p>Un buen cuerpo…</p>
              </div>
              <div class="modal-footer">
                <a href="#" class="btn">Cerrar</a>
                <a href="#" class="btn btn-primary">Guardar cambios</a>
              </div>
            </div>
          </div> <!-- /well -->

          <h2>Demo en vivo</h2>
          <p>Alternando (toggle) un modal a trav&eacute;s de javascript clicando el bot&oacute;n inferior. Se mostrar&aacute; y aparecer&aacute; al principio de la p&aacute;gina.</p>
          <!-- sample modal content -->
          <div id="myModal" class="modal hide fade">
            <div class="modal-header">
              <a class="close" data-dismiss="modal" >&times;</a>
              <h3>Modal Heading</h3>
            </div>
            <div class="modal-body">
              <h4>Text in a modal</h4>
              <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem.</p>

              <h4>Popover in a modal</h4>
              <p>This <a href="#" class="btn popover-test" title="A Title" data-content="And here's some amazing content. It's very engaging. right?">button</a> should trigger a popover on hover.</p>

              <h4>Tooltips in a modal</h4>
              <p><a href="#" class="tooltip-test" title="Tooltip">This link</a> and <a href="#" class="tooltip-test" title="Tooltip">that link</a> should have tooltips on hover.</p>

              <hr>

              <h4>Overflowing text to show optional scrollbar</h4>
              <p>We set a fixed <code>max-height</code> on the <code>.modal-body</code>. Watch it overflow with all this extra lorem ipsum text we've included.</p>
              <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
              <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
              <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
              <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
              <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
              <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
            </div>
            <div class="modal-footer">
              <a href="#" class="btn" data-dismiss="modal" >Cerrar</a>
              <a href="#" class="btn btn-primary">Guardar cambios</a>
            </div>
          </div>
          <a data-toggle="modal" href="#myModal" class="btn btn-primary btn-large">Activar demo modal</a>

          <hr>

          <h2>Usando bootstrap-modal</h2>
          <p>Llama al modal a trav&eacute;s de javascript:</p>
          <pre class="prettyprint linenums">$('#myModal').modal(opciones)</pre>
          <h3>Opciones</h3>
          <table class="table table-bordered table-striped">
            <thead>
             <tr>
               <th style="width: 100px;">Nombre</th>
               <th style="width: 50px;">Tipo</th>
               <th style="width: 50px;">Por defecto</th>
               <th>Descripci&oacute;n</th>
             </tr>
            </thead>
            <tbody>
             <tr>
               <td>situaci&oacute;n general </td>
               <td>boolean</td>
               <td>true</td>
               <td>Incluye un elemento modal-backdrop. Alternativamente, especifica <code>static</code> para una situaci&oacute;n general que no cierre el modal con un clic.</td>
             </tr>
             <tr>
               <td>teclado</td>
               <td>boolean</td>
               <td>true</td>
               <td>Cierra el modal cuando se presiona la tecla ESC.</td>
             </tr>
             <tr>
               <td>muestra</td>
               <td>boolean</td>
               <td>true</td>
               <td>Muestra el modal cuando se inicia.</td>
             </tr>
            </tbody>
          </table>
          <h3>Etiquetado</h3>
          <p>Puedes activar modales en tu p&aacute;gina de manera f&aacute;cil sin tener que escribir una l&iacute;nea individual de javascript. Simplemente aplica <code>data-toggle="modal"</code> en un elemento controlador con <code>data-target="#foo"</code> o <code>href="#foo"</code> que corresponde a un elemento modal id, y que cuando se hace clic, lanzar&aacute; tu modal.</p>
          <p>Adem&aacute;s, para a&ntilde;adir opciones a tu caso de modal, incluyelas como atributos data adicionales tanto en el elemento de control como en el etiquetado modal mismo.</p>
<pre class="prettyprint linenums">
&lt;a class="btn" data-toggle="modal" href="#myModal" &gt;Launch Modal&lt;/a&gt;
</pre>

<pre class="prettyprint linenums">
&lt;div class="modal" id="myModal"&gt;
  &lt;div class="modal-header"&gt;
    &lt;a class="close" data-dismiss="modal"&gt;&times;&lt;/a&gt;
    &lt;h3&gt;Modal header&lt;/h3&gt;
  &lt;/div&gt;
  &lt;div class="modal-body"&gt;
    &lt;p&gt;One fine body…&lt;/p&gt;
  &lt;/div&gt;
  &lt;div class="modal-footer"&gt;
    &lt;a href="#" class="btn"&gt;Close&lt;/a&gt;
    &lt;a href="#" class="btn btn-primary"&gt;Save changes&lt;/a&gt;
  &lt;/div&gt;
&lt;/div&gt;
</pre>
          <div class="alert alert-info">
            <strong>¡Atención!</strong> Si quieres que tu modal se anime dentro y fuera, añade una clase <code>.fade</code> al elemento <code>.modal</code> (mira la demo para ver esto en acci&oacute;n) e incluye boostrap-transition.js.
          </div>
          <h3>Métodos</h3>
          <h4>.modal(opciones)</h4>
          <p>Activa tu contenido como modal. Acepta un <code>object</code> de opciones opcionales.</p>
<pre class="prettyprint linenums">
$('#myModal').modal({
  keyboard: false
})</pre>
          <h4>.modal('toggle')</h4>
          <p>hace un modal con flip-flop manual.</p>
          <pre class="prettyprint linenums">$('#myModal').modal('toggle')</pre>
          <h4>.modal('show')</h4>
          <p>Muestra manualmente un modal </p>
          <pre class="prettyprint linenums">$('#myModal').modal('show')</pre>
          <h4>.modal('hide')</h4>
          <p>Esconde manualmente un modal.</p>
          <pre class="prettyprint linenums">$('#myModal').modal('hide')</pre>
          <h3>Eventos</h3>
          <p>La clase modal de Bootstrap expone unos eventos para engancharse en una funcionalidad modal. </p>
          <table class="table table-bordered table-striped">
            <thead>
             <tr>
               <th style="width: 150px;">Evento</th>
               <th>Descripci&oacute;n</th>
             </tr>
            </thead>
            <tbody>
             <tr>
               <td>mostrar</td>
               <td>Este evento se activa directamente cuando el método de caso <code>show</code> se llama.</td>
             </tr>
             <tr>
               <td>mostrado</td>
               <td>Este evento se activa cuando el modal ha sido puesto visible para el usuario (esperará que las transiciones css se completen).</td>
             </tr>
             <tr>
               <td>esconder</td>
               <td>Este evento se activa inmediatamente cuando el método de caso <code>hide</code> se llama.</td>
             </tr>
             <tr>
               <td>escondido</td>
               <td>Este evento se activa cuando el modal ha terminado de ser escondido del usuario (esperará que las transiciones css se completen).</td>
             </tr>
            </tbody>
          </table>

<pre class="prettyprint linenums">
$('#myModal').on('hidden', function () {
  // do something…
})</pre>
        </div>
      </div>
    </section>



    <!-- Dropdown
    ================================================== -->
    <section id="dropdowns">
      <div class="page-header">
        <h1>Dropdowns (Desplegables) <small>bootstrap-dropdown.js</small></h1>
      </div>
      <div class="row">
        <div class="span3 columns">
          <h3>Sobre los desplegables</h3>
          <p>A&ntilde;ade men&uacute;s desplegables a casi todo lo que hay en Boostrap con este plugin simple. Boostrap tiene un soporte total en men&uacute;s desplegables en la navbar, los tabs y las pills.</p>
          <a href="assets/js/bootstrap-dropdown.js" target="_blank" class="btn">Descarga el archivo</a>
        </div>
        <div class="span9 columns">
          <h2>Ejemplos</h2>
          <p>Haz clic en los enlaces nav del desplegable en la navbar y las pills inferiores para probar los desplegables.</p>
          <div id="navbar-example" class="navbar navbar-static">
            <div class="navbar-inner">
              <div class="container" style="width: auto;">
                <a class="brand" href="#">Nombre proyecto</a>
                <ul class="nav">
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Desplegable <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      <li><a href="#">Acci&oacute;n</a></li>
                      <li><a href="#">Otra acci&oacute;n</a></li>
                      <li><a href="#">Algo m&aacute;s aqu&iacute;</a></li>
                      <li class="divider"></li>
                      <li><a href="#">Enlace separado</a></li>
                    </ul>
                  </li>
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Desplegable 2 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      <li><a href="#">Acci&oacute;n</a></li>
                      <li><a href="#">Otra acci&oacute;n</a></li>
                      <li><a href="#">Algo m&aacute;s aqu&iacute;</a></li>
                      <li class="divider"></li>
                      <li><a href="#">Enlace separado</a></li>
                    </ul>
                  </li>
                </ul>
                <ul class="nav pull-right">
                  <li id="fat-menu" class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Desplegable 3 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      <li><a href="#">Acci&oacute;n</a></li>
                      <li><a href="#">Otra acci&oacute;n</a></li>
                      <li><a href="#">Algo m&aacute;s aqu&iacute;</a></li>
                      <li class="divider"></li>
                      <li><a href="#">Enlace separado</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
          </div> <!-- /navbar-example -->

          <ul class="nav nav-pills">
            <li class="active"><a href="#">Enlace normal</a></li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Desplegable <b class="caret"></b></a>
              <ul id="menu1" class="dropdown-menu">
                <li><a href="#">Acci&oacute;n</a></li>
                <li><a href="#">Otra acci&oacute;n</a></li>
                <li><a href="#">Algo m&aacute;s aqu&iacute;</a></li>
                <li class="divider"></li>
                <li><a href="#">Enlace separado</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Desplegable 2 <b class="caret"></b></a>
              <ul id="menu2" class="dropdown-menu">
                <li><a href="#">Acci&oacute;n</a></li>
                <li><a href="#">Otra acci&oacute;n</a></li>
                <li><a href="#">Algo m&aacute;s aqu&iacute;</a></li>
                <li class="divider"></li>
                <li><a href="#">Enlace separado</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Desplegable 3 <b class="caret"></b></a>
              <ul id="menu3" class="dropdown-menu">
                <li><a href="#">Acci&oacute;n</a></li>
                <li><a href="#">Otra acci&oacute;n</a></li>
                <li><a href="#">Algo m&aacute;s aqu&iacute;</a></li>
                <li class="divider"></li>
                <li><a href="#">Enlace separado</a></li>
              </ul>
            </li>
          </ul> <!-- /tabs -->

          <hr>

          <h2>Usando bootstrap-dropdown.js</h2>
          <p>Llama a los desplegables v&iacute;a javascript:</p>
          <pre class="prettyprint linenums">$('.dropdown-toggle').dropdown()</pre>
          <h3>Etiquetado</h3>
          <p>Para a&ntilde;adir r&aacute;pidamente una funcionalidad desplegable a cualquier elemento tan solo a&ntilde;ade <code>data-toggle="dropdown"</code> y cualquier desplegable boostrap v&aacute;lido se activar&aacute; autom&aacute;ticamente. </p>
          <div class="alert alert-info">
            <strong>&iexcl;Atenci&oacute;n!</strong> Puede que quieras dirigir opcionalmente un desplegable espec&iacute;fico usando <code>data-target="#fat"</code> o <code>href="#fat"</code>.
          </div>

<pre class="prettyprint linenums">
&lt;ul class="nav nav-pills"&gt;
  &lt;li class="active"&gt;&lt;a href="#"&gt;Regular link&lt;/a&gt;&lt;/li&gt;
  &lt;li class="dropdown" id="menu1"&gt;
    &lt;a class="dropdown-toggle" data-toggle="dropdown" href="#menu1"&gt;
      Dropdown
      &lt;b class="caret"&gt;&lt;/b&gt;
    &lt;/a&gt;
    &lt;ul class="dropdown-menu"&gt;
      &lt;li&gt;&lt;a href="#"&gt;Action&lt;/a&gt;&lt;/li&gt;
      &lt;li&gt;&lt;a href="#"&gt;Another action&lt;/a&gt;&lt;/li&gt;
      &lt;li&gt;&lt;a href="#"&gt;Something else here&lt;/a&gt;&lt;/li&gt;
      &lt;li class="divider"&gt;&lt;/li&gt;
      &lt;li&gt;&lt;a href="#"&gt;Separated link&lt;/a&gt;&lt;/li&gt;
    &lt;/ul&gt;
  &lt;/li&gt;
  ...
&lt;/ul&gt;</pre>
          <h3>M&eacute;todos</h3>
          <h4>$().dropdown()</h4>
          <p>Un api programable para activar menús a una navbar determinada o a una navegación tabulable.</p>
        </div>
      </div>
    </section>



   <!-- ScrollSpy
    ================================================== -->
    <section id="scrollspy">
      <div class="page-header">
        <h1>ScrollSpy <small>bootstrap-scrollspy.js</small></h1>
      </div>
      <div class="row">
        <div class="span3 columns">
          <p>El plugin ScrollSpy es para una actualizaci&oacute;n de objetivos (targets) nav autom&aacute;tica basada en una posici&oacute;n de desplazamiento.</p>
          <a href="assets/js/bootstrap-scrollspy.js" target="_blank" class="btn">Descargar archivo</a>
        </div>
        <div class="span9 columns">
          <h2>Ejemplo de navbar con scrollspy</h2>
          <p>Desplaza el &aacute;rea inferior y observa la actualizaci&oacute;n de la navegaci&oacute;n. Los objetos sub desplegables tambi&eacute;n se subrayar&aacute;n. &iexcl;Int&eacute;ntalo!</p>
          <div id="navbarExample" class="navbar navbar-static">
            <div class="navbar-inner">
              <div class="container" style="width: auto;">
                <a class="brand" href="#">Nombre proyecto</a>
                <ul class="nav">
                  <li><a href="#fat">@fat</a></li>
                  <li><a href="#mdo">@mdo</a></li>
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Desplegable <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      <li><a href="#one">uno</a></li>
                      <li><a href="#two">dos</a></li>
                      <li class="divider"></li>
                      <li><a href="#three">tres</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div data-spy="scroll" data-target="#navbarExample" data-offset="0" class="scrollspy-example">
            <h4 id="fat">@fat</h4>
            <p>
            Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney's photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven't heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel keffiyeh artisan ullamco consequat.
            </p>
            <h4 id="mdo">@mdo</h4>
            <p>
            Veniam marfa mustache skateboard, adipisicing fugiat velit pitchfork beard. Freegan beard aliqua cupidatat mcsweeney's vero. Cupidatat four loko nisi, ea helvetica nulla carles. Tattooed cosby sweater food truck, mcsweeney's quis non freegan vinyl. Lo-fi wes anderson +1 sartorial. Carles non aesthetic exercitation quis gentrify. Brooklyn adipisicing craft beer vice keytar deserunt.
            </p>
            <h4 id="one">uno</h4>
            <p>
            Occaecat commodo aliqua delectus. Fap craft beer deserunt skateboard ea. Lomo bicycle rights adipisicing banh mi, velit ea sunt next level locavore single-origin coffee in magna veniam. High life id vinyl, echo park consequat quis aliquip banh mi pitchfork. Vero VHS est adipisicing. Consectetur nisi DIY minim messenger bag. Cred ex in, sustainable delectus consectetur fanny pack iphone.
            </p>
            <h4 id="two">dos</h4>
            <p>
            In incididunt echo park, officia deserunt mcsweeney's proident master cleanse thundercats sapiente veniam. Excepteur VHS elit, proident shoreditch +1 biodiesel laborum craft beer. Single-origin coffee wayfarers irure four loko, cupidatat terry richardson master cleanse. Assumenda you probably haven't heard of them art party fanny pack, tattooed nulla cardigan tempor ad. Proident wolf nesciunt sartorial keffiyeh eu banh mi sustainable. Elit wolf voluptate, lo-fi ea portland before they sold out four loko. Locavore enim nostrud mlkshk brooklyn nesciunt.
            </p>
            <h4 id="three">tres</h4>
            <p>
            Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney's photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven't heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel keffiyeh artisan ullamco consequat.
            </p>
            <p>Keytar twee blog, culpa messenger bag marfa whatever delectus food truck. Sapiente synth id assumenda. Locavore sed helvetica cliche irony, thundercats you probably haven't heard of them consequat hoodie gluten-free lo-fi fap aliquip. Labore elit placeat before they sold out, terry richardson proident brunch nesciunt quis cosby sweater pariatur keffiyeh ut helvetica artisan. Cardigan craft beer seitan readymade velit. VHS chambray laboris tempor veniam. Anim mollit minim commodo ullamco thundercats.
            </p>
          </div>
          <hr>
          <h2>Usando bootstrap-scrollspy.js</h2>
          <p>Llama al scrollspy v&iacute;a javascript:</p>
          <pre class="prettyprint linenums">$('#navbar').scrollspy()</pre>
          <h3>Etiquetado</h3>
          <p>Para a&ntilde;adir el comportamiento scrollspy f&aacute;cilmente a tu navegaci&oacute;n de barra superior, simplemente a&ntilde;ade <code>data-spy="scroll"</code> al elemento que quieres &#8216;espiar&#8217; (normalmente se har&iacute;a en el cuerpo).</p>
          <pre class="prettyprint linenums">&lt;body data-spy="scroll" &gt;...&lt;/body&gt;</pre>
          <div class="alert alert-info">
            <strong>&iexcl;Atenci&oacute;n!</strong>
            Los enlaces navbar deben de tener id de f&aacute;cil resoluci&oacute;n. Por ejemplo, un <code>&lt;a href="#home"&gt;home&lt;/a&gt;</code> debe corresponder a algo en el dom como <code>&lt;div id="home"&gt;&lt;/div&gt;</code>.
          </div>
          <h3>Opciones</h3>
          <table class="table table-bordered table-striped">
            <thead>
             <tr>
               <th style="width: 100px;">Nombre</th>
               <th style="width: 100px;">Tipo</th>
               <th style="width: 50px;">Por defecto</th>
               <th>Descripción</th>
             </tr>
            </thead>
            <tbody>
             <tr>
               <td>offset</td>
               <td>número</td>
               <td>10</td>
               <td>Pixels to offset from top when calculating position of scroll.</td>
             </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>



    <!-- Tabs
    ================================================== -->
    <section id="tabs">
      <div class="page-header">
        <h1>Togglable tabs <small>bootstrap-tab.js</small></h1>
      </div>
      <div class="row">
        <div class="span3 columns">
          <p>Este plugin añade facilmente un tab dinámico y una funcionalidad de pills para transicionar a través de contenido local.</p>
          <a href="assets/js/bootstrap-tab.js" target="_blank" class="btn">Descargar archivo</a>
        </div>
        <div class="span9 columns">
          <h2>Ejemplo de tabs</h2>
          <p>Haz clic en los tabs inferiores para hacer un flip-flop (toggle) entre los paneles escondidos, incluso vía menús depslegables</p>
          <ul id="tab" class="nav nav-tabs">
            <li class="active"><a href="#home" data-toggle="tab">Home</a></li>
            <li><a href="#profile" data-toggle="tab">Perfil</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Desplegable <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#dropdown1" data-toggle="tab">@fat</a></li>
                <li><a href="#dropdown2" data-toggle="tab">@mdo</a></li>
              </ul>
            </li>
          </ul>
          <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="home">
              <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
            </div>
            <div class="tab-pane fade" id="profile">
              <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
            </div>
            <div class="tab-pane fade" id="dropdown1">
              <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
            </div>
            <div class="tab-pane fade" id="dropdown2">
              <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
            </div>
          </div>
          <hr>
          <h2>Usando bootstrap-tab.js</h2>
          <p>Habilita tabs tabulables v&iacute;a javascript:</p>
          <pre class="prettyprint linenums">$('#myTab').tab('show')</pre>
          <h3>Etiquetado</h3>
          <p>Puedes activar una navegaci&oacute;n de tabs o de pills sin escribir cualquier javascript especificando <code>data-toggle="tab"</code> o <code>data-toggle="pill"</code> en un elemento.</p>
<pre class="prettyprint linenums">
&lt;ul class="nav nav-tabs"&gt;
  &lt;li&gt;&lt;a href="#home" data-toggle="tab"&gt;Home&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href="#profile" data-toggle="tab"&gt;Perfil&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href="#messages" data-toggle="tab"&gt;Mensajes&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href="#settings" data-toggle="tab"&gt;Ajustes&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;</pre>
          <h3>Métodos</h3>
          <h4>$().tab</h4>
          <p>
            Activa un elemento de tabulador y un contenedor de contenido. El tabulador debería tener tanto un ‘data-target’ o un ‘href’ dirigido  al nodo de contenido en el dom.
          </p>
<pre class="prettyprint linenums">
&lt;ul class="nav nav-tabs"&gt;
  &lt;li class="active"&gt;&lt;a href="#home"&gt;Home&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href="#profile"&gt;Profile&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href="#messages"&gt;Messages&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href="#settings"&gt;Settings&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;div class="tab-content"&gt;
  &lt;div class="tab-pane active" id="home"&gt;...&lt;/div&gt;
  &lt;div class="tab-pane" id="profile"&gt;...&lt;/div&gt;
  &lt;div class="tab-pane" id="messages"&gt;...&lt;/div&gt;
  &lt;div class="tab-pane" id="settings"&gt;...&lt;/div&gt;
&lt;/div&gt;

&lt;script&gt;
  $(function () {
    $('.tabs a:last').tab('show')
  })
&lt;/script&gt;</pre>
          <h3>Eventos</h3>
          <table class="table table-bordered table-striped">
            <thead>
             <tr>
               <th style="width: 150px;">Evento</th>
               <th>Descripción</th>
             </tr>
            </thead>
            <tbody>
             <tr>
               <td>mostrar</td>
               <td>Este evento se activa cuando se muestra el tab, pero antes de que el nuevo tab se haya mostrado. Utiliza <code>event.target</code> y <code>event.relatedTarget</code> para dirigir el tabulador activo y el tabulador activo anterior (si est&aacute; disponible) respectivamente.</td>
            </tr>
            <tr>
               <td>mostrado</td>
               <td>Este evento se activa cuando se muestra un tabulador despu&eacute;s de que se haya mostrado un tabulador. Utiliza <code>event.target</code> y <code>event.relatedTarget</code> para dirigir un tabulador activo y un tabulador activo anterior (si est&aacute; disponible) respectivamente.</td>
             </tr>
            </tbody>
          </table>

          <pre class="prettyprint linenums">
$('a[data-toggle="tab"]').on('shown', function (e) {
  e.target // activated tab
  e.relatedTarget // previous tab
})</pre>
       </div>
      </div>
    </section>


    <!-- Tooltips
    ================================================== -->
    <section id="tooltips">
      <div class="page-header">
        <h1>Tooltips <small>bootstrap-tooltip.js</small></h1>
      </div>
      <div class="row">
        <div class="span3 columns">
          <h3>Sobre los Tooltips</h3>
          <p>Inspirado por un plugin jQuery.tipsy excelente escrito por Jason Frame; Los Tooltips son una versi&oacute;n actualizada, que no dependen de im&aacute;genes, utilizan css3 para animaciones, y "data-attributes" para un almacenamiento de t&iacute;tulo local.</p>
          <a href="assets/js/bootstrap-tooltip.js" target="_blank" class="btn">Descargar archivo</a>
        </div>
        <div class="span9 columns">
          <h2>Ejemplo del uso de Tooltips</h2>
          <p>Desplázate sobre los enlaces inferiores para ver las tooltips:</p>
          <div class="tooltip-demo well">
            <p class="muted" style="margin-bottom: 0;">Tight pants next level keffiyeh <a href="#" rel="tooltip" title="first tooltip">you probably</a> haven't heard of them. Photo booth beard raw denim letterpress vegan messenger bag stumptown. Farm-to-table seitan, mcsweeney's fixie sustainable quinoa 8-bit american apparel <a href="#" rel="tooltip" title="Another tooltip">have a</a> terry richardson vinyl chambray. Beard stumptown, cardigans banh mi lomo thundercats. Tofu biodiesel williamsburg marfa, four loko mcsweeney's cleanse vegan chambray. A <a href="#" rel="tooltip" title="Another one here too">really ironic</a> artisan whatever keytar, scenester farm-to-table banksy Austin <a href="#" rel="tooltip" title="The last tip!">twitter handle</a> freegan cred raw denim single-origin coffee viral.
            </p>
          </div>
          <hr>
          <h2>Usando bootstrap-tooltip.js</h2>
          <p>Activa el tooltip v&iacute;a javascript:</p>
          <pre class="prettyprint linenums">$('#example').tooltip(options)</pre>
          <h3>Opciones</h3>
          <table class="table table-bordered table-striped">
            <thead>
             <tr>
               <th style="width: 100px;">Nombre</th>
               <th style="width: 100px;">Tipo</th>
               <th style="width: 50px;">Por defecto</th>
               <th>Descripción</th>
             </tr>
            </thead>
            <tbody>
             <tr>
               <td>animation</td>
               <td>boolean</td>
               <td>true</td>
               <td>Aplica como una transici&oacute;n de desaparici&oacute;n (fade) css al tooltip</td>
             </tr>
             <tr>
               <td>placement</td>
               <td>string|function</td>
               <td>'top'</td>
               <td>como posicionar el tooltip - arriba | abajo | izquierda | derecha</td>
             </tr>
             <tr>
               <td>selector</td>
               <td>string</td>
               <td>false</td>
               <td>Si se proporciona un seleccionador, los objetos de tooltip se delegar&aacute;n a unos objteivos (targets) espec&iacute;ficos.</td>
             </tr>
             <tr>
               <td>title</td>
               <td>string | function</td>
               <td>''</td>
               <td>Valor de t&iacute;tulo por defecto si la etiqueta ‘title’ no está presente. </td>
             </tr>
             <tr>
               <td>trigger</td>
               <td>string</td>
               <td>'hover'</td>
               <td>Como se activa tooltip - hover | focus | manual</td>
             </tr>
             <tr>
               <td>delay</td>
               <td>number | object</td>
               <td>0</td>
               <td>
                <p>Retrasa la muestra y el escondido del tooltip (ms)</p>
                <p>Si se da un n&uacute;mero, se retrasan ambas acciones.</p>
                <p>Estructura de objeto: <code>delay: { show: 500, hide: 100 }</code></p>
               </td>
             </tr>
            </tbody>
          </table>
          <div class="alert alert-info">
            <strong>&iexcl;Atenci&oacute;n! </strong>
            Las opciones para tooltips individuales se pueden especificar alternativamente a trav&eacute;s del uso de los atributos data.
          </div>
          <h3>Etiquetado</h3>
          <p>Por razones de funcionamiento, los data-apis de Tooltip y Popover ser&aacute; una opci&oacute;n. Si te gustar&iacute;a usarlos especifica una opci&oacute;n de seleccionador.</p>
<pre class="prettyprint linenums">
&lt;a href="#" rel="tooltip" title="first tooltip"&gt;hover over me&lt;/a&gt;
</pre>
          <h3>Métodos</h3>
          <h4>$().tooltip(options)</h4>
          <p>Añade un handler (controlador) de tooltip a una colección de elemento </p>
          <h4>.tooltip('show')</h4>
          <p>Revela un tooltip de un elemento.</p>
          <pre class="prettyprint linenums">$('#element').tooltip('show')</pre>
          <h4>.tooltip('hide')</h4>
          <p>Esconde un tooltip de un elemento.</p>
          <pre class="prettyprint linenums">$('#element').tooltip('hide')</pre>
          <h4>.tooltip('toggle')</h4>
          <p>Hace un fip-flop (toggle) de un tooltip de un elemento.</p>
          <pre class="prettyprint linenums">$('#element').tooltip('toggle')</pre>
        </div>
      </div>
    </section>



    <!-- Popovers
    ================================================== -->
    <section id="popovers">
      <div class="page-header">
        <h1>Popovers <small>bootstrap-popover.js</small></h1>
      </div>
      <div class="row">
        <div class="span3 columns">
          <h3>Sobre los popovers</h3>
          <p>Añade pequeñas capas de contenido, como las de iPad, a cualquier elemento para dar informaci&oacute;n secundaria en caja.</p>
          <p class="muted"><strong>*</strong> Requiere que se incluya <a href="#tooltips">Tooltip</a></p>
          <a href="assets/js/bootstrap-popover.js" target="_blank" class="btn">Descarga el archivo</a>
        </div>
        <div class="span9 columns">
          <h2>Ejemplo de popover con hover</h2>
          <p>Muévete por encia del botón para activar el popover.</p>
          <div class="well">
            <a href="#" class="btn btn-danger" rel="popover" title="Un titulo" data-content="tienes un contenido genial. ¿verdad que es atractivo?">haz hover para activar popover</a>
          </div>
          <hr>
          <h2>Usando bootstrap-popover.js</h2>
          <p>Habilita popovers vía javascript:</p>
          <pre class="prettyprint linenums">$('#example').popover(options)</pre>
          <h3>Options</h3>
          <table class="table table-bordered table-striped">
            <thead>
             <tr>
               <th style="width: 100px;">Nombre</th>
               <th style="width: 100px;">Tipo</th>
               <th style="width: 50px;">Por defecto</th>
               <th>Descripción</th>
             </tr>
            </thead>
            <tbody>
             <tr>
               <td>animación</td>
               <td>boolean</td>
               <td>true</td>
               <td>Aplica una transición fade de css al tooltip</td>
             </tr>
             <tr>
               <td>Colocación</td>
               <td>string|function</td>
               <td>'right'</td>
               <td>como posicionar el popover - arriba| abajo | izquierda | derecha
</td>
             </tr>
             <tr>
               <td>Seleccionador</td>
               <td>string</td>
               <td>false</td>
               <td>si se proporciona un seleccionador, los objetos tooltip se delegarán a objetivos específicos </td>
             </tr>
             <tr>
               <td>Activar</td>
               <td>string</td>
               <td>'hover'</td>
               <td>como se activa un tooltip - hover | focus | manual</td>
             </tr>
             <tr>
               <td>Título</td>
               <td>string | function</td>
               <td>''</td>
               <td>valor de título por defecto si el atributo ‘title’ no está presente.</td>
             </tr>
             <tr>
               <td>Contenido</td>
               <td>string | function</td>
               <td>''</td>
               <td>valor de contenido por defecto si el atributo ‘data-content’ default content no está presente. </td>
             </tr>
             <tr>
               <td>Retraso</td>
               <td>number | object</td>
               <td>0</td>
               <td>
                <p>Retrasa la muestra y el escondido popover (ms)
Si se da un número, se aplica un retraso en ambas acciones.</p>
                <p>Estructura del objeto: <code>delay: { show: 500, hide: 100 }</code></p>
               </td>
             </tr>
            </tbody>
          </table>
          <div class="alert alert-info">
            <strong>¡Atención!</strong>
            Las opciones para popovers individuales se pueden especificar alternativamente a través del uso de atributos data
          </div>
          <h3>Etiquetado</h3>
          <p>
          Por razones de funcionamiento, los data-apis de Tooltip y de Popover serán una opción. Si te gustaría usarlos tan solo especifica una opción de seleccionador.
          </p>
          <h3>Métodos</h3>
          <h4>$().popover(options)</h4>
          <p>Inicia popovers para una colección de elemento.</p>
          <h4>.popover('show')</h4>
          <p>Muestra un popover de un elemento.</p>
          <pre class="prettyprint linenums">$('#element').popover('show')</pre>
          <h4>.popover('hide')</h4>
          <p>Esconde un popover de un elemento.</p>
          <pre class="prettyprint linenums">$('#element').popover('hide')</pre>
          <h4>.popover('toggle')</h4>
          <p>Hace un flip-flop de un popover de un elemento.</p>
          <pre class="prettyprint linenums">$('#element').popover('toggle')</pre>
        </div>
      </div>
    </section>



    <!-- Alert
    ================================================== -->
    <section id="alerts">
      <div class="page-header">
        <h1>Mensajes de alerta <small>bootstrap-alert.js</small></h1>
      </div>
      <div class="row">
        <div class="span3 columns">
          <h3>Sobre alertas</h3>
          <p>El plugin de alerta es una clase diminuta para añadir funcionalidad cercana a las alertas.</p>
          <a href="assets/js/bootstrap-alert.js" target="_blank" class="btn">Descarga el archivo</a>
        </div>
        <div class="span9 columns">
          <h2>Ejemplos de alertas</h2>
          <p>Los plugins de alerta funcionan en mensajes de alerta regulares, y mensaje de bloque.</p>
          <div class="alert fade in">
            <a class="close" data-dismiss="alert" href="#">&times;</a>
            <strong>&iexcl;Oh dios mio!</strong> Mejor que lo compruebes t&uacute; mismo, no pareces estar bien.
          </div>
          <div class="alert alert-block alert-error fade in">
            <a class="close" data-dismiss="alert" href="#">&times;</a>
            <h4 class="alert-heading">&iexcl;Oh, no! Tienes un error!</h4>
            <p>Cambia esto y esto y pru&eacute;balo otra vez. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum.</p>
            <p>
              <a class="btn btn-danger" href="#">Haz esta acci&oacute;n</a> <a class="btn" href="#">O haz esto otro</a>
            </p>
          </div>
          <hr>
          <h2>Usando bootstrap-alert.js</h2>
          <p>Habilita el rechazo de una alerta v&iacute;a javascript:</p>
          <pre class="prettyprint linenums">$(".alert").alert()</pre>
          <h3>Etiquetado</h3>
          <p>Simplemente a&ntilde;ade <code>data-dismiss="alert"</code> a tu bot&oacute;n de cerrar para dar autom&aacute;ticamente una funcionalidad de cerradura a tu alerta.</p>
          <pre class="prettyprint linenums">&lt;a class="close" data-dismiss="alert" href="#"&gt;&amp;times;&lt;/a&gt;</pre>
          <h3>M&eacute;todos</h3>
          <h4>$().alert()</h4>
          <p>Envuelve todas las alerta con funcionalidad de cerradura. Para tener alertas animadas cuando se cierran, aseg&uacute;rate de que tiene la clase <code>.fade</code> y <code>.in</code> aplicadas.</p>
          <h4>.alert('close')</h4>
          <p>Cierra la alerta.</p>
          <pre class="prettyprint linenums">$(".alert").alert('close')</pre>
          <h3>Eventos</h3>
          <p>Las clases de alerta de Boostrap expone unos eventos para enganchar una funcionalidad de alerta.</p>
          <table class="table table-bordered table-striped">
            <thead>
             <tr>
               <th style="width: 150px;">Evento</th>
               <th>Descripción</th>
             </tr>
            </thead>
            <tbody>
             <tr>
               <td>cerrar</td>
               <td>Este evento se activa autom&aacute;ticamente cuando se llama al m&eacute;todo de caso <code>close</code> .</td>
             </tr>
             <tr>
               <td>cerrado</td>
               <td>Este evento se activa cuando se ha cerrado la alerta (esperar&aacute; que se completen transiciones css).</td>
             </tr>
            </tbody>
          </table>
<pre class="prettyprint linenums">
$('#my-alert').bind('closed', function () {
  // do something…
})</pre>
        </div>
      </div>
    </section>



    <!-- Buttons
    ================================================== -->
    <section id="buttons">
      <div class="page-header">
        <h1>Botones <small>bootstrap-button.js</small></h1>
      </div>
      <div class="row">
        <div class="span3 columns">
          <h3>Sobre los botones</h3>
          <p>Haz m&aacute;s con botones. Estados de boton de control o crear grupos de botones para m&aacute;s componentes como las barras de herramientas.</p>
          <a href="assets/js/bootstrap-button.js" target="_blank" class="btn">Descarga el archivo</a>
        </div>
        <div class="span9 columns">
          <h2>Ejemplos de usos</h2>
          <p>Utiliza plugins de bot&oacute;n para estados y flip-flops (toggles).</p>
          <table class="table table-bordered table-striped">
            <tbody>
             <tr>
               <td>De estado</td>
               <td>
                  <button id="fat-btn" data-loading-text="loading..." class="btn btn-primary">
                    Estado de carga
                  </button>
                </td>
             </tr>
             <tr>
               <td>Flip-flop (toggle) individual</td>
               <td>
                  <button class="btn btn-primary" data-toggle="button">Flip-flop (toggle) individual</button>
                </td>
             </tr>
             <tr>
               <td>Checkbox</td>
               <td>
                  <div class="btn-group" data-toggle="buttons-checkbox">
                    <button class="btn btn-primary">Izquierda</button>
                    <button class="btn btn-primary">Centro</button>
                    <button class="btn btn-primary">Derecha</button>
                  </div>
               </td>
             </tr>
             <tr>
               <td>Radio</td>
               <td>
                  <div class="btn-group" data-toggle="buttons-radio">
                    <button class="btn btn-primary">Izquierda</button>
                    <button class="btn btn-primary">Centro</button>
                    <button class="btn btn-primary">Derecha</button>
                  </div>
               </td>
             </tr>
            </tbody>
          </table>
          <hr>
          <h2>Usando bootstrap-button.js</h2>
          <p>Habilita botones v&iacute;a javascript:</p>
          <pre class="prettyprint linenums">$('.tabs').button()</pre>
            <h3>Etiquetado</h3>
          <p>Los atributos data son esenciales para el plugin de bot&oacute;n. Comprueba el c&oacute;digo de caso inferior para m&aacute;s tipos de etiquetado diferente. </p>
<pre class="prettyprint linenums">
&lt;!-- Add data-toggle="button" to activate toggling on a single button --&gt;
&lt;button class="btn" data-toggle="button"&gt;Single Toggle&lt;/button&gt;

&lt;!-- Add data-toggle="buttons-checkbox" for checkbox style toggling on btn-group --&gt;
&lt;div class="btn-group" data-toggle="buttons-checkbox"&gt;
  &lt;button class="btn"&gt;Left&lt;/button&gt;
  &lt;button class="btn"&gt;Middle&lt;/button&gt;
  &lt;button class="btn"&gt;Right&lt;/button&gt;
&lt;/div&gt;

&lt;!-- Add data-toggle="buttons-radio" for radio style toggling on btn-group --&gt;
&lt;div class="btn-group" data-toggle="buttons-radio"&gt;
  &lt;button class="btn"&gt;Left&lt;/button&gt;
  &lt;button class="btn"&gt;Middle&lt;/button&gt;
  &lt;button class="btn"&gt;Right&lt;/button&gt;
&lt;/div&gt;
</pre>
          <h3>M&eacute;todos</h3>
          <h4>$().button('toggle')</h4>
          <p>Estado push de flip-flops (toggle). Da la apariencia al bot&oacute;n que se ha activado.</p>
          <div class="alert alert-info">
            <strong>&iexcl;Atenci&oacute;n! </strong>
            Puedes habilitar tu auto flip-flop usando el atributo <code>data-toggle</code> .
          </div>
          <pre class="prettyprint linenums">&lt;button class="btn" data-toggle="button" &gt;…&lt;/button&gt;</pre>
          <h4>$().button('loading')</h4>
          <p>Aplica el estado de bot&oacute;n para cargar - deshabilita o intercambia el texto de bot&oacute;n  al texto de carga. El texto de carga deber&iacute;a definirse en el elemento de bot&oacute;n usando el atributo <code>data-loading-text</code>.
          </p>
          <pre class="prettyprint linenums">&lt;button class="btn" data-loading-text="loading stuff..." &gt;...&lt;/button&gt;</pre>
          <div class="alert alert-info">
            <strong>&iexcl;Atenci&oacute;n!</strong>
            <a href="https://github.com/twitter/bootstrap/issues/793">Firefox insiste en estados deshabilitados a trav&eacute;s de las cargas de p&aacute;gina</a>. Una soluci&oacute;n para esto es usar <code>autocomplete="off"</code>.
          </div>
          <h4>$().button('reset')</h4>
          <p>Resetea el estado de bot&oacute;n - intercambia el texto del texto original.</p>
          <h4>$().button(string)</h4>
          <p>Reseteta el estado de bot&oacute;n - intercambia el texto a cualquier estado de texto definido.</p>
<pre class="prettyprint linenums">&lt;button class="btn" data-complete-text="finished!" &gt;...&lt;/button&gt;
&lt;script&gt;
  $('.btn').button('complete')
&lt;/script&gt;</pre>
        </div>
      </div>
    </section>



    <!-- Collapse
    ================================================== -->
    <section id="collapse">
      <div class="page-header">
        <h1>Collapse (pliega) <small>bootstrap-collapse.js</small></h1>
      </div>
      <div class="row">
        <div class="span3 columns">
          <h3>Sobre collapse</h3>
          <p>Obt&eacute;n los estilos base y el soporte flexible para componentes desplegables como acordeones y navegaci&oacute;n.</p>
          <a href="assets/js/bootstrap-collapse.js" target="_blank" class="btn">Descargar archivo</a>
        </div>
        <div class="span9 columns">
          <h2>Ejemplo de acorde&oacute;n</h2>
          <p>Usando el plugin de plegado, creamos un widget de estilo de acorde&oacute;n simple:</p>

          <div class="accordion" id="accordion2">
            <div class="accordion-group">
              <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                  Objeto de grupo de plegado #1
                </a>
              </div>
              <div id="collapseOne" class="accordion-body collapse in">
                <div class="accordion-inner">
                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                </div>
              </div>
            </div>
            <div class="accordion-group">
              <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                  Objeto de grupo de plegado #2
                </a>
              </div>
              <div id="collapseTwo" class="accordion-body collapse">
                <div class="accordion-inner">
                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                </div>
              </div>
            </div>
            <div class="accordion-group">
              <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
                  Objeto de grupo de plegado #3
                </a>
              </div>
              <div id="collapseThree" class="accordion-body collapse">
                <div class="accordion-inner">
                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                </div>
              </div>
            </div>
          </div>


          <hr>
          <h2>Usando bootstrap-collapse.js</h2>
          <p>Act&iacute;valo v&iacute;a javascript:</p>
          <pre class="prettyprint linenums">$(".collapse").collapse()</pre>
          <h3>Opciones</h3>
          <table class="table table-bordered table-striped">
            <thead>
             <tr>
               <th style="width: 100px;">Nombre</th>
               <th style="width: 50px;">tipo</th>
               <th style="width: 50px;">defecto</th>
               <th>descripción</th>
             </tr>
            </thead>
            <tbody>
             <tr>
               <td>pariente (parent)</td>
               <td>selector</td>
               <td>false</td>
               <td>si se selecciona entonces pone los elementos plegados debajo del pariente especificado se cerrar&aacute; cuando este objeto plegado se muestre. (similar al compotamiento de acorde&oacute;n tradicional)</td>
             </tr>
             <tr>
               <td>toggle</td>
               <td>boolean</td>
               <td>true</td>
               <td>Flip-flops (toggles) en el elemento plegado por invocaci&oacute;n</td>
             </tr>
            </tbody>
          </table>
          <h3>Etiquetado</h3>
          <p>A&ntilde;ade <code>data-toggle="collapse"</code> y <code>data-target</code> al elemento para asignar autom&aacute;ticamente control de un elemento plegado. El atributo <code>data-target</code> acepta un selector css para aplicar el plegado. Aseg&uacute;rate de a&ntilde;adir la clase <code>collapse</code> al elemento plegado. Si te gustar&iacute;a tenerlo como abierto por defecto, a&ntilde;ade la clase <code>in</code>.</p>
          <pre class="prettyprint linenums">
&lt;button class="btn btn-danger" data-toggle="collapse" data-target="#demo"&gt;
  simple collapsible
&lt;/button&gt;

&lt;div id="demo" class="collapse in"&gt; … &lt;/div&gt;</pre>
          <div class="alert alert-info">
            <strong>&iexcl;Atenci&oacute;n!</strong>
            Para a&ntilde;adir un manejo de grupo como acorde&oacute;n a un control de plegado, a&ntilde;ade el atributo <code>data-parent="#selector"</code>. Mira la demo para ver esta acci&oacute;n.
          </div>
          <h3>Métodos</h3>
          <h4>.collapse(options)</h4>
          <p>Activa tu contenido como elemento de plegado. Acepta un <code>object</code> opcional.</p> 
<pre class="prettyprint linenums">
$('#myCollapsible').collapse({
  toggle: false
})</pre>
          <h4>.collapse('toggle')</h4>
          <p>Flip-flop en el elemento de plegado para mostrar o esconder.</p>
          <h4>.collapse('show')</h4>
          <p>Muestra un elemento de plegado.</p>
          <h4>.collapse('hide')</h4>
          <p>Esconde un elemento de plegado.</p>
          <h3>Eventos</h3>
          <p>
            La clase de plegado de Boostrap expone unos eventos para enganchar una funcionalidad de plegado.
          </p>
          <table class="table table-bordered table-striped">
            <thead>
             <tr>
               <th style="width: 150px;">Evento</th>
               <th>Descripci&oacute;n</th>
             </tr>
            </thead>
            <tbody>
             <tr>
               <td>show (mostrar)</td>
               <td>Este evento se activa inmediatamente cuando se llama al método de caso <code>show</code> .</td>
             </tr>
             <tr>
               <td>shown (mostrado)</td>
               <td>Este evento se activa cuando se ha hecho visible el elemento de plegado al usuario (esperará que se completen las transiciones css).</td>
             </tr>
             <tr>
               <td>hide (esconder)</td>
               <td>
                Este evento se activa inmediatamente cuando se ha llamado al método <code>hide</code> .
               </td>
             </tr>
             <tr>
               <td>hidden (escondido)</td>
               <td>Este evento se activa cuando se ha escondido el elemento de plegado (esperará que se completen las transiciones css) .</td>
             </tr>
            </tbody>
          </table>

<pre class="prettyprint linenums">
$('#myCollapsible').on('hidden', function () {
  // do something…
})</pre>
        </div>
      </div>
    </section>



     <!-- Carousel
    ================================================== -->
    <section id="carousel">
      <div class="page-header">
        <h1>Carousel (Carrusel) <small>bootstrap-carousel.js</small></h1>
      </div>
      <div class="row">
        <div class="span3 columns">
          <h3>About</h3>
          <p>Un plugin genérico para dar c&iacute;rculos a trav&eacute;s de elementos. Un tiovivo. </p>
          <a href="assets/js/bootstrap-carousel.js" target="_blank" class="btn">Descargar archivo</a>
        </div>
        <div class="span9 columns">
          <h2>Ejemplo de carousel</h2>
          <p>Vea la presentación de diapositivas (slideshow).</p>
          <div id="myCarousel" class="carousel slide">
            <div class="carousel-inner">
              <div class="item active">
                <img src="assets/img/bootstrap-mdo-sfmoma-01.jpg" alt="">
                <div class="carousel-caption">
                  <h4>Primera eitqueta de miniatura de imagen (thumbnail)</h4>
                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
              </div>
              <div class="item">
                <img src="assets/img/bootstrap-mdo-sfmoma-02.jpg" alt="">
                <div class="carousel-caption">
                  <h4>Segunda eitqueta de miniatura de imagen (thumbnail)</h4>
                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
              </div>
              <div class="item">
                <img src="assets/img/bootstrap-mdo-sfmoma-03.jpg" alt="">
                <div class="carousel-caption">
                  <h4>Tercera eitqueta de miniatura de imagen (thumbnail)</h4>
                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
              </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
          </div>
          <div class="alert alert-info">
            <strong>&iexcl;Atenci&oacute;n!</strong>
           Cuando se ejecuta este carrusel, elimina las im&aacute;genes que hemos proporcinado y susbtit&uacute;yelas con las tuyas propias.
          </div>
          <hr>
          <h2>Usando bootstrap-carousel.js</h2>
          <p>Ll&aacute;malo v&iacute;a javascript:</p>
          <pre class="prettyprint linenums">$('.carousel').carousel()</pre>
          <h3>Opciones</h3>
          <table class="table table-bordered table-striped">
            <thead>
             <tr>
               <th style="width: 100px;">Nombre</th>
               <th style="width: 50px;">tipo</th>
               <th style="width: 50px;">Por defecto</th>
               <th>descripción</th>
             </tr>
            </thead>
            <tbody>
             <tr>
               <td>interval</td>
               <td>n&uacute;mero</td>
               <td>5000</td>
               <td>La cantidad de tiempo de retraso entre el ciclo autom&aacute;tico de un objeto.</td>
             </tr>
             <tr>
               <td>pause</td>
               <td>cadena</td>
               <td>"hover"</td>
               <td>Pauses the cycling of the carousel on mouseenter and resumes the cycling of the carousel on mouseleave.</td>
             </tr>
            </tbody>
          </table>
          <h3>Etiquetado</h3>
          <p>Los atributos data se usan para controles previos o siguientes. Comprueba el caso de etiquetado inferior.</p>
<pre class="prettyprint linenums">
&lt;div id="myCarousel" class="carousel"&gt;
  &lt;!-- Carousel items --&gt;
  &lt;div class="carousel-inner"&gt;
    &lt;div class="active item"&gt;…&lt;/div&gt;
    &lt;div class="item"&gt;…&lt;/div&gt;
    &lt;div class="item"&gt;…&lt;/div&gt;
  &lt;/div&gt;
  &lt;!-- Carousel nav --&gt;
  &lt;a class="carousel-control left" href="#myCarousel" data-slide="prev"&gt;&amp;lsaquo;&lt;/a&gt;
  &lt;a class="carousel-control right" href="#myCarousel" data-slide="next"&gt;&amp;rsaquo;&lt;/a&gt;
&lt;/div&gt;
</pre>
          <h3>Métodos</h3>
          <h4>.carousel(options)</h4>
          <p>Initializes the carousel with an optional options <code>object</code> and starts cycling through items.</p>
<pre class="prettyprint linenums">
$('.carousel').carousel({
  interval: 2000
})
</pre>
          <h4>.carousel('cycle')</h4>
          <p>Ciclos a trav&eacute;s de objetos de carrusel de izquierda a derecha.</p>
          <h4>.carousel('pause')</h4>
          <p>Para el carrusel del ciclo entre objetos.</p>
          <h4>.carousel(number)</h4>
          <p>Ciclos del carrusel para un marco en particular (basado 0, similar a cualquier matriz).</p>
          <h4>.carousel('prev')</h4>
          <p>Ciclos previos al objeto.</p>
          <h4>.carousel('next')</h4>
          <p>Ciclos posteriores al objeto.</p>
          <h3>Eventos</h3>
          <p>La clase de carrusel de Boostrap expone dos eventos para enganchar la funcionalidad del carrusel.</p>
          <table class="table table-bordered table-striped">
            <thead>
             <tr>
               <th style="width: 150px;">Evento</th>
               <th>Descripción</th>
             </tr>
            </thead>
            <tbody>
             <tr>
               <td>slide</td>
               <td>Este evento se activa inmediatamente cuando se invoca el m&eacute;todo de caso <code>slide</code> .</td>
             </tr>
             <tr>
               <td>slid</td>
               <td>Este evento se activa cuando el carrusel ha completado la transici&oacute;n de diapositivas </td>
             </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>



    <!-- Typeahead
    ================================================== -->
    <section id="typeahead">
      <div class="page-header">
        <h1>Typeahead <small>bootstrap-typeahead.js</small></h1>
      </div>
      <div class="row">
        <div class="span3 columns">
          <h3>Sobre typeahead</h3>
          <p>Un plugin b&aacute;sico y f&aacute;cilmente extendido para crear un typeahed elegante con cualquier entrada de texto de formulario.</p>
          <a href="assets/js/bootstrap-typeahead.js" target="_blank" class="btn">Descargar achivo</a>
        </div>
        <div class="span9 columns">
          <h2>Ejemplo</h2>
          <p>Empieza a teclear en el campo inferior para mostrar los resultados de typeahead.</p>
          <div class="well">
            <input type="text" class="span3" style="margin: 0 auto;" data-provide="typeahead" data-items="4" data-source='["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Dakota","North Carolina","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]'>
          </div>
          <hr>
          <h2>Usando bootstrap-typeahead.js</h2>
          <p>Llama al typeahead v&iacute;a javascript:</p>
          <pre class="prettyprint linenums">$('.typeahead').typeahead()</pre>
          <h3>Opciones</h3>
          <table class="table table-bordered table-striped">
            <thead>
             <tr>
               <th style="width: 100px;">Nombre</th>
               <th style="width: 50px;">tipo</th>
               <th style="width: 100px;">Por defecto</th>
               <th>descripci&oacute;n</th>
             </tr>
            </thead>
            <tbody>
              <tr>
               <td>source (fuente de datos)</td>
               <td>array</td>
               <td>[ ]</td>
               <td>La fuente de datos donde buscará una coincidencia en cualquier consulta realizada.</td>
             </tr>
             <tr>
               <td>items</td>
               <td>n&uacute;mero</td>
               <td>8</td>
               <td>El n&uacute;mero m&aacute;ximo de objetos para mostrar en el desplegable.</td>
             </tr>
             <tr>
               <td>matcher</td>
               <td>funci&oacute;n</td>
               <td>case insensitive</td>
               <td>The method used to determine if a query matches an item. Accepts a single argument, the <code>item</code> against which to test the query. Access the current query with <code>this.query</code>. Return a boolean <code>true</code> if query is a match.</td>
             </tr>
             <tr>
               <td>sorter</td>
               <td>funci&oacute;n</td>
               <td>exact match,<br> case sensitive,<br> case insensitive</td>
               <td>Method used to sort autocomplete results. Accepts a single argument <code>items</code> and has the scope of the typeahead instance. Reference the current query with <code>this.query</code>.</td>
             </tr>
             <tr>
               <td>highlighter</td>
               <td>funci&oacute;n</td>
               <td>highlights all default matches</td>
               <td>Method used to highlight autocomplete results. Accepts a single argument <code>item</code> and has the scope of the typeahead instance. Should return html.</td>
             </tr>
            </tbody>
          </table>

          <h3>Etiquetado</h3>
          <p>A&ntilde;ade atributos data para registrar un elemento con una funcionalidad typeahead.</p>
<pre class="prettyprint linenums">
&lt;input type="text" data-provide="typeahead"&gt;
</pre>
          <h3>M&eacute;todos</h3>
          <h4>.typeahead(options)</h4>
          <p>Inicia una entrada con un typeahead.</p>
        </div>
      </div>
    </section>

     <!-- Footer
      ================================================== -->
      <footer class="footer">
        <p class="pull-right"><a href="#">ir Arriba</a></p>
        
        <p>TRADUCCIÓN</p>
        <p>Todos estos documentos han sido traducido por el equipo de Animartec.com</p>
        
        
        <p>ORIGINAL</p>

        <p>Designed and built with all the love in the world <a href="http://twitter.com/twitter" target="_blank">@twitter</a> by <a href="http://twitter.com/mdo" target="_blank">@mdo</a> and <a href="http://twitter.com/fat" target="_blank">@fat</a>.</p>
        <p>Code licensed under the <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License v2.0</a>. Documentation licensed under <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>
        <p>Icons from <a href="http://glyphicons.com">Glyphicons Free</a>, licensed under <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>
      </footer>

    </div><!-- /container -->


 <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script> 
    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
   
    <script src="assets/js/google-code-prettify/prettify.js"></script>
    <script src="assets/js/bootstrap-transition.js"></script>
    <script src="assets/js/bootstrap-alert.js"></script>
    <script src="assets/js/bootstrap-modal.js"></script>
    <script src="assets/js/bootstrap-dropdown.js"></script>
    <script src="assets/js/bootstrap-scrollspy.js"></script>
    <script src="assets/js/bootstrap-tab.js"></script>
    <script src="assets/js/bootstrap-tooltip.js"></script>
    <script src="assets/js/bootstrap-popover.js"></script>
    <script src="assets/js/bootstrap-button.js"></script>
    <script src="assets/js/bootstrap-collapse.js"></script>
    <script src="assets/js/bootstrap-carousel.js"></script>
    <script src="assets/js/bootstrap-typeahead.js"></script>
    <script src="assets/js/application.js"></script>
  </body>
</html>
