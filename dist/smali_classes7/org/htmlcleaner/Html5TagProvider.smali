.class public Lorg/htmlcleaner/Html5TagProvider;
.super Ljava/lang/Object;
.source "Html5TagProvider.java"

# interfaces
.implements Lorg/htmlcleaner/ITagInfoProvider;


# static fields
.field private static final CLOSE_BEFORE_COPY_INSIDE_TAGS:Ljava/lang/String; = "bdo,strong,em,q,b,i,sub,sup,small,s"

.field private static final CLOSE_BEFORE_TAGS:Ljava/lang/String; = "p,summary,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

.field private static final FLOW_TAGS:Ljava/lang/String; = "a,abbr,address,area,article,aside,audio,b,bdi,bdo,blockquote,br,button,canvas,cite,code,data,datalist,del,dfn,div,dl,em,embed,fieldset,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hr,i,iframe,img,input,ins,kbd,keygen,label,main,map,mark,math,meter,nav,noscript,object,ol,output,p,pre,progress,q,ruby,s,samp,script,section,select,small,span,strong,sub,sup,svg,table,template,textarea,time,u,ul,var,video,wbr,text"

.field public static final INSTANCE:Lorg/htmlcleaner/Html5TagProvider;

.field private static final MEDIA_TAGS:Ljava/lang/String; = "audio,video,object,source"

.field private static final PHRASING_TAGS:Ljava/lang/String; = "a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,command,datalist,del,dfn,em,i,input,ins,kbd,keygen,label,link,map,mark,meta,meter,noscript,output,progress,p,ruby,samp,s,script,select,small,span,strong,sub,sup,template,textarea,time,u,var,wbr"

.field private static final SCRIPT_SUPPORTING_TAGS:Ljava/lang/String; = "script,template"

.field private static final STRONG:Ljava/lang/String; = "strong"


# instance fields
.field public INSTANCE2:Lorg/htmlcleaner/MathMLTagProvider;

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
    new-instance v0, Lorg/htmlcleaner/Html5TagProvider;

    invoke-direct {v0}, Lorg/htmlcleaner/Html5TagProvider;-><init>()V

    sput-object v0, Lorg/htmlcleaner/Html5TagProvider;->INSTANCE:Lorg/htmlcleaner/Html5TagProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/Html5TagProvider;->tagInfoMap:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html5TagProvider;->embeddedContentTags(Lorg/htmlcleaner/TagInfo;)V

    .line 80
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html5TagProvider;->semanticFlowTags(Lorg/htmlcleaner/TagInfo;)V

    .line 81
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html5TagProvider;->interactiveTags(Lorg/htmlcleaner/TagInfo;)V

    .line 82
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html5TagProvider;->groupingTags(Lorg/htmlcleaner/TagInfo;)V

    .line 83
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html5TagProvider;->phrasingTags(Lorg/htmlcleaner/TagInfo;)V

    .line 84
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html5TagProvider;->mediaTags(Lorg/htmlcleaner/TagInfo;)V

    .line 85
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html5TagProvider;->editTags(Lorg/htmlcleaner/TagInfo;)V

    .line 86
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html5TagProvider;->formTags(Lorg/htmlcleaner/TagInfo;)V

    .line 87
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html5TagProvider;->tableTags(Lorg/htmlcleaner/TagInfo;)V

    .line 88
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html5TagProvider;->metadataTags(Lorg/htmlcleaner/TagInfo;)V

    .line 89
    invoke-virtual {p0, v0}, Lorg/htmlcleaner/Html5TagProvider;->scriptingTags(Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method


# virtual methods
.method public editTags(Lorg/htmlcleaner/TagInfo;)V
    .locals 10

    .line 630
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "ins"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "ins"

    .line 632
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 634
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "del"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "del"

    .line 636
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public embeddedContentTags(Lorg/htmlcleaner/TagInfo;)V
    .locals 11

    .line 96
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "svg"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "animate,animateMotion,animateTransform,discard,set,desc,title,metadata,linearGradient,radialGradient,pattern,circle,ellipse,line,path,polygon,polyline,rect,defs,g,svg,symbol,use,a,audio,canvas,clipPath,filter,foreignObject,iframe,image,marker,mask,script,style,switch,text,video,view"

    .line 98
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v0, "bdo,strong,em,q,b,i,sub,sup,small,s"

    .line 99
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v1, "p,summary,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 100
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "http://www.w3.org/2000/svg"

    .line 101
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->setAssumedNamespace(Ljava/lang/String;)V

    const-string v1, "svg"

    .line 102
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->setAssumedNamespacePrefix(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 106
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "math"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 108
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v0, "math,summary,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 109
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "http://www.w3.org/1998/Math/MathML"

    .line 115
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->setAssumedNamespace(Ljava/lang/String;)V

    const-string v0, "mathml"

    .line 116
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->setAssumedNamespacePrefix(Ljava/lang/String;)V

    const-string v0, "math"

    .line 118
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public formTags(Lorg/htmlcleaner/TagInfo;)V
    .locals 14

    .line 728
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "meter"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,command,datalist,del,dfn,em,i,input,ins,kbd,keygen,label,link,map,mark,meta,meter,noscript,output,progress,p,ruby,samp,s,script,select,small,span,strong,sub,sup,template,textarea,time,u,var,wbr"

    .line 730
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "meter"

    .line 731
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 734
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "form"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    const/4 v8, 0x1

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "form"

    .line 736
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    const-string v2, "bdo,strong,em,q,b,i,sub,sup,small,s"

    .line 737
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v3, "option,optgroup,textarea,select,fieldset,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 738
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 741
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "input"

    sget-object v6, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "select,optgroup,option"

    .line 743
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "input"

    .line 744
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 746
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "textarea"

    sget-object v6, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v11, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 748
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "textarea"

    .line 749
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 751
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "select"

    sget-object v6, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x1

    sget-object v11, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v3, "option,optgroup"

    .line 753
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v3, "option,optgroup,select"

    .line 754
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "select"

    .line 755
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 757
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "option"

    sget-object v6, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v11, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v4, "select,datalist"

    .line 759
    invoke-virtual {p1, v4}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v4, "option"

    .line 760
    invoke-virtual {p1, v4}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0, v4, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 763
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "optgroup"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x0

    const/4 v11, 0x1

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 765
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p1, v4}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v3, "optgroup"

    .line 767
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 770
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "button"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v11, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 772
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "button"

    .line 773
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 775
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "label"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "label"

    .line 777
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 779
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "legend"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "fieldset"

    .line 781
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v3, "legend"

    .line 783
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 785
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "fieldset"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 787
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v2, "p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 788
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 791
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "progress"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 793
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v0, "progress"

    .line 794
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 797
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "datalist"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 799
    invoke-virtual {p1, v4}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v0, "datalist"

    .line 800
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 803
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "keygen"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "keygen"

    .line 805
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 807
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "output"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "output,p,summary,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 809
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "output"

    .line 810
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 884
    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/Html5TagProvider;->tagInfoMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/TagInfo;

    return-object p1
.end method

.method public groupingTags(Lorg/htmlcleaner/TagInfo;)V
    .locals 20

    move-object/from16 v0, p0

    .line 279
    new-instance v10, Lorg/htmlcleaner/TagInfo;

    const-string v2, "div"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "bdo,strong,em,q,b,i,sub,sup,small,s"

    .line 281
    invoke-virtual {v10, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v2, "p,summary,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 282
    invoke-virtual {v10, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "div"

    .line 283
    invoke-virtual {v0, v3, v10}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 285
    new-instance v4, Lorg/htmlcleaner/TagInfo;

    const-string v12, "figure"

    sget-object v13, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v14, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v18, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v19, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v11, v4

    invoke-direct/range {v11 .. v19}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 287
    invoke-virtual {v4, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v4, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "figure"

    .line 289
    invoke-virtual {v0, v5, v4}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 291
    new-instance v4, Lorg/htmlcleaner/TagInfo;

    const-string v7, "figcaption"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 293
    invoke-virtual {v4, v5}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v5, "figcaption"

    .line 294
    invoke-virtual {v0, v5, v4}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 296
    new-instance v4, Lorg/htmlcleaner/TagInfo;

    const-string v7, "p"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 298
    invoke-virtual {v4, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v5, "p,address,summary,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml,time"

    .line 299
    invoke-virtual {v4, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "p"

    .line 300
    invoke-virtual {v0, v5, v4}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 302
    new-instance v4, Lorg/htmlcleaner/TagInfo;

    const-string v7, "pre"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 304
    invoke-virtual {v4, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v4, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "pre"

    .line 306
    invoke-virtual {v0, v5, v4}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 308
    new-instance v4, Lorg/htmlcleaner/TagInfo;

    const-string v7, "ul"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 310
    invoke-virtual {v4, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v5, "dl,p,summary,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 311
    invoke-virtual {v4, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v6, "li,ul,ol,div"

    .line 316
    invoke-virtual {v4, v6}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v7, "li"

    .line 321
    invoke-virtual {v4, v7}, Lorg/htmlcleaner/TagInfo;->setPreferredChildTag(Ljava/lang/String;)V

    const-string v8, "ul"

    .line 322
    invoke-virtual {v0, v8, v4}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 324
    new-instance v4, Lorg/htmlcleaner/TagInfo;

    const-string v10, "ol"

    sget-object v11, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v12, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v16, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v17, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v9, v4

    invoke-direct/range {v9 .. v17}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 326
    invoke-virtual {v4, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v4, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v4, v6}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v4, v7}, Lorg/htmlcleaner/TagInfo;->setPreferredChildTag(Ljava/lang/String;)V

    const-string v5, "ol"

    .line 338
    invoke-virtual {v0, v5, v4}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 340
    new-instance v4, Lorg/htmlcleaner/TagInfo;

    const-string v9, "li"

    sget-object v10, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v12, 0x0

    sget-object v15, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v8, v4

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 342
    invoke-virtual {v4, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v5, "li,p,summary,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 343
    invoke-virtual {v4, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "ol,menu,ul"

    .line 344
    invoke-virtual {v4, v5}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, v7, v4}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 347
    new-instance v4, Lorg/htmlcleaner/TagInfo;

    const-string v9, "dl"

    sget-object v10, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v15, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v8, v4

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 349
    invoke-virtual {v4, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v4, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "dt,dd,div,script,template"

    .line 351
    invoke-virtual {v4, v5}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v4, v3}, Lorg/htmlcleaner/TagInfo;->setPreferredChildTag(Ljava/lang/String;)V

    const-string v3, "dl"

    .line 353
    invoke-virtual {v0, v3, v4}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 355
    new-instance v4, Lorg/htmlcleaner/TagInfo;

    const-string v6, "dt"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, v4

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v5, "dt,dd"

    .line 357
    invoke-virtual {v4, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v6, "a,abbr,address,area,article,aside,audio,b,bdi,bdo,blockquote,br,button,canvas,cite,code,data,datalist,del,dfn,div,dl,em,embed,fieldset,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hr,i,iframe,img,input,ins,kbd,keygen,label,main,map,mark,math,meter,nav,noscript,object,ol,output,p,pre,progress,q,ruby,s,samp,script,section,select,small,span,strong,sub,sup,svg,table,template,textarea,time,u,ul,var,video,wbr,text"

    .line 358
    invoke-virtual {v4, v6}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v4, v3}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v7, "dt"

    .line 360
    invoke-virtual {v0, v7, v4}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 362
    new-instance v4, Lorg/htmlcleaner/TagInfo;

    const-string v9, "dd"

    sget-object v10, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v11, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v15, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v16, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v8, v4

    invoke-direct/range {v8 .. v16}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 364
    invoke-virtual {v4, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v4, v6}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v4, v3}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v3, "dd"

    .line 367
    invoke-virtual {v0, v3, v4}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 369
    new-instance v3, Lorg/htmlcleaner/TagInfo;

    const-string v6, "hr"

    sget-object v7, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 371
    invoke-virtual {v3, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v3, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "hr"

    .line 373
    invoke-virtual {v0, v4, v3}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 375
    new-instance v3, Lorg/htmlcleaner/TagInfo;

    const-string v6, "blockquote"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 377
    invoke-virtual {v3, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v3, v2}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "blockquote"

    .line 379
    invoke-virtual {v0, v1, v3}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public interactiveTags(Lorg/htmlcleaner/TagInfo;)V
    .locals 12

    .line 231
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "details"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "bdo,strong,em,q,b,i,sub,sup,small,s"

    .line 233
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v1, "p,summary,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 234
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "details"

    .line 235
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 237
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "summary"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 239
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v2, "summary"

    .line 242
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 245
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "command"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 247
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v2, "command"

    .line 248
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 252
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "menu"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 254
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "menuitem,li"

    .line 256
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v2, "menu"

    .line 257
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 259
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "menuitem"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 261
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v0, "menuitem"

    .line 264
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 266
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "dialog"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v6, 0x0

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 268
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "dialog"

    .line 269
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public mediaTags(Lorg/htmlcleaner/TagInfo;)V
    .locals 12

    .line 559
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

    .line 561
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 563
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "iframe"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "iframe"

    .line 565
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 567
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "embed"

    sget-object v3, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "bdo,strong,em,q,b,i,sub,sup,small,s"

    .line 569
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v1, "p,summary,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 570
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "embed"

    .line 571
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 573
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "object"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v2, "object"

    .line 575
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 577
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "param"

    sget-object v5, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 579
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v0, "param"

    .line 582
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 584
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "audio"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "audio,video,object,source"

    .line 586
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v1, "audio"

    .line 587
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 589
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "picture"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v8, 0x0

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 591
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v1, "picture"

    .line 592
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 594
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "video"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 596
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    const-string v1, "video"

    .line 597
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 599
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "source"

    sget-object v4, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "audio,video,object"

    .line 601
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v1, "source"

    .line 602
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 604
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "track"

    sget-object v4, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 606
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v0, "track"

    .line 607
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 609
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "canvas"

    sget-object v3, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v5, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "canvas"

    .line 611
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 613
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "area"

    sget-object v3, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "map"

    .line 615
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v1, "area"

    .line 616
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 619
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "map"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v8, 0x0

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 621
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public metadataTags(Lorg/htmlcleaner/TagInfo;)V
    .locals 10

    .line 820
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "meta"

    sget-object v2, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->HEAD_AND_BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "meta"

    .line 822
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 825
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "link"

    sget-object v3, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->HEAD_AND_BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "link"

    .line 827
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 829
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "title"

    sget-object v3, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    const/4 v6, 0x1

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "title"

    .line 831
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 835
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "style"

    sget-object v3, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->HEAD_AND_BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v6, 0x0

    sget-object v8, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "style"

    .line 837
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 839
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v2, "base"

    sget-object v3, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v4, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    sget-object v8, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v9, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "base"

    .line 841
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public phrasingTags(Lorg/htmlcleaner/TagInfo;)V
    .locals 12

    .line 387
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "em"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,command,datalist,del,dfn,em,i,input,ins,kbd,keygen,label,link,map,mark,meta,meter,noscript,output,progress,p,ruby,samp,s,script,select,small,span,strong,sub,sup,template,textarea,time,u,var,wbr"

    .line 389
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "em"

    .line 390
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 392
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "strong"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 394
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "strong"

    .line 395
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 397
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "small"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "b,u,i,sub,sup,blink,s"

    .line 399
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "small"

    .line 401
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 403
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "s"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "b,u,i,sub,sup,small,blink"

    .line 405
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "s"

    .line 407
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 409
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "a"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "a"

    .line 411
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 414
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "wbr"

    sget-object v4, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 416
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "wbr"

    .line 417
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 419
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mark"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 421
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "mark"

    .line 422
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 424
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "bdi"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 426
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "bdi"

    .line 427
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 429
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "time"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 431
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "time"

    .line 432
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 434
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "data"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "p,summary,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 436
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "data"

    .line 438
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 440
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "cite"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 442
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "cite"

    .line 443
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 445
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "q"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 447
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "q"

    .line 448
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 450
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "code"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 452
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "code"

    .line 453
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 455
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "span"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "span"

    .line 457
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 459
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "bdo"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 461
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "bdo"

    .line 462
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 464
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "dfn"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 466
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "dfn"

    .line 467
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 469
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "kbd"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 471
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "kbd"

    .line 472
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 474
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "abbr"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 476
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "abbr"

    .line 477
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 479
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "var"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 481
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "var"

    .line 482
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 484
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "samp"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 486
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "samp"

    .line 487
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 489
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "br"

    sget-object v4, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "br"

    .line 491
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 493
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "sub"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "b,u,i,sup,small,blink,s"

    .line 495
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "sub"

    .line 497
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 499
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "sup"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "b,u,i,sub,small,blink,s"

    .line 501
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "sup"

    .line 503
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 505
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "b"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "u,i,sub,sup,small,blink,s"

    .line 507
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "b"

    .line 509
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 511
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "i"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "b,u,sub,sup,small,blink,s"

    .line 513
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "i"

    .line 515
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 517
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "u"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v6, 0x1

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "b,i,sub,sup,small,blink,s"

    .line 519
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "u"

    .line 521
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 525
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "ruby"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v6, 0x0

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v1, "rt,rp,rb,rtc"

    .line 527
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "ruby"

    .line 528
    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 530
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "rtc"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 532
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v2, "rt,a,abbr,area,audio,b,bdi,bdo,br,button,canvas,cite,code,command,datalist,del,dfn,em,i,input,ins,kbd,keygen,label,link,map,mark,meta,meter,noscript,output,progress,p,ruby,samp,s,script,select,small,span,strong,sub,sup,template,textarea,time,u,var,wbr"

    .line 533
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v2, "rtc"

    .line 534
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 536
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "rb"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v9, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 538
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v2, "rb"

    .line 539
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 541
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "rt"

    sget-object v5, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 543
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v2, "rt"

    .line 545
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 547
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "rp"

    sget-object v5, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 549
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v0, "rp"

    .line 551
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method protected put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V
    .locals 1

    .line 868
    iget-object v0, p0, Lorg/htmlcleaner/Html5TagProvider;->tagInfoMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public scriptingTags(Lorg/htmlcleaner/TagInfo;)V
    .locals 10

    .line 848
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

    .line 851
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 853
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

    .line 856
    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public semanticFlowTags(Lorg/htmlcleaner/TagInfo;)V
    .locals 14

    .line 127
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "section"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "bdo,strong,em,q,b,i,sub,sup,small,s"

    .line 129
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v1, "p,summary,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 130
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "section"

    .line 131
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 133
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "nav"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 135
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "nav"

    .line 137
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 139
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v4, "article"

    sget-object v5, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v10, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v11, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 141
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v2, "menu"

    .line 143
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    const-string v3, "article"

    .line 144
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 146
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "aside"

    sget-object v6, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x0

    sget-object v11, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 148
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    const-string v2, "address"

    .line 151
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    const-string v3, "aside"

    .line 152
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 154
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "h1"

    sget-object v6, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v11, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 156
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v3, "p,summary,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml,h1,h2,h3,h4,h5,h6"

    .line 157
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "h1"

    .line 158
    invoke-virtual {p0, v4, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 160
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "h2"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v11, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 162
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "h2"

    .line 164
    invoke-virtual {p0, v4, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 166
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "h3"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 168
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "h3"

    .line 170
    invoke-virtual {p0, v4, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 172
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "h4"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 174
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "h4"

    .line 176
    invoke-virtual {p0, v4, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 178
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "h5"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 180
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "h5"

    .line 182
    invoke-virtual {p0, v4, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 184
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "h6"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 186
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "h6"

    .line 188
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 190
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "hgroup"

    sget-object v6, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v8, 0x0

    sget-object v11, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 192
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "h1,h2,h3,h4,h5,h6"

    .line 194
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v3, "hgroup"

    .line 195
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 198
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "header"

    sget-object v6, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v11, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 200
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "menu,header,footer"

    .line 202
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    const-string v4, "header"

    .line 203
    invoke-virtual {p0, v4, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 205
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v6, "footer"

    sget-object v7, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v8, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v11, 0x0

    sget-object v12, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v13, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 207
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1, v3}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    const-string v3, "footer"

    .line 210
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 212
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "main"

    sget-object v6, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v8, 0x0

    sget-object v11, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 214
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "main"

    .line 216
    invoke-virtual {p0, v3, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 218
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v5, "address"

    sget-object v6, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v7, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v11, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v12, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 220
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1, v2}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, v2, p1}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method

.method public tableTags(Lorg/htmlcleaner/TagInfo;)V
    .locals 24

    move-object/from16 v0, p0

    .line 644
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

    const-string v1, "tr,tbody,thead,tfoot,col,colgroup,caption"

    .line 646
    invoke-virtual {v10, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "bdo,strong,em,q,b,i,sub,sup,small,s"

    .line 647
    invoke-virtual {v10, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    const-string v1, "tr,thead,tbody,tfoot,caption,colgroup,table,p,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 648
    invoke-virtual {v10, v1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "table"

    .line 649
    invoke-virtual {v0, v1, v10}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 651
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

    .line 653
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v3, "tbody"

    .line 654
    invoke-virtual {v2, v3}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    const-string v4, "td,th"

    .line 655
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v4, "td"

    .line 660
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->setPreferredChildTag(Ljava/lang/String;)V

    const-string v5, "thead,tfoot"

    .line 661
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineHigherLevelTags(Ljava/lang/String;)V

    const-string v5, "tr,td,th,caption,colgroup"

    .line 662
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v5, "tr"

    .line 663
    invoke-virtual {v0, v5, v2}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 666
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v7, "td"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 668
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineHigherLevelTags(Ljava/lang/String;)V

    const-string v6, "td,th,caption,colgroup"

    .line 671
    invoke-virtual {v2, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0, v4, v2}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 674
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v8, "th"

    sget-object v9, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v10, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v13, 0x0

    sget-object v14, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v15, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 676
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v2, v6}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v4, "th"

    .line 679
    invoke-virtual {v0, v4, v2}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 681
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

    .line 683
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v4, "tr,form"

    .line 684
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v5, "td,th,tr,tbody,thead,tfoot,caption,colgroup"

    .line 685
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0, v3, v2}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 688
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v7, "thead"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v12, 0x0

    sget-object v13, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 690
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "thead"

    .line 693
    invoke-virtual {v0, v3, v2}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 695
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v7, "tfoot"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 697
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v3, "tfoot"

    .line 700
    invoke-virtual {v0, v3, v2}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 702
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v7, "col"

    sget-object v8, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->forbidden:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v3, "colgroup"

    .line 704
    invoke-virtual {v2, v3}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v4, "col"

    .line 705
    invoke-virtual {v0, v4, v2}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 707
    new-instance v2, Lorg/htmlcleaner/TagInfo;

    const-string v7, "colgroup"

    sget-object v8, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v9, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v13, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v14, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 709
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v2, v4}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0, v3, v2}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    .line 714
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

    .line 716
    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v2, v5}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "caption"

    .line 718
    invoke-virtual {v0, v1, v2}, Lorg/htmlcleaner/Html5TagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;)V

    return-void
.end method
