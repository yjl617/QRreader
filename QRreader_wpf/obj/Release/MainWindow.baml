   M S B A M L   `   `   `  ���� C  ?QRreader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:QRreader_wpfQRreader_wpf      QRreader_wpf.MainWindow   \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    8x,http://schemas.microsoft.com/winfx/2006/xaml    >d2http://schemas.microsoft.com/expression/blend/2008    Hmc;http://schemas.openxmlformats.org/markup-compatibility/2006    *localclr-namespace:QRreader_wpf    -     � Icon$  favourite.ico�� � WindowStartupLocation$ CenterScreen=� � AllowsTransparency .  � WindowStyle$
 None=�
������  � Title$ 二维码查看器��$	��230��$	��400�� � 	Resources    BtnMessCloseIcon �� 
TargetType �� Property �� Value	 �� 
TargetType
 ��Name �� Triggers P� Property P� Value �� ScaleX �� ScaleY 
 BtnCut��%�  &	        &	 b    �� " ��.���  � �� �� "	 ��.R��� .���� $
 backgroundImage��$��img/close.png��$��30��$��30�� P�  � �� . . ���  � z� �� $ .9Q�$ .9Q���  �@J�RenderTransformOrigin$ .5,.5&�P�  �@J�IsMouseOver . . ���  � z� �� $	 1.1Q�$	 1.1Q���  �@J�RenderTransformOrigin$ .5,.5&��� " ��.���  � �� �� "	 ��.R��� .���� $
 backgroundImage��$��img/cut.png��$��32��$��32�� P�  � �� . . ���  � z� �� $ .9Q�$ .9Q���  �@J�RenderTransformOrigin$ .5,.5&�P�  �@J�IsMouseOver . . ���  � z� �� $	 1.1Q�$	 1.1Q���  �@�Cursor$
 Hand����  �@J�RenderTransformOrigin$ .5,.5&�.��� .+��� -    ��Name$ bgpanel�� �� CornerRadius$ 8,8,8,8�����#fff$
��Auto���� -    ��Name$ close��#��[  $��30��$��30��$��351,10,19.39,190q��� -   $ getbtn��#��[ $��34.114,10,332.076,186.19q�$��0���� -   $
 showImg��$	��150��$	��150��$"��11.067,56.485,238.932,23.514q� J� Clip @�  @� RadiusX$	 103Q� @� RadiusY$	 103Q� @� Center$ 75,75&��� -    ��Name$ textbox��$	��150��$��166.068,56.485,10,23.514q� �� 
IsReadOnly . $��1��
������ ���#fff �� TextWrapping$
 Wrap=��� $(��"Power by yjl617@github.com nick123��$��100.146,211.287,78.66,3.3q����#fff