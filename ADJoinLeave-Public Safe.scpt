FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � � 

NAME:	ADJoin/Leave
Author:	Kyle Tousignant
Date:	11/18/15

This script is to allow easy joining and removal from the domain for mac computers.  Please make sure you set your variables at the top before running!

     � 	 	�   
 
 N A M E : 	 A D J o i n / L e a v e 
 A u t h o r : 	 K y l e   T o u s i g n a n t 
 D a t e : 	 1 1 / 1 8 / 1 5 
 
 T h i s   s c r i p t   i s   t o   a l l o w   e a s y   j o i n i n g   a n d   r e m o v a l   f r o m   t h e   d o m a i n   f o r   m a c   c o m p u t e r s .     P l e a s e   m a k e   s u r e   y o u   s e t   y o u r   v a r i a b l e s   a t   t h e   t o p   b e f o r e   r u n n i n g ! 
 
   
  
 l   G ����  O   G    Z   F  ��   I   �� ��
�� .coredoexbool        obj   c        m       �   T / u s r / l o c a l / s h a r e / c e n t r i f y d c / l i b e x e c / a d j o i n  m    ��
�� 
psxf��    k   "       p       �� �� 0 gladmin gLAdmin  �� �� 0 glpass gLPass  �� �� 0 gdadmin gDAdmin  �� �� 0 gdpass gDPass  �� �� 0 gdomain gDomain  ������ 
0 gou gOU��       !   l   ��������  ��  ��   !  " # " r     $ % $ m     & & � ' ' > [ L o c a l   A d m i n   A c c o u n t   G o e s   H e r e ] % o      ���� 0 gladmin gLAdmin #  ( ) ( r     * + * m     , , � - - @ [ L o c a l   A d m i n   P a s s w o r d   G o e s   H e r e ] + o      ���� 0 glpass gLPass )  . / . r     0 1 0 m     2 2 � 3 3 > [ D o m a i n   J o i n   A c c o u n t   G o e s   H e r e ] 1 o      ���� 0 gdadmin gDAdmin /  4 5 4 r     6 7 6 m     8 8 � 9 9 @ [ D o m a i n   J o i n   P a s s w o r d   G o e s   H e r e ] 7 o      ���� 0 gdpass gDPass 5  : ; : r    ! < = < m     > > � ? ? $ [ D o m a i n   G o e s   H e r e ] = o      ���� 0 gdomain gDomain ;  @ A @ r   " % B C B m   " # D D � E E & [ O U   P a t h   G o e s   H e r e ] C o      ���� 
0 gou gOU A  F G F l  & &��������  ��  ��   G  H�� H Z   &" I J�� K I =   & / L M L l  & - N���� N I  & -�� O��
�� .sysoexecTEXT���     TEXT O m   & ) P P � Q Q  w h o a m i��  ��  ��   M o   - .���� 0 gladmin gLAdmin J k   2� R R  S T S l  2 2��������  ��  ��   T  U V U r   2 = W X W I  2 9�� Y��
�� .sysoexecTEXT���     TEXT Y m   2 5 Z Z � [ [  h o s t n a m e   - s��   X o      ���� 0 computername ComputerName V  \ ] \ I  > C������
�� .miscactvnull��� ��� obj ��  ��   ]  ^ _ ^ r   D f ` a ` c   D b b c b l  D ^ d���� d I  D ^�� e f
�� .gtqpchltns    @   @ ns   e J   D L g g  h i h m   D G j j � k k : J o i n   a   C o m p u t e r   t o   t h e   D o m a i n i  l�� l m   G J m m � n n B R e m o v e   a   C o m p u t e r   f r o m   t h e   D o m a i n��   f �� o p
�� 
appr o m   O R q q � r r   C o m i n g   o r   G o i n g ? p �� s��
�� 
prmp s m   U X t t � u u 4 W h a t   w o u l d   y o u   l i k e   t o   d o ?��  ��  ��   c m   ^ a��
�� 
ctxt a o      ���� 0 
nextaction 
NextAction _  v w v l  g g��������  ��  ��   w  x y x Z   g* z {���� z =  g n | } | o   g j���� 0 
nextaction 
NextAction } m   j m ~ ~ �   : J o i n   a   C o m p u t e r   t o   t h e   D o m a i n { k   q& � �  � � � I  q v������
�� .miscactvnull��� ��� obj ��  ��   �  � � � I  w ��� � �
�� .sysodlogaskr        TEXT � m   w z � � � � �4 Y o u   w i l l   n o w   b e   w a l k e d   t h r o u g h   j o i n i n g   t h i s   m a c h i n e   t o   t h e   d o m a i n   a n d   w i l l   b e   g i v e n   t h e   o p t i o n   t o   r e n a m e   i t   i f   n e e d e d .     A r e   y o u   s u r e   y o u   w a n t   t o   c o n t i n u e ? � �� � �
�� 
btns � J   } � � �  � � � m   } � � � � � �  Y e s �  ��� � m   � � � � � � �  N o��   � �� ���
�� 
dflt � m   � ����� ��   �  ��� � Z   �& � ��� � � =  � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
bhit � l  � � ����� � 1   � ���
�� 
rslt��  ��  ��  ��   � m   � � � � � � �  Y e s � k   � � �  � � � n  � � � � � I   � ��������� 0 adjoincheck ADJoinCheck��  ��   �  f   � � �  � � � I  � �������
�� .miscactvnull��� ��� obj ��  ��   �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � m   � � � � � � � B T h i s   C o m p u t e r s   n a m e   i s   c u r r e n t l y   � o   � ����� 0 computername ComputerName � m   � � � � � � �  .     I s   t h i s   o k ? � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  Y e s �  ��� � m   � � � � � � �  N o��   � �� ���
�� 
dflt � m   � ����� ��   �  � � � Z   � � � ��� � � =  � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
bhit � l  � � ����� � 1   � ���
�� 
rslt��  ��  ��  ��   � m   � � � � � � �  Y e s � n  � � � � � I   � ��������� 0 	adjoinnow 	ADJoinNow��  ��   �  f   � ���   � k   � � � �  � � � n  � � � � � I   � ��������� 0 	renamemac 	RenameMac��  ��   �  f   � � �  ��� � n  � � � � � I   � ��������� 0 	adjoinnow 	ADJoinNow��  ��   �  f   � ���   �  � � � I  � �������
�� .miscactvnull��� ��� obj ��  ��   �  ��� � I  ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � � H o p e f u l l y   e v e r y t h i n g   w o r k e d   a n d   t h i s   m a c h i n e   i s   n o w   o n   t h e   D o m a i n .     P l e a s e   r e b o o t   a n d   t e s t   i t ! � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m  ���� ��  ��  ��   � k  & � �  � � � I ������
�� .miscactvnull��� ��� obj ��  ��   �  ��� � I &�� � �
�� .sysodlogaskr        TEXT � m   � � � � � 8 E x i t i n g   w i t h o u t   a n y   c h a n g e s . � �� � �
�� 
btns � J   � �  ��� � m   � � � � �  C a n c e l��   � �� ���
�� 
dflt � m   ���� ��  ��  ��  ��  ��   y  � � � l ++��������  ��  ��   �  �� � Z  +� � ��~�} � = +2 � � � o  +.�|�| 0 
nextaction 
NextAction � m  .1 � � � � � B R e m o v e   a   C o m p u t e r   f r o m   t h e   D o m a i n � k  5� � �  � � � I 5:�{�z�y
�{ .miscactvnull��� ��� obj �z  �y   �  � � � I ;S�x 
�x .sysodlogaskr        TEXT  m  ;> � x T h i s   m a c h i n e   w i l l   b e   r e m o v e d   f r o m   t h e   D o m a i n .     A r e   y o u   s u r e ? �w
�w 
btns J  AI  m  AD		 �

  Y e s �v m  DG �  N o�v   �u�t
�u 
dflt m  LM�s�s �t   �  Z  T��r = T_ l T[�q�p n  T[ 1  W[�o
�o 
bhit l TW�n�m 1  TW�l
�l 
rslt�n  �m  �q  �p   m  [^ �  Y e s k  b�  n bg  I  cg�k�j�i�k 0 
adleavenow 
ADLeaveNow�j  �i     f  bc !"! I hm�h�g�f
�h .miscactvnull��� ��� obj �g  �f  " #$# I n��e%&
�e .sysodlogaskr        TEXT% m  nq'' �(( � T h i s   m a c h i n e   s h o u l d   n o   l o n g e r   b e   o n   t h e   d o m a i n !     D o   y o u   n e e d   t o   r e n a m e   i t   a n d   r e j o i n ?& �d)*
�d 
btns) J  t|++ ,-, m  tw.. �//  Y e s- 0�c0 m  wz11 �22  N o�c  * �b3�a
�b 
dflt3 m  ��`�` �a  $ 4�_4 Z  ��56�^75 = ��898 l ��:�]�\: n  ��;<; 1  ���[
�[ 
bhit< l ��=�Z�Y= 1  ���X
�X 
rslt�Z  �Y  �]  �\  9 m  ��>> �??  Y e s6 k  ��@@ ABA n ��CDC I  ���W�V�U�W 0 	renamemac 	RenameMac�V  �U  D  f  ��B EFE n ��GHG I  ���T�S�R�T 0 	adjoinnow 	ADJoinNow�S  �R  H  f  ��F IJI I ���Q�P�O
�Q .miscactvnull��� ��� obj �P  �O  J K�NK I ���MLM
�M .sysodlogaskr        TEXTL m  ��NN �OO � H o p e f u l l y   e v e r y t h i n g   w o r k e d   a n d   t h i s   m a c h i n e   i s   n o w   o n   t h e   D o m a i n .     P l e a s e   r e b o o t   a n d   t e s t   i t !M �LPQ
�L 
btnsP J  ��RR S�KS m  ��TT �UU  O K�K  Q �JV�I
�J 
dfltV m  ���H�H �I  �N  �^  7 k  ��WW XYX I ���G�F�E
�G .miscactvnull��� ��� obj �F  �E  Y Z�DZ I ���C[\
�C .sysodlogaskr        TEXT[ m  ��]] �^^ & T h a n k s   f o r   P l a y i n g !\ �B_`
�B 
btns_ J  ��aa b�Ab m  ��cc �dd  O K�A  ` �@e�?
�@ 
dflte m  ���>�> �?  �D  �_  �r   k  ��ff ghg I ���=�<�;
�= .miscactvnull��� ��� obj �<  �;  h i�:i I ���9jk
�9 .sysodlogaskr        TEXTj m  ��ll �mm 8 E x i t i n g   w i t h o u t   a n y   c h a n g e s .k �8no
�8 
btnsn J  ��pp q�7q m  ��rr �ss  C a n c e l�7  o �6t�5
�6 
dfltt m  ���4�4 �5  �:   u�3u l ���2�1�0�2  �1  �0  �3  �~  �}  �  ��   K k  "vv wxw I �/�.�-
�/ .sysobeepnull��� ��� long�.  �-  x yzy I �,�+�*
�, .miscactvnull��� ��� obj �+  �*  z {�){ I "�(|}
�( .sysodlogaskr        TEXT| m  ~~ � z P l e a s e   l o g   o u t   a n d   r e - r u n   t h i s   u n d e r   t h e   l o c a l   a d m i n   a c c o u n t !} �'��
�' 
btns� J  �� ��&� m  �� ���  C a n c e l�&  � �%��$
�% 
dflt� m  �#�# �$  �)  ��  ��    k  %F�� ��� I %*�"�!� 
�" .sysobeepnull��� ��� long�!  �   � ��� I +0���
� .miscactvnull��� ��� obj �  �  � ��� l 11����  �  �  � ��� I 1F���
� .sysodlogaskr        TEXT� m  14�� ��� � S o m e t h i n g   i s   w r o n g   a n d   I   c o u l d   n o t   f i n d   t h e   C e n t r i f y   c l i e n t   o n   t h i s   m a c h i n e .     I t   m a y   h a v e   n o t   f i n i s h e d   i m a g i n g   c o r r e c t l y !� ���
� 
btns� J  7<�� ��� m  7:�� ���  O K�  � ���
� 
dflt� m  ?@�� �  �    m     ���                                                                                  MACS  alis    b  SYSTEM                     �fH+     8
Finder.app                                                      ���2        ����  	                CoreServices    �fcW      ��r       8   7   6  0SYSTEM:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    S Y S T E M  &System/Library/CoreServices/Finder.app  / ��  ��  ��    ��� l     ����  �  �  � ��� i     ��� I      ���� 0 
adleavenow 
ADLeaveNow�  �  � I    ���
� .sysoexecTEXT���     TEXT� l    	���
� b     	��� b     ��� b     ��� b     ��� m     �� ��� f / u s r / l o c a l / s h a r e / c e n t r i f y d c / l i b e x e c / a d l e a v e   - - u s e r  � o    �	�	 0 gdadmin gDAdmin� m    �� ���    - - p a s s w o r d  � o    �� 0 gdpass gDPass� m    �� ���  �  �
  � ���
� 
RAun� o   
 �� 0 gladmin gLAdmin� ���
� 
RApw� o    �� 0 glpass gLPass� ���
� 
badm� m    �
� boovtrue�  � ��� l     � �����   ��  ��  � ��� i    ��� I      �������� 0 	adjoinnow 	ADJoinNow��  ��  � k     9�� ��� r     ��� I    �����
�� .sysoexecTEXT���     TEXT� m     �� ���  h o s t n a m e   - s��  � o      ���� 0 hostname Hostname� ��� I   ����
�� .sysoexecTEXT���     TEXT� m    	�� ��� ` / u s r / l o c a l / s h a r e / c e n t r i f y d c / l i b e x e c / a d l i c e n s e   - l� ����
�� 
RAun� o   
 ���� 0 gladmin gLAdmin� ����
�� 
RApw� o    ���� 0 glpass gLPass� �����
�� 
badm� m    ��
�� boovtrue��  � ��� I   3����
�� .sysoexecTEXT���     TEXT� l   )������ b    )��� b    '��� b    %��� b    #��� b    !��� b    ��� b    ��� b    ��� b    ��� b    ��� m    �� ��� d / u s r / l o c a l / s h a r e / c e n t r i f y d c / l i b e x e c / a d j o i n   - - u s e r  � o    ���� 0 gdadmin gDAdmin� m    �� ���    - - p a s s w o r d  � o    ���� 0 gdpass gDPass� m    �� ���    - - c o n t a i n e r  � o    ���� 
0 gou gOU� m     �� ���    - - n a m e  � o   ! "���� 0 hostname Hostname� m   # $�� ��� .   - - w o r k s t a t i o n   - - f o r c e  � o   % &���� 0 gdomain gDomain� m   ' (�� ���  ��  ��  � ����
�� 
RAun� o   * +���� 0 gladmin gLAdmin� ����
�� 
RApw� o   , -���� 0 glpass gLPass� �����
�� 
badm� m   . /��
�� boovtrue��  � ���� I  4 9�����
�� .sysoexecTEXT���     TEXT� m   4 5�� ��� l / u s r / l o c a l / s h a r e / c e n t r i f y d c / l i b e x e c / a d g p u p d a t e ;   e x i t   0��  ��  � ��� l     ��������  ��  ��  �    i     I      �������� 0 adjoincheck ADJoinCheck��  ��   Z     ,���� =      l    ���� I    ��	��
�� .sysoexecTEXT���     TEXT	 m     

 � j / u s r / l o c a l / s h a r e / c e n t r i f y d c / l i b e x e c / a d i n f o   - d ;   e x i t   0��  ��  ��   o    ���� 0 gdomain gDomain k   
 (  I  
 ������
�� .sysobeepnull��� ��� long��  ��    I   ������
�� .miscactvnull��� ��� obj ��  ��    I   !��
�� .sysodlogaskr        TEXT m     � � T h i s   C o m p u t e r   i s   a l r e a d y   j o i n e d   t o   t h e   d o m a i n !     P l e a s e   p r e s s   c a n c e l ! ��
�� 
btns J     �� m     �  C a n c e l��   ����
�� 
dflt m    ���� ��   �� R   " (����
�� .ascrerr ****      � ****��   �� ��
�� 
errn  m   $ %��������  ��  ��  ��   !"! l     ��������  ��  ��  " #��# i    $%$ I      �������� 0 	renamemac 	RenameMac��  ��  % k     �&& '(' r     )*) m     ��
�� boovfals* o      ���� 0 correctname CorrectName( +,+ W    f-.- k    a// 010 I   ������
�� .miscactvnull��� ��� obj ��  ��  1 232 I   ��45
�� .sysodlogaskr        TEXT4 m    66 �77 F P l e a s e   e n t e r   t h e   n e w   C o m p u t e r   N a m e .5 ��89
�� 
dtxt8 m    :: �;;  9 ��<=
�� 
btns< J    >> ?��? m    @@ �AA  O K��  = ��B��
�� 
dfltB m    ���� ��  3 CDC s     4EFE c     #GHG l    !I����I 1     !��
�� 
rslt��  ��  H m   ! "��
�� 
listF J      JJ KLK o      ���� 0 button_pressed  L M��M o      ���� 0 newcompname NewCompName��  D NON I  5 :������
�� .miscactvnull��� ��� obj ��  ��  O PQP I  ; M��RS
�� .sysodlogaskr        TEXTR b   ; @TUT b   ; >VWV m   ; <XX �YY & P l e a s e   V e r i f y   t h a t  W o   < =���� 0 newcompname NewCompNameU m   > ?ZZ �[[ �   i s   t h e   n a m e   y o u   w a n t .     R e m e m b e r   t h i s   i s   t h e   n a m e   i t   w i l l   b e   j o i n e d   t o   t h e   d o m a i n   u n d e r .S ��\]
�� 
btns\ J   A E^^ _`_ m   A Baa �bb  Y e s` c��c m   B Cdd �ee  N o��  ] ��f��
�� 
dfltf m   F G���� ��  Q g��g Z   N ahi����h =  N Wjkj l  N Sl����l n   N Smnm 1   O S��
�� 
bhitn l  N Oo����o 1   N O��
�� 
rslt��  ��  ��  ��  k m   S Vpp �qq  Y e si r   Z ]rsr m   Z [��
�� boovtrues o      ���� 0 correctname CorrectName��  ��  ��  . =   tut o    	���� 0 correctname CorrectNameu m   	 
��
�� boovtrue, vwv I  g ���xy
�� .sysoexecTEXT���     TEXTx l  g pz����z b   g p{|{ b   g l}~} m   g j ��� , s c u t i l   - - s e t   H o s t N a m e  ~ o   j k���� 0 newcompname NewCompName| m   l o�� ���  ��  ��  y ����
�� 
RAun� o   s t���� 0 gladmin gLAdmin� ����
�� 
RApw� o   w x���� 0 glpass gLPass� �����
�� 
badm� m   { |��
�� boovtrue��  w ��� I  � �����
�� .sysoexecTEXT���     TEXT� l  � ������� b   � ���� b   � ���� m   � ��� ��� 4 s c u t i l   - - s e t   C o m p u t e r N a m e  � o   � ��� 0 newcompname NewCompName� m   � ��� ���  ��  ��  � �~��
�~ 
RAun� o   � ��}�} 0 gladmin gLAdmin� �|��
�| 
RApw� o   � ��{�{ 0 glpass gLPass� �z��y
�z 
badm� m   � ��x
�x boovtrue�y  � ��w� I  � ��v��
�v .sysoexecTEXT���     TEXT� l  � ���u�t� b   � ���� b   � ���� m   � ��� ��� 4 s c u t i l   - - s e t   L o c a H o s t N a m e  � o   � ��s�s 0 newcompname NewCompName� m   � ��� ���  �u  �t  � �r��
�r 
RAun� o   � ��q�q 0 gladmin gLAdmin� �p��
�p 
RApw� o   � ��o�o 0 glpass gLPass� �n��m
�n 
badm� m   � ��l
�l boovtrue�m  �w  ��       �k�������k  � �j�i�h�g�f�j 0 
adleavenow 
ADLeaveNow�i 0 	adjoinnow 	ADJoinNow�h 0 adjoincheck ADJoinCheck�g 0 	renamemac 	RenameMac
�f .aevtoappnull  �   � ****� �e��d�c���b�e 0 
adleavenow 
ADLeaveNow�d  �c  � �a�`�_�^�a 0 gdadmin gDAdmin�` 0 gdpass gDPass�_ 0 gladmin gLAdmin�^ 0 glpass gLPass� ����]�\�[�Z�Y
�] 
RAun
�\ 
RApw
�[ 
badm�Z 
�Y .sysoexecTEXT���     TEXT�b �%�%�%�%���e� � �X��W�V���U�X 0 	adjoinnow 	ADJoinNow�W  �V  � �T�S�R�Q�P�O�N�T 0 hostname Hostname�S 0 gladmin gLAdmin�R 0 glpass gLPass�Q 0 gdadmin gDAdmin�P 0 gdpass gDPass�O 
0 gou gOU�N 0 gdomain gDomain� ��M��L�K�J�I�������
�M .sysoexecTEXT���     TEXT
�L 
RAun
�K 
RApw
�J 
badm�I �U :�j E�O����e� O�%�%�%�%�%�%�%�%�%�%���e� O�j � �H�G�F���E�H 0 adjoincheck ADJoinCheck�G  �F  � �D�D 0 gdomain gDomain� 
�C�B�A�@�?�>�=�<�;
�C .sysoexecTEXT���     TEXT
�B .sysobeepnull��� ��� long
�A .miscactvnull��� ��� obj 
�@ 
btns
�? 
dflt�> 
�= .sysodlogaskr        TEXT
�< 
errn�;���E -�j �  #*j O*j O���kv�k� 	O)��lhY h� �:%�9�8���7�: 0 	renamemac 	RenameMac�9  �8  � �6�5�4�3�2�6 0 correctname CorrectName�5 0 button_pressed  �4 0 newcompname NewCompName�3 0 gladmin gLAdmin�2 0 glpass gLPass� �16�0:�/@�.�-�,�+�*�)XZad�(�'p��&�%�$�#����
�1 .miscactvnull��� ��� obj 
�0 
dtxt
�/ 
btns
�. 
dflt�- 
�, .sysodlogaskr        TEXT
�+ 
rslt
�* 
list
�) 
cobj�( 
�' 
bhit
�& 
RAun
�% 
RApw
�$ 
badm
�# .sysoexecTEXT���     TEXT�7 �fE�O ah�e *j  O�����kv�k� O��&E[�k/EQ�Z[�l/EQ�ZO*j  O�%�%���lv�ka  O�a ,a   eE�Y h[OY��Oa �%a %a �a �a e� Oa �%a %a �a �a e� Oa �%a %a �a �a e� � �"��!� ���
�" .aevtoappnull  �   � ****� k    G��  
��  �!  �   �  � J� �� &� ,� 2� 8� >� D� P� Z�� j m� q� t���� ~ �� � ���
�	� �� � � � � ��� � � � � �	�'.1>NT]clr�~���
� 
psxf
� .coredoexbool        obj � 0 gladmin gLAdmin� 0 glpass gLPass� 0 gdadmin gDAdmin� 0 gdpass gDPass� 0 gdomain gDomain� 
0 gou gOU
� .sysoexecTEXT���     TEXT� 0 computername ComputerName
� .miscactvnull��� ��� obj 
� 
appr
� 
prmp� 
� .gtqpchltns    @   @ ns  
� 
ctxt� 0 
nextaction 
NextAction
� 
btns
� 
dflt
�
 .sysodlogaskr        TEXT
�	 
rslt
� 
bhit� 0 adjoincheck ADJoinCheck� 0 	adjoinnow 	ADJoinNow� 0 	renamemac 	RenameMac� 0 
adleavenow 
ADLeaveNow
� .sysobeepnull��� ��� long�H�D��&j �E�O�E�O�E�O�E�O�E�O�E�Oa j � �a j E` O*j Oa a lva a a a a  a &E` O_ a   �*j Oa  a !a "a #lva $la  %O_ &a ',a (  o)j+ )O*j Oa *_ %a +%a !a ,a -lva $ka  %O_ &a ',a .  
)j+ /Y )j+ 0O)j+ /O*j Oa 1a !a 2kva $ka  %Y *j Oa 3a !a 4kva $ka  %Y hO_ a 5  �*j Oa 6a !a 7a 8lva $la  %O_ &a ',a 9  })j+ :O*j Oa ;a !a <a =lva $la  %O_ &a ',a >  ,)j+ 0O)j+ /O*j Oa ?a !a @kva $ka  %Y *j Oa Aa !a Bkva $ka  %Y *j Oa Ca !a Dkva $ka  %OPY hY #*j EO*j Oa Fa !a Gkva $ka  %Y #*j EO*j Oa Ha !a Ikva $ka  %U ascr  ��ޭ