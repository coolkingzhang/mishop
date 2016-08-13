# mishop

                                                            微米JAVA分布式电商系统
    一：系统介绍
    
        微米电商系统采用java语言开发，采用分布式架构模块化的技术。
        技术框架：
                1：spring mvc + mybatis + redis +　ehcache
                2: dubbo + elasticsearch + rabbitmq
                3:　swagger
        
        模块化：分为　前台　中台　后台
        
        前台：网站前端　wap 微信 android ios　用户前台
        中台：商品中心　全局ID　用户中心　店铺中心　营销中心　服务中心　促销中心
        后台:管理后台　商家后台　营销后台
        
        前台ajax/html->中台rest/dubbo
        后台ajax/html->中台rest/dubbo
