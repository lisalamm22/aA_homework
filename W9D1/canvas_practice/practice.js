document.addEventListener("DOMContentLoaded", function(){
    var canvas = document.getElementById('mycanvas');

    canvas.height = 500;
    canvas.width = 500; 

    var ctx = canvas.getContext('2d');
    ctx.fillStyle = 'pink';
    ctx.fillRect(0, 0, 400,400);

    ctx.beginPath();
    ctx.arc(200,200, 40, 0, 2*Math.PI)
    ctx.strokeStyle = 'yellow';
    ctx.lineWidth = 2;
    ctx.stroke();
    ctx.fillStyle = "blue";
    ctx.fill();
});
