   M S B A M L   `   `   `  ����C  ?QRreader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:QRreader_wpfQRreader_wpf  5   	       QRreader_wpf.MainWindow   5   	   \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   8x,http://schemas.microsoft.com/winfx/2006/xaml    5   	   >d2http://schemas.microsoft.com/expression/blend/2008    5   	   Hmc;http://schemas.openxmlformats.org/markup-compatibility/2006    5   	   *localclr-namespace:QRreader_wpf    5   	   -   5          � Icon$  favourite.ico��5   	    � WindowStartupLocation$ CenterScreen=�6    � AllowsTransparency .  � WindowStyle$
 None=�5   5   
������  � Title$ 二维码查看器��5
   	   $	��230��6   $	��400��6%    � 	Resources 5         BtnMessCloseIcon �� 
TargetType �� Property �� Value	 �� 
TargetType
 ��Name �� Triggers P� Property P� Value �� ScaleX �� ScaleY 
 BtnCut��%=  &	        &	     �� 5   
   " ��6)   .�5      ��  � �� 5      �� 5      "	 ��6&   .R�5      �� .��5      �� $
 backgroundImage��6$   $��img/close.png��6=   $��30��6T   $��30��6_   5       5      P� 5       � �� . . �5   "   ��  � z� 5   &   �� 5   *   $ .9Q�69   $ .9Q�6E   5   #   �� 5   "    �@J�RenderTransformOrigin$ .5,.5&�6J   5      P� 5       �@J�IsMouseOver . . �5   "   ��  � z� 5   &   �� 5    *   $	 1.1Q�69   $	 1.1Q�6F   5"   #   �� 5#   "    �@J�RenderTransformOrigin$ .5,.5&�6J   5$      5&      5(      5)      �� 5*   
   " ��6   .�5+      ��  � �� 5,      �� 5-      "	 ��6&   .R�5.      �� .��5/      �� $
 backgroundImage��6$   $��img/cut.png��6=   $��32��6R   $��32��6]   50       51      P� 52       � �� . . �53   "   ��  � z� 54   &   �� 55   *   $ .9Q�69   $ .9Q�6E   57   #   �� 58   "    �@J�RenderTransformOrigin$ .5,.5&�6J   59      P� 5:       �@J�IsMouseOver . . �5;   "   ��  � z� 5<   &   �� 5=   *   $	 1.1Q�69   $	 1.1Q�6F   5?   #   �� 5@   "    �@�Cursor$
 Hand��6;   �� 5A   "    �@J�RenderTransformOrigin$ .5,.5&�6J   5B      5D      5F      5G      5H      .��5I      � .+�5J   
   �� -   5         ��Name$ bgpanel��5J       �� CornerRadius$ 8,8,8,8��6"   ���#fff$
��Auto��6K   6[   �� 5K   
   -   5         ��Name$ close��5K      #��[  6    $��30��6J   $��30��6V   $��351,10,19.39,190q�6a   6{   �� 5L   
   -   5        $ getbtn��5L      #��[ 6!   $��34.114,10,332.076,186.19q�6A   $��0��6e   6r   �� 5M   
   -   5        $
 showImg��5M      $	��150��6!   $	��150��6.   $"��11.067,60.487,238.932,19.512q�6:    J� Clip 5N      @� 5O       @� RadiusX$	 103Q�5P       @� RadiusY$	 103Q�5Q       @� Center$ 75,75&�5R      5T      �� 5U   
   -   5         ��Name$ textbox��5U      $	��150��6#   $��166.068,60.487,10,19.512q�60    �� 
IsReadOnly . $��1��6d   
������ ���#fff �� TextWrapping$
 Wrap=�6�   5V      5W      