.class public Lorg/htmlcleaner/Html4TagProvider;
.super Ljava/lang/Object;
.source "Html4TagProvider.java"

# interfaces
.implements Lorg/htmlcleaner/ITagInfoProvider;


# static fields
.field private static final CLOSE_BEFORE_COPY_INSIDE_TAGS:Ljava/lang/String; = "bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

.field private static final CLOSE_BEFORE_TAGS:Ljava/lang/String; = "p,details,summary,menuitem,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

.field public static final INSTANCE:Lorg/htmlcleaner/Html4TagProvider;

.field private static final PHRASING_TAGS:Ljava/lang/String; = "a,abbr,area,b,bdi,bdo,br,button,canvas,cite,code,command,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,link,map,mark,math,meta,meter,noscript,object,output,progress,q,s,samp,script,select,small,span,strong,sub,sup,svg,template,text,textarea,time,u,var,wbr"

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

    .line 48
    new-instance v0, Lorg/htmlcleaner/Html4TagProvider;

    invoke-direct {v0}, Lorg/htmlcleaner/Html4TagProvider;-><init>()V

    sput-object v0, Lorg/htmlcleaner/Html4TagProvider;->INSTANCE:Lorg/htmlcleaner/Html4TagProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/Html4TagProvider;->tagInfoMap:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html4TagProvider;->basicElements(Lorg/htmlcleaner/TagInfo;)V

    .line 62
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html4TagProvider;->formattingElements(Lorg/htmlcleaner/TagInfo;)V

    .line 63
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html4TagProvider;->formElements(Lorg/htmlcleaner/TagInfo;)V

    .line 64
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html4TagProvider;->imgElements(Lorg/htmlcleaner/TagInfo;)V

    .line 65
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html4TagProvider;->listElements(Lorg/htmlcleaner/TagInfo;)V

    .line 66
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html4TagProvider;->linkElements(Lorg/htmlcleaner/TagInfo;)V

    .line 67
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html4TagProvider;->tableElements(Lorg/htmlcleaner/TagInfo;)V

    .line 68
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html4TagProvider;->styleElements(Lorg/htmlcleaner/TagInfo;)V

    .line 69
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html4TagProvider;->olderElements(Lorg/htmlcleaner/TagInfo;)V

    .line 70
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html4TagProvider;->scriptElements(Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method


# virtual methods
.method public basicElements(Lorg/htmlcleaner/TagInfo;)V
    .locals 13

    .line 75
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "title"

    sget-object v2, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "title"

    .line 76
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 78
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "h1"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v5, 0x0

    const/4 v7, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    .line 79
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v1, "p,details,summary,menuitem,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 80
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "h1"

    .line 81
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 83
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "h2"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 84
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "h2"

    .line 86
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 88
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "h3"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 89
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "h3"

    .line 91
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 93
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "h4"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 94
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "h4"

    .line 96
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 98
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "h5"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 99
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "h5"

    .line 101
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 103
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "h6"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 104
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "h6"

    .line 106
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 109
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "p"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 110
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v2, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 111
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "p"

    .line 112
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 114
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "br"

    sget-object v6, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x0

    sget-object v11, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v3, "br"

    .line 115
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 117
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "hr"

    sget-object v6, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v11, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 118
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "hr"

    .line 120
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 122
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "div"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 123
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "div"

    .line 125
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public formElements(Lorg/htmlcleaner/TagInfo;)V
    .locals 13

    .line 261
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "form"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "form"

    .line 262
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    const-string v1, "bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    .line 263
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v2, "option,optgroup,textarea,select,fieldset,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 264
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 267
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "input"

    sget-object v5, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "select,optgroup,option"

    .line 268
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "input"

    .line 269
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 271
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "textarea"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 272
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "textarea"

    .line 273
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 275
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "select"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x1

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "option,optgroup"

    .line 276
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v2, "option,optgroup,select"

    .line 277
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "select"

    .line 278
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 280
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "option"

    sget-object v5, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 281
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v3, "option"

    .line 282
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 285
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "optgroup"

    sget-object v6, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x0

    const/4 v10, 0x1

    sget-object v11, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 286
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v2, "optgroup"

    .line 288
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 291
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "button"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 292
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "button"

    .line 293
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 295
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "label"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v6, 0x0

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "label"

    .line 296
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 298
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "legend"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "a,abbr,area,b,bdi,bdo,br,button,canvas,cite,code,command,data,datalist,del,dfn,em,embed,i,iframe,img,input,ins,kbd,keygen,label,link,map,mark,math,meta,meter,noscript,object,output,progress,q,s,samp,script,select,small,span,strong,sub,sup,svg,template,text,textarea,time,u,var,wbr"

    .line 303
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v0, "legend"

    .line 304
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 306
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "fieldset"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 307
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v0, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 308
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "fieldset"

    .line 309
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public formattingElements(Lorg/htmlcleaner/TagInfo;)V
    .locals 12

    .line 131
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "abbr"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "abbr"

    .line 132
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 134
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "acronym"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "acronym"

    .line 135
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 137
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "address"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    .line 138
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 139
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "address"

    .line 140
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 142
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "b"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "u,i,tt,sub,sup,big,small,strike,blink,s"

    .line 143
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v2, "b"

    .line 144
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 146
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "bdo"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "bdo"

    .line 147
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 150
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "blockquote"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 151
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "blockquote"

    .line 153
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 155
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "cite"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "cite"

    .line 156
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 158
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "q"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "q"

    .line 159
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 161
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "code"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "code"

    .line 162
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 164
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "ins"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "ins"

    .line 165
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 168
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "i"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "b,u,tt,sub,sup,big,small,strike,blink,s"

    .line 169
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v2, "i"

    .line 170
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 172
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "u"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x1

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "b,i,tt,sub,sup,big,small,strike,blink,s"

    .line 173
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v2, "u"

    .line 174
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 176
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "tt"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "b,u,i,sub,sup,big,small,strike,blink,s"

    .line 177
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v2, "tt"

    .line 178
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 180
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "sub"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "b,u,i,tt,sup,big,small,strike,blink,s"

    .line 181
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v2, "sub"

    .line 182
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 184
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "sup"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "b,u,i,tt,sub,big,small,strike,blink,s"

    .line 185
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v2, "sup"

    .line 186
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 188
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "big"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "b,u,i,tt,sub,sup,small,strike,blink,s"

    .line 189
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v2, "big"

    .line 190
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 192
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "small"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "b,u,i,tt,sub,sup,big,strike,blink,s"

    .line 193
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v2, "small"

    .line 194
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 196
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "strike"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x1

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "b,u,i,tt,sub,sup,big,small,blink,s"

    .line 197
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v2, "strike"

    .line 198
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 200
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "blink"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "b,u,i,tt,sub,sup,big,small,strike,s"

    .line 201
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v2, "blink"

    .line 202
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 204
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "marquee"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 205
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "marquee"

    .line 207
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 209
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "s"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x1

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "b,u,i,tt,sub,sup,big,small,strike,blink"

    .line 210
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v2, "s"

    .line 211
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 214
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "font"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "font"

    .line 215
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 217
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "basefont"

    sget-object v5, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "basefont"

    .line 218
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 220
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "center"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 221
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "center"

    .line 223
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 226
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "del"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "del"

    .line 227
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 229
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "dfn"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "dfn"

    .line 230
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 232
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "kbd"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "kbd"

    .line 233
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 235
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "pre"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 236
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "pre"

    .line 238
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 240
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "samp"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "samp"

    .line 241
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 243
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "strong"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "strong"

    .line 244
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 246
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "em"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "em"

    .line 247
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 249
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "var"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "var"

    .line 250
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 253
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "wbr"

    sget-object v3, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "wbr"

    .line 254
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 531
    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/Html4TagProvider;->tagInfoMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/TagInfo;

    return-object p1
.end method

.method public imgElements(Lorg/htmlcleaner/TagInfo;)V
    .locals 11

    .line 474
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "img"

    sget-object v2, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "img"

    .line 475
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 477
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "area"

    sget-object v3, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "map"

    .line 478
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v1, "area"

    .line 479
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 482
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "map"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v8, 0x0

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 483
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public linkElements(Lorg/htmlcleaner/TagInfo;)V
    .locals 10

    .line 359
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "link"

    sget-object v2, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "link"

    .line 360
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 362
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "a"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "a"

    .line 363
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public listElements(Lorg/htmlcleaner/TagInfo;)V
    .locals 13

    .line 316
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "ul"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    .line 317
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 318
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "ul"

    .line 319
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 321
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "ol"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 322
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "ol"

    .line 324
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 326
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "li"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 327
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v2, "li,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 328
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "li"

    .line 329
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 331
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "dl"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 332
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "dl"

    .line 334
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 336
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "dt"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "dt,dd"

    .line 337
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "dt"

    .line 338
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 340
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "dd"

    sget-object v6, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x0

    sget-object v11, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 341
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "dd"

    .line 342
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 344
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "menu"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x1

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 345
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "menu"

    .line 347
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 349
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "dir"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 350
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "dir"

    .line 352
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public olderElements(Lorg/htmlcleaner/TagInfo;)V
    .locals 12

    .line 490
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "listing"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    .line 491
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v1, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 492
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "listing"

    .line 493
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 495
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "nobr"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "nobr"

    .line 496
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 499
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "xmp"

    sget-object v5, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "xmp"

    .line 500
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 502
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "xml"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "xml"

    .line 503
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 505
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "isindex"

    sget-object v5, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x1

    sget-object v10, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 506
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "isindex"

    .line 508
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 510
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "comment"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "comment"

    .line 511
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 513
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "server"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "server"

    .line 514
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 516
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "iframe"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "iframe"

    .line 517
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method protected put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V
    .locals 1

    .line 523
    iget-object v0, p0, Lorg/htmlcleaner/Html4TagProvider;->tagInfoMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public scriptElements(Lorg/htmlcleaner/TagInfo;)V
    .locals 10

    .line 454
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "script"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->HEAD_AND_BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "script"

    .line 455
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 457
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "noscript"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->HEAD_AND_BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "noscript"

    .line 458
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 460
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "applet"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v5, 0x1

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "applet"

    .line 461
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 463
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "object"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v5, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "object"

    .line 464
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 466
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "param"

    sget-object v3, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    .line 467
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v0, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 468
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "param"

    .line 469
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public styleElements(Lorg/htmlcleaner/TagInfo;)V
    .locals 10

    .line 435
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "span"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "span"

    .line 436
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 438
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "style"

    sget-object v3, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "style"

    .line 439
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 441
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "bgsound"

    sget-object v3, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "bgsound"

    .line 442
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 444
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "meta"

    sget-object v3, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "meta"

    .line 445
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 447
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "base"

    sget-object v3, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "base"

    .line 448
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public tableElements(Lorg/htmlcleaner/TagInfo;)V
    .locals 24

    move-object/from16 v0, p0

    .line 370
    new-instance v10, Lorg/htmlcleaner/TagInfo;

    const-string v2, "table"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "tr,tbody,thead,tfoot,colgroup,caption"

    .line 371
    invoke-virtual {v10, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "bdo,strong,em,q,b,i,u,tt,sub,sup,big,small,strike,s,font"

    .line 372
    invoke-virtual {v10, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v1, "tr,thead,tbody,tfoot,caption,colgroup,table,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 373
    invoke-virtual {v10, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "table"

    .line 374
    invoke-virtual {v0, v1, v10}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 376
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v12, "tr"

    sget-object v13, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v14, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v18, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v19, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 377
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v3, "tbody"

    .line 378
    invoke-virtual {v2, v3}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v4, "td,th"

    .line 379
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v4, "thead,tfoot"

    .line 380
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineHigherLevelTags(Ljava/lang/String;)V

    const-string v4, "tr,td,th,caption,colgroup"

    .line 381
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "tr"

    .line 382
    invoke-virtual {v0, v4, v2}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 385
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v6, "td"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 386
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v5, "td,th,caption,colgroup"

    .line 388
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v6, "td"

    .line 389
    invoke-virtual {v0, v6, v2}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 391
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v8, "th"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 392
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "th"

    .line 395
    invoke-virtual {v0, v4, v2}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 397
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v6, "tbody"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 398
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v4, "tr,form"

    .line 399
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v5, "td,th,tr,tbody,thead,tfoot,caption,colgroup"

    .line 400
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, v3, v2}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 403
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v7, "thead"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v12, 0x0

    sget-object v13, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 404
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "thead"

    .line 407
    invoke-virtual {v0, v3, v2}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 409
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v7, "tfoot"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 410
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "tfoot"

    .line 413
    invoke-virtual {v0, v3, v2}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 415
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v7, "col"

    sget-object v8, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v3, "colgroup"

    .line 416
    invoke-virtual {v2, v3}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v4, "col"

    .line 417
    invoke-virtual {v0, v4, v2}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 419
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v7, "colgroup"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 420
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, v3, v2}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 425
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v16, "caption"

    sget-object v17, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v18, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget-object v22, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v23, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v15, v2

    invoke-direct/range {v15 .. v23}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 426
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "caption"

    .line 428
    invoke-virtual {v0, v1, v2}, Lorg/htmlcleaner/Html4TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method
