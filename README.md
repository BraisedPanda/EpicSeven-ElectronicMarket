# EpicSeven-ElectronicMarket
使用SSH框架搭建的简易游戏商城门户网站


  这个项目很早以前写的，很单纯用了SSH框架，前端全靠手写，没用任何框架，可以说是非常刚了...
  
 `tips`:这个项目年代比较久远，并且SSH框架已经不是主流框架了，此项目只有参考价值，并不值得学习
      
  ### 介绍
  这是一个商城的门户网站，可以进行物品的页面展示，购买商品，添加购物车等操作
  基本的环境：
  * Spring+Struts+Hibernate
  * svn
 
  
  ### 模块说明
  
      root|————
         |    |——src |——
         |           
         |            |——UserDao              --:用户接口层(这个本应该在demo里面的，因为大写了，所以单独分出来一级了 --！)
         |            |——bean1.xml            --:spring配置
         |            |——hibernate.cfg.xml    --:hibernate基本配置文件
         |            |——lo4j.properties      --:log4j日志配置文件
         |            |——struts.xml           --:struts配置文件
         |            |——demo|——              --:主要文件夹(每个里面都有action、dao、service、entity)
                             |——cart          --:购物车类
                             |——category      --:商品分类
                             |——goods         --:物品类
                             |——interceptor   --:拦截器
                             |——order         --:订单类
                             |——user          --:用户
                             |——utils         --:工具类
         |            
         |
         ├── WebRoot   |——        --：页面的一些资源和jsp文件
                       |——css     
                       |——imdex.jsp   --:首页
                       |——...  
                       |——...
                
  
  ### 预览
  
#### `登录界面`<br><br>
![](https://github.com/BraisedPanda/EpicSeven-ElectronicMarket/raw/master/display/2.jpg)<br><br><br>
#### `首页`<br><br>
![](https://github.com/BraisedPanda/EpicSeven-ElectronicMarket/raw/master/display/1.jpg)<br><br><br>
#### `商品列表`<br><br>
![](https://github.com/BraisedPanda/EpicSeven-ElectronicMarket/raw/master/display/6.jpg)<br><br><br>
#### `修改用户`<br><br>
![](https://github.com/BraisedPanda/EpicSeven-ElectronicMarket/raw/master/display/3.jpg)<br><br><br>
#### `购买页`<br><br>
![](https://github.com/BraisedPanda/EpicSeven-ElectronicMarket/raw/master/display/4.jpg)<br><br><br>
#### `订单详细`<br><br>
![](https://github.com/BraisedPanda/EpicSeven-ElectronicMarket/raw/master/display/5.jpg)<br><br><br>


