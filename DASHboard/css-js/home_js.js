function show_time(id)
{
        date = new Date;
        h = date.getHours();
        if(h<10)
        {
                h = "0"+h;
        }
        m = date.getMinutes();
        if(m<10)
        {
                m = "0"+m;
        }
		time= ' '+h+':'+m;
        document.getElementById(id).innerHTML = time;
        setTimeout('show_time("'+id+'");','1000');
        return true;
}
function show_date(id)
{ 
        date2 = new Date;
		d = date2.getDate();
        year = date2.getFullYear();
        month = date2.getMonth();
        months = new Array('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
        date= ' '+d+' '+months[month]+'<br><span id="widget_subtext" >'+year+'</span>';
        document.getElementById(id).innerHTML = date;
        return true;
}
function checkActive(){
	date1= new Date;
	day1 = date1.getDay();
	h1 = date1.getHours();
	for(timecount=8; timecount<=17; timecount++){
	for(daycount=1; daycount<=5;daycount++){
		
   		 var x = document.getElementById("timetable").rows[timecount-7].cells[daycount];
			if(daycount<day1)
			{	x.style.display="none";
				}
			else if(daycount==day1)
			{
				if(timecount<h1){
					x.style.opacity="0.4";
					}
				else if( timecount == h1){
					x.style.border="solid 1px red";
					}
			}
		}
	}
}
