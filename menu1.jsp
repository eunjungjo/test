<html>
<head>  
  <title>Menu - �ڹٽ�ũ��Ʈ�� �÷��� �޴�ó��..</title>
 
  <script type="text/javascript">
  var delay = 3; // �޴� ���ǵ�(�������� ����)
  var m_length = 20; // �޴� ����
  var sel_l_length = 30; // ������ �޴��� ���� �޴� ����
  var sel_r_length = 60; // ������ �޴��� ���� �޴� ����
  var m_sel = 0;         // �޴� ���� ����
  var m_max = 0;         // ���θ޴� ����
  var sm_alpha = 0;      // ����޴� ����
  var id = new Array();  // ���θ޴� ID
  var sid = new Array(); // ����޴� ID
  var m_top = 0;         // ���θ޴� y ��ġ
 
  function on_load(){    
    while(document.getElementById("menu"+(m_max+1)) != null){        
      m_max++;        
      id[m_max] = document.getElementById("menu"+m_max);        
      sid[m_max] = document.getElementById("smenu"+m_max);    
    }
      m_top = id[1].offsetTop;    
      m_act();
  }
    
  function m_over(m){    
     m_sel = m;    
     for(i=1;i<=m_max;i++){        
      if(sid[i] != null){            
        if(m_sel == i){                
          id[i].style.fontWeight = 'bold';                
          sid[i].style.display = "";                
          sm_alpha = 0;                
          if ((navigator.appName.indexOf('Microsoft')+1)) {                    
           sid[i].filters.alpha.opacity = sm_alpha;
          }else{                    
            sid[i].style.opacity = (sm_alpha/100);                
          }                
          sid[i].style.top = id[i].offsetTop + id[i].offsetHeight + 40;            
        }else{                
          id[i].style.fontWeight = '';
          sid[i].style.display = "none";
        }        
       }    
     }
  }
    
     function m_act(){    
      var goy = 0;    
      for(i=1;i<=m_max;i++){        
        // ���θ޴� �¿� �̵�        
        if(i>1) temp = id[i-1].offsetWidth + id[i-1].offsetLeft;
        if(i==1){            
          gox=id[i].offsetLeft;        
        }else if(m_sel == i){            
          gox =  temp + sel_l_length;        
        }else if(m_sel+1 == i){            
          gox =temp + sel_r_length;        
        }else{            
          gox = temp + m_length;        
        }        
       
        id[i].style.left = Math.ceil(id[i].offsetLeft - (id[i].offsetLeft - (gox))/delay)+"px";        
        // ���θ޴� ���� �̵�        
        if(m_sel == i){            
          id[i].style.top = Math.ceil(id[i].offsetTop - (id[i].offsetTop - (m_top + 7))/delay)+"px";      
        }else if(m_sel!=0){            
          id[i].style.top = Math.ceil(id[i].offsetTop - (id[i].offsetTop - (m_top - 5))/delay)+"px";        
        }        
        // ����޴�        
        if(m_sel == i && sid[i] != null){      
          // ����޴� ����            
          if(sm_alpha < 100){                
            sm_alpha += 5;                
            if ((navigator.appName.indexOf('Microsoft')+1)) {                    
              sid[i].filters.alpha.opacity = sm_alpha;
            }else{                    
              sid[i].style.opacity = (sm_alpha/100);
            }            
          }            
          // ����޴� �Ʒ������� ���� ��Ÿ��           
          goy = id[i].offsetTop + id[i].offsetHeight;            
          sid[i].style.top = (sid[i].offsetTop - (sid[i].offsetTop - goy)/delay)+"px";
        }    
     }    
     setTimeout('m_act()',20);
    }
    </script>
    <style>
      .sm_a{color: #666666; text-decoration:none; padding:0px 3px 0px 2px}
      .sm_a:hover {color: #FFFFFF; text-decoration:none; background:#666666; padding:0px 3px 0px 2px} div{font-family:verdana; font-size:10px; letter-spacing:-1px} .smenu{top:50px; position:absolute; filter:alpha(opacity=0); color:#DDDDDD}
      .mmenu{top:30px; position:absolute; cursor:pointer; padding-right:2px; color:#666666}
  </style>
</head>

<body onload='on_load()'>    
  <div class=mmenu style='left:200px;' id=menu1 onClick='m_over(1)'>    
    ABOUT US<br>    
  </div>    
  <div id='smenu1' class=smenu style='left:200px; display:none'>
    <a href='' class=sm_a>menu1</a> | <a href='' class=sm_a>menu2</a> | <a href='' class=sm_a>menu3</a>
  </div>    
  <div class=mmenu style='left:280px;' id=menu2 onClick='m_over(2)'>     PRODUCT<br>    
  </div>  
  <div id='smenu2' class=smenu style='left:250px; display:none'>
    <a href='' class=sm_a>menu4</a> | <a href='' class=sm_a>menu5</a> | <a href='' class=sm_a>menu6</a>
  </div>    
  <div class=mmenu style='left:360px;' id=menu3 onClick='m_over(3)'>     STORY<br>    
  </div>    
  <div id='smenu3' class=smenu style='left:310px; display:none'><a href='' class=sm_a>menu7</a> | <a href='' class=sm_a>menu8</a> | <a href='' class=sm_a>menu9</a>
  </div>
</body>
</html>
