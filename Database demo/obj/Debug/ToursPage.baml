   M S B A M L   `   `   `  ????H  DDatabase demo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Database_demoDatabase_demo  5          Database_demo.ToursPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:Database_demo     5        N? Title$  	ToursPage??5	      .??5      ?  ? RowDefinitions 5   
   ?? 5      $
??auto ?6   6,   ?? 5      $??* ?6   6)   .+?5   
   ?  ? Orientation$ 
Horizontal=?6   $??Center=?6-   .+?5      ??  ?? Orientation$ 
Horizontal=?6   .+?5      ?? $:??4Введите название для поиска:??6   $	??175??6@    ?? TextAlignment$ Right=?6L   6d   ?? 5      -   5        $??
TBoxSearch??5   &   $	??225??6   6_   5      ?? 5      $ 
Horizontal=?6   .+?5      ?? $??Выберите тип:??6   $	??175??61   $ Right=?6=   6U   ?? 5      -   5        $??	ComboType??5   '   $	??225??6    ?? DisplayMemberPath$
 Name??6f   6?   5      ?? 5      -   5         ??Name$ CheckActual??5      $E???Показывать только актуальные туры??6j   6?   5      ?? 5   
   -   5        $??
LViewTours??5       $??1??6   $??Disabled=?62   $??Center=?6h   ??5      ?? 5      .R?5      ? $ 
Horizontal=?6    $??Center=?69   6X   5       ??5"      ?? 5#      .R?5$      ? $??20q?6   $	??400??6'    5%      ?? 5&      $??70 ?6,   6:   ?? 5'      $	??310 ?6,   6;   ?? 5(      $
??auto ?6,   6<   ?? 5)      $
??auto ?6,   6<   .+?5+      ?? $	??400??6    $??1??6,   $??UniformToFill=?69   $??Center=?6Q   $??5q?6n   ??5,      ?? 5-   "    ?? Path$ ImagePreview?6*    ?? TargetNullValue 5.   &   ??5/   *   Image/noimage.png??6I   51   #   53      ?? 54      $??Center=?6;   $ Center=?6V   $	??390??6m   $
??Wrap=?55   $   $??Center=?68   $	??5 5q?6U   $??26(?6b   $??0??6p   ??54   $   ?? *Name+55      ?? 56      $??2??6W   $??5 5 5 15q?6d   $??Center=?6v   $??26(?6?   $
??Bold"?6?   ??6$   ?? *Price+	 ?? StringFormat$	 {0:N2} руб??6?   ?? 57      $??3??6j   $??Right=?6w   $??14(?6?   ??6$   ?? *TicketsCount+$+	 % Билетов осталось: {0}??6?   ?? 58      $??3??6@   $
??Left=?6M   $??14(?6h   ??6$   ?? *
ActualText+6x   59      5:      5<      5@      5A      