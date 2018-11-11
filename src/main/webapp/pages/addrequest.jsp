<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Добавить заявку</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="https://api-maps.yandex.ru/2.1/?apikey=e311f549-0945-40f1-9eee-2298f8860fea&lang=ru_RU" type="text/javascript"></script>
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        ymaps.ready(init);
        var myMap;
        function init(){
            myMap = new ymaps.Map("map", {
                center: [54.734773, 55.957829],
                zoom: 11,
                controls: ['routePanelControl']
            });

            var control = myMap.controls.get('routePanelControl');

            control.routePanel.options.set({
                types: {
                    "taxi": true
                },
            });

            control.options.set({
                maxWidth: '350px',
                float: 'left'
            });
        }
    </script>
    <script>
        $("#fill").submit(function () {
            alert("asd");
        });
    </script>
</head>

<body>
<div style="display: inline-block">
    <form>
        <label>Откуда</label><br>
        <input type="text" name="from">
        <br>
        <label>Куда</label><br>
        <input type="text" name="to">
        <br>
        <label>Расстояние</label><br>
        <input type="text" name="distance">
        <br>
        <label>Время</label><br>
        <input type="text" name="time">
        <input type="submit" value="Добавить">
        <br>
    </form>
    <br>
    <button id="fill">Заполнить поля</button>
    <br>
</div>
<div id="map" style="display: inline-block; width: 600px; height: 400px">

</div>
</body>

</html>