# 工程的所有构思
### 数据库
* 表格
    1. user（用户表,实体表）
                    
           存放用户的信息，用户拥有的权限仅仅只有设置网站显示的内容，无法修改网站大体显示结构
    
    2. problems（问题表，实体表）
    
           存放用来进行练习的所有常见问题     
    3. problems_type（问题-类型表，关系表）
    
           问题有分类，本表显示的是问题的所属分类
    4. bigType(大类型表，实体表)
            
           博客的分类信息，类型包含大类型和小类型，这里存储大类型信息
    5. smallType（小类型表，实体表）
    
           表示问题/博客的小分类，或者问题的标签，小分类属于大分类
    6. learnProblem（学习过的问题表，实体表）
    
           记录下所有学习过/复习过的问题，便于后续学习
    7. blog（博客表，实体表）
    
           存储写下的所有blog
    8. blog_type(博客-类型表，关系表)
    
           表示博客的分类类型
    
### 后台
### 前台



### 其他细节
#### 管理问题界面（```allQuestion.jsp```）
* 显示问题
    1. 利用table标签显示
    2. 显示问题的序号、问题名称、问题答案、问题标签、对问题课进行的操作（编辑、删除、查看）
* 筛选问题
    1. 设置一个select标签用于选择问题类型（按照问题的完成度[```完成```,```未完成```,```所有```])
    2. 页面上方设置有搜索框，用于搜索本页面问题，搜索关键字匹配于问题的题目，模糊搜索。
* 分页显示
    1. 最大只显示分页选择器6个选项
    2. 每页的问题数量未设置为可以改变，当前最大为20；
* 添加问题
    1. 所在页面：“所有问题”页面（allQuestion.jsp)
    2. 添加的标签选择：标签不唯一


#### 显示语言界面（```language.jsp```）
