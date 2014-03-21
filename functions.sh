function report ()
{
(
echo "From: $FROM"
echo "To: $WHO"
echo "Content-Type: text/html; charset=utf8"
echo "Subject: $1"
echo ""
echo "<html>
<head>
<style type="text/css">
 table {
  width: 450px; /* Ширина таблицы */
  border: 1px solid black; /* Рамка вокруг таблицы */
}

TD, TH {
 text-align: left; /* Выравнивание по центру */
 padding: 3px; /* Поля вокруг текста */
}

TH {
   text-align: center;
   color: white; /* Цвет текста */
   background: #4B0082;  /* Цвет фона */
   font-family: \"Helvetica\", courier, serif;
}

TH1 {
   text-align: center;
   color: white; /* Цвет текста */
   background: #32CD32;  /* Цвет фона */
}

TD {
 border-left: 1px dashed black; /* Линия слева от ячейки */
 font-size: 75%;
 font-family: \"Helvetica\", courier, serif;
}

.even { /* Стиль для четных колонок */
  background: #dcdcdc;  /* Цвет фона */
}

.lc { /* Стиль для первой колонки */
     text-align: left; /* Выравнивание по левому краю */
     border: none; /* Нет лишних линий */
}

.lcc {
     color: red;
}

 </style>
</head>

<body>
<font face=Helvetica>
$2
</font>
</body>
</html>
."
echo ""
) | sendmail -f $(echo $FROM | sed -r 's/.*<//; s/>.*//') -t
}
