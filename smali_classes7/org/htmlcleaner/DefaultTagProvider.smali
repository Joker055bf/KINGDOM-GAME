.class public Lorg/htmlcleaner/DefaultTagProvider;
.super Ljava/lang/Object;
.source "DefaultTagProvider.java"

# interfaces
.implements Lorg/htmlcleaner/ITagInfoProvider;


# static fields
.field private static final CLOSE_BEFORE_COPY_INSIDE_TAGS:Ljava/lang/String; = "bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

.field private static final CLOSE_BEFORE_TAGS:Ljava/lang/String; = "h1,h2,h3,h4,h5,h6,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

.field public static final INSTANCE:Lorg/htmlcleaner/DefaultTagProvider;

.field private static final MEDIA_TAGS:Ljava/lang/String; = "audio,video"

.field private static final PHRASING_TAGS:Ljava/lang/String; = "a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,link,map,mark,math,meta,meter,noscript,object,output,progress,q,ruby,s,samp,script,select,small,span,strong,sub,sup,svg,template,textarea,time,u,var,video,wbr"

.field private static final STRONG:Ljava/lang/String; = "strong"


# instance fields
.field private tagInfoMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/htmlcleaner/TagInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lorg/htmlcleaner/DefaultTagProvider;

    invoke-direct {v0}, Lorg/htmlcleaner/DefaultTagProvider;-><init>()V

    sput-object v0, Lorg/htmlcleaner/DefaultTagProvider;->INSTANCE:Lorg/htmlcleaner/DefaultTagProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lorg/htmlcleaner/DefaultTagProvider;->tagInfoMap:Ljava/util/concurrent/ConcurrentMap;

    .line 82
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "div"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    .line 83
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v3, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 84
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "div"

    .line 85
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 92
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "aside"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 93
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v4, "p"

    .line 94
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "aside"

    .line 95
    invoke-virtual {v0, v5, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 97
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "section"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v12, 0x0

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 98
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "section"

    .line 100
    invoke-virtual {v0, v5, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 102
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "article"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 103
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "article"

    .line 105
    invoke-virtual {v0, v5, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 107
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "main"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 108
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "main"

    .line 110
    invoke-virtual {v0, v5, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 112
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "nav"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 113
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "nav"

    .line 115
    invoke-virtual {v0, v5, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 117
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "details"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 118
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "details"

    .line 120
    invoke-virtual {v0, v5, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 121
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "summary"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 122
    invoke-virtual {v1, v5}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "summary"

    .line 125
    invoke-virtual {v0, v5, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 127
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "figure"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 128
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "figure"

    .line 130
    invoke-virtual {v0, v5, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 131
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "figcaption"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 132
    invoke-virtual {v1, v5}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v5, "figcaption"

    .line 133
    invoke-virtual {v0, v5, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 136
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "header"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 137
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v5, "p,header,footer,main"

    .line 138
    invoke-virtual {v1, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v6, "header"

    .line 139
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 141
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "footer"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v13, 0x0

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 142
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "footer"

    .line 144
    invoke-virtual {v0, v5, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 149
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "mark"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x0

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v5, "a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,link,map,mark,math,meta,meter,noscript,object,output,progress,q,ruby,s,samp,script,select,small,span,strong,sub,sup,svg,template,textarea,time,u,var,video,wbr"

    .line 150
    invoke-virtual {v1, v5}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v6, "mark"

    .line 151
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 153
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "bdi"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v13, 0x0

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 154
    invoke-virtual {v1, v5}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v6, "bdi"

    .line 155
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 157
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "time"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 158
    invoke-virtual {v1, v5}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v6, "time"

    .line 159
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 161
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "meter"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 162
    invoke-virtual {v1, v5}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v6, "meter"

    .line 163
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 170
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "ruby"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v6, "rt,rp"

    .line 171
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v6, "ruby"

    .line 172
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 174
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "rt"

    sget-object v9, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 179
    invoke-virtual {v1, v5}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v6, "rt"

    .line 180
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 182
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "rp"

    sget-object v9, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 187
    invoke-virtual {v1, v5}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v6, "rp"

    .line 188
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 193
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "audio"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v6, "audio,video"

    .line 194
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v7, "audio"

    .line 195
    invoke-virtual {v0, v7, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 197
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v9, "video"

    sget-object v10, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v14, 0x0

    sget-object v15, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 198
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v7, "video"

    .line 199
    invoke-virtual {v0, v7, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 201
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v9, "source"

    sget-object v10, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v15, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 202
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v7, "source"

    .line 203
    invoke-virtual {v0, v7, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 205
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v9, "track"

    sget-object v10, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v15, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 206
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v6, "track"

    .line 207
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 209
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "canvas"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v11, 0x0

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v6, "canvas"

    .line 210
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 215
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "dialog"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v6, "dialog"

    .line 216
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 218
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "progress"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 219
    invoke-virtual {v1, v5}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v6, "progress"

    .line 220
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 227
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "span"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v6, "span"

    .line 228
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 230
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "meta"

    sget-object v9, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v6, "meta"

    .line 231
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 233
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "link"

    sget-object v9, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v6, "link"

    .line 234
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 236
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "title"

    sget-object v9, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    const/4 v12, 0x1

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v6, "title"

    .line 237
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 239
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "style"

    sget-object v9, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    const/4 v12, 0x0

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v6, "style"

    .line 240
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 242
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "bgsound"

    sget-object v9, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v6, "bgsound"

    .line 243
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 245
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "h1"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 246
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v6, "h1,h2,h3,h4,h5,h6,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 247
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v7, "h1"

    .line 248
    invoke-virtual {v0, v7, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 250
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v9, "h2"

    sget-object v10, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v14, 0x0

    sget-object v15, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 251
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v7, "h2"

    .line 253
    invoke-virtual {v0, v7, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 255
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v9, "h3"

    sget-object v10, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v15, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 256
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v7, "h3"

    .line 258
    invoke-virtual {v0, v7, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 260
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v9, "h4"

    sget-object v10, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v15, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 261
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v7, "h4"

    .line 263
    invoke-virtual {v0, v7, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 265
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v9, "h5"

    sget-object v10, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v15, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 266
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v7, "h5"

    .line 268
    invoke-virtual {v0, v7, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 270
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v9, "h6"

    sget-object v10, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v15, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 271
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v6, "h6"

    .line 273
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 276
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "p"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v11, 0x0

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 277
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v6, "p,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 278
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 281
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "strong"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "strong"

    .line 282
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 284
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "em"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x0

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "em"

    .line 285
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 287
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "abbr"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "abbr"

    .line 288
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 290
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "acronym"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "acronym"

    .line 291
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 293
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "address"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 294
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "address"

    .line 296
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 298
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "bdo"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "bdo"

    .line 299
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 301
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "blockquote"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 302
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "blockquote"

    .line 304
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 306
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "cite"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "cite"

    .line 307
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 309
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "q"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "q"

    .line 310
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 312
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "code"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "code"

    .line 313
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 315
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "ins"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "ins"

    .line 316
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 318
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "del"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "del"

    .line 319
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 321
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "dfn"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "dfn"

    .line 322
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 324
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "kbd"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "kbd"

    .line 325
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 327
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "pre"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 328
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "pre"

    .line 330
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 332
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "samp"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "samp"

    .line 333
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 335
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "listing"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 336
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "listing"

    .line 338
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 340
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "var"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "var"

    .line 341
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 343
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "br"

    sget-object v8, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "br"

    .line 344
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 346
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "wbr"

    sget-object v8, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "wbr"

    .line 347
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 349
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "nobr"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "nobr"

    .line 350
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 353
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "xmp"

    sget-object v8, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "xmp"

    .line 354
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 356
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "a"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "a"

    .line 357
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 360
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "base"

    sget-object v8, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "base"

    .line 361
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 363
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "img"

    sget-object v8, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "img"

    .line 364
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 366
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "area"

    sget-object v8, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "map"

    .line 367
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v6, "area"

    .line 368
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 371
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "map"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v13, 0x0

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 372
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 375
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v17, "object"

    sget-object v18, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v19, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget-object v23, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v24, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v24}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "object"

    .line 376
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 378
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "param"

    sget-object v8, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x0

    sget-object v13, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 379
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "param"

    .line 381
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 383
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "applet"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x1

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "applet"

    .line 384
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 386
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "xml"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x0

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "xml"

    .line 387
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 389
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "ul"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 390
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "ul"

    .line 392
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 394
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "ol"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 395
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "ol"

    .line 397
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 399
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "li"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 400
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v4, "li,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 401
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "li"

    .line 402
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 404
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "dl"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 405
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "dl"

    .line 407
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 409
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "dt"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "dt,dd"

    .line 410
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "dt"

    .line 411
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 413
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "dd"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "dt,dd"

    .line 414
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "dd"

    .line 415
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 417
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "menu"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x1

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 418
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "menu"

    .line 420
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 422
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "dir"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 423
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "dir"

    .line 425
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 427
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "table"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x0

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "tr,tbody,thead,tfoot,colgroup,caption"

    .line 428
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v4, "tr,thead,tbody,tfoot,caption,colgroup,table,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 430
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "table"

    .line 431
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 433
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "tr"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 434
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v6, "tbody"

    .line 435
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v6, "td,th"

    .line 436
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v6, "thead,tfoot"

    .line 437
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineHigherLevelTags(Ljava/lang/String;)V

    const-string v6, "tr,td,th,caption,colgroup"

    .line 438
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v6, "tr"

    .line 439
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 442
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "td"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v13, 0x0

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 443
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v7, "td,th,caption,colgroup"

    .line 445
    invoke-virtual {v1, v7}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v7, "td"

    .line 446
    invoke-virtual {v0, v7, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 448
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v9, "th"

    sget-object v10, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v14, 0x0

    sget-object v15, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 449
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v6, "td,th,caption,colgroup"

    .line 451
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v6, "th"

    .line 452
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 454
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "tbody"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v11, 0x0

    sget-object v14, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 455
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v6, "tr,form"

    .line 456
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v7, "td,th,tr,tbody,thead,tfoot,caption,colgroup"

    .line 457
    invoke-virtual {v1, v7}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v8, "tbody"

    .line 458
    invoke-virtual {v0, v8, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 460
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v10, "thead"

    sget-object v11, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v12, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v17, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v9, v1

    invoke-direct/range {v9 .. v17}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 461
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v1, v7}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v8, "thead"

    .line 464
    invoke-virtual {v0, v8, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 466
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v10, "tfoot"

    sget-object v11, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v12, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v16, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v17, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v9, v1

    invoke-direct/range {v9 .. v17}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 467
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v1, v7}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v6, "tfoot"

    .line 470
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 472
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v9, "col"

    sget-object v10, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v12, 0x0

    sget-object v15, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v6, "colgroup"

    .line 473
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v6, "col"

    .line 474
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 476
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v9, "colgroup"

    sget-object v10, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v15, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 477
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v6, "col"

    .line 478
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v1, v7}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v6, "colgroup"

    .line 480
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 482
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v9, "caption"

    sget-object v10, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v15, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 483
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1, v7}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "caption"

    .line 485
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 487
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "form"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "form"

    .line 488
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v4, "option,optgroup,textarea,select,fieldset,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 490
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "form"

    .line 491
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 493
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "input"

    sget-object v8, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v12, 0x0

    sget-object v13, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "select,optgroup,option"

    .line 494
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v6, "input"

    .line 495
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 497
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "textarea"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v13, 0x0

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 498
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v6, "textarea"

    .line 499
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 501
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "select"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v13, 0x1

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v6, "option,optgroup"

    .line 502
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v6, "option,optgroup,select"

    .line 503
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v6, "select"

    .line 504
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 506
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "option"

    sget-object v9, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v14, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 507
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v7, "option"

    .line 508
    invoke-virtual {v1, v7}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, v7, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 511
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v9, "optgroup"

    sget-object v10, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v13, 0x0

    const/4 v14, 0x1

    sget-object v15, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 512
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1, v7}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v6, "optgroup"

    .line 514
    invoke-virtual {v1, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v6, "optgroup"

    .line 515
    invoke-virtual {v0, v6, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 517
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v8, "button"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v11, 0x0

    sget-object v14, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 518
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "button"

    .line 519
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 521
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "label"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x0

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "label"

    .line 522
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 524
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v7, "legend"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 529
    invoke-virtual {v1, v5}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v4, "legend"

    .line 530
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 532
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "fieldset"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 533
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "fieldset"

    .line 535
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 537
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "isindex"

    sget-object v7, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x1

    sget-object v12, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 538
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "isindex"

    .line 540
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 542
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "script"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->HEAD_AND_BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "script"

    .line 543
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 545
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "noscript"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->HEAD_AND_BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "noscript"

    .line 546
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 548
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "b"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "u,i,tt,sub,sup,big,small,strike,blink,s"

    .line 549
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v4, "b"

    .line 550
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 552
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "i"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "b,u,tt,sub,sup,big,small,strike,blink,s"

    .line 553
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v4, "i"

    .line 554
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 556
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "u"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x1

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "b,i,tt,sub,sup,big,small,strike,blink,s"

    .line 557
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v4, "u"

    .line 558
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 560
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "tt"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "b,u,i,sub,sup,big,small,strike,blink,s"

    .line 561
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v4, "tt"

    .line 562
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 564
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "sub"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "b,u,i,tt,sup,big,small,strike,blink,s"

    .line 565
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v4, "sub"

    .line 566
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 568
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "sup"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "b,u,i,tt,sub,big,small,strike,blink,s"

    .line 569
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v4, "sup"

    .line 570
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 572
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "big"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "b,u,i,tt,sub,sup,small,strike,blink,s"

    .line 573
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v4, "big"

    .line 574
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 576
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "small"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "b,u,i,tt,sub,sup,big,strike,blink,s"

    .line 577
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v4, "small"

    .line 578
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 580
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "strike"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x1

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "b,u,i,tt,sub,sup,big,small,blink,s"

    .line 581
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v4, "strike"

    .line 582
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 584
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "blink"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "b,u,i,tt,sub,sup,big,small,strike,s"

    .line 585
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v4, "blink"

    .line 586
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 588
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "marquee"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 589
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "marquee"

    .line 591
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 593
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "s"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x1

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "b,u,i,tt,sub,sup,big,small,strike,blink"

    .line 594
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v4, "s"

    .line 595
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 597
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "hr"

    sget-object v7, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 598
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "hr"

    .line 600
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 602
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "font"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x1

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "font"

    .line 603
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 605
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "basefont"

    sget-object v7, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "basefont"

    .line 606
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 608
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "center"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 609
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "center"

    .line 611
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 613
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "comment"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "comment"

    .line 614
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 616
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "server"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "server"

    .line 617
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 619
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "iframe"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "iframe"

    .line 620
    invoke-virtual {v0, v4, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 622
    new-instance v1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "embed"

    sget-object v7, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 623
    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "embed"

    .line 625
    invoke-virtual {v0, v2, v1}, Lorg/htmlcleaner/DefaultTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method


# virtual methods
.method public getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 641
    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/DefaultTagProvider;->tagInfoMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/TagInfo;

    return-object p1
.end method

.method protected put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V
    .locals 1

    .line 633
    iget-object v0, p0, Lorg/htmlcleaner/DefaultTagProvider;->tagInfoMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
