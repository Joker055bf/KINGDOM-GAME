.class public Lorg/htmlcleaner/MathMLTagProvider;
.super Ljava/lang/Object;
.source "MathMLTagProvider.java"


# static fields
.field private static final CLOSE_BEFORE_TAGS:Ljava/lang/String; = "menclose,mpadded,mphantom,mfenced,mstyle,merror,msqrt,mroot,maligngroup,malignmark,mlabeledtr,ms,mi,mo,mn,mfrac,mtext,mspace,mglyph,p,details,summary,menuitem,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"


# direct methods
.method public constructor <init>(Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/TagInfo;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/htmlcleaner/TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->presentationMarkup(Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method


# virtual methods
.method public getTagInfo(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)Lorg/htmlcleaner/TagInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/htmlcleaner/TagInfo;",
            ">;)",
            "Lorg/htmlcleaner/TagInfo;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 181
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/TagInfo;

    return-object p1
.end method

.method public layoutElements(Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/TagInfo;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/htmlcleaner/TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 64
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "mrow"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "menclose,mpadded,mphantom,mfenced,mstyle,merror,msqrt,mroot,maligngroup,malignmark,mlabeledtr,ms,mi,mo,mn,mfrac,mtext,mspace,mglyph,p,details,summary,menuitem,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 65
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mrow"

    .line 66
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 68
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mfrac"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 69
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mfrac"

    .line 70
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 72
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "msqrt"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 73
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "msqrt"

    .line 74
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 76
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mroot"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 77
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mroot"

    .line 78
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 80
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mstyle"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 81
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mstyle"

    .line 82
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 84
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "merror"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 85
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "merror"

    .line 86
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 88
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mpadded"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 89
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mpadded"

    .line 90
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 92
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mphantom"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 93
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mphantom"

    .line 94
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 96
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mfenced"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 97
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mfenced"

    .line 98
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 100
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "menclose"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 101
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "menclose"

    .line 102
    invoke-virtual {p0, v0, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method public presentationMarkup(Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/TagInfo;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/htmlcleaner/TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->tokenElements(Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->layoutElements(Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->scriptElements(Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->tableElements(Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 24
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "maction"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "menclose,mpadded,mphantom,mfenced,mstyle,merror,msqrt,mroot,maligngroup,malignmark,mlabeledtr,ms,mi,mo,mn,mfrac,mtext,mspace,mglyph,p,details,summary,menuitem,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 25
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "maction"

    .line 26
    invoke-virtual {p0, v0, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method protected put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/htmlcleaner/TagInfo;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/htmlcleaner/TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 174
    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public scriptElements(Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/TagInfo;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/htmlcleaner/TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 108
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "msub"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "menclose,mpadded,mphantom,mfenced,mstyle,merror,msqrt,mroot,maligngroup,malignmark,mlabeledtr,ms,mi,mo,mn,mfrac,mtext,mspace,mglyph,p,details,summary,menuitem,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 109
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "msub"

    .line 110
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 112
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "msup"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 113
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "msup"

    .line 114
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 116
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "msubsup"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 117
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "msubsup"

    .line 118
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 120
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "munder"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 121
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "munder"

    .line 122
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 124
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mover"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 125
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mover"

    .line 126
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 128
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "munderover"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 129
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "munderover"

    .line 130
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 132
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mmultiscripts"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 133
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "mmultiscripts"

    .line 134
    invoke-virtual {p0, v0, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method public tableElements(Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/TagInfo;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/htmlcleaner/TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 139
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "mtable"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "menclose,mpadded,mphantom,mfenced,mstyle,merror,msqrt,mroot,maligngroup,malignmark,mlabeledtr,ms,mi,mo,mn,mfrac,mtext,mspace,mglyph,p,details,summary,menuitem,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 140
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mtr,mtd,mo,mn,mlabeledtr"

    .line 141
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "mtable"

    .line 142
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 144
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mlabeledtr"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 145
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    const-string v1, "mlabeledtr"

    .line 148
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 150
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mtr"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 151
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mtd,mlabeledtr"

    .line 152
    invoke-virtual {p1, v1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    const-string v1, "mtr"

    .line 154
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 156
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mtd"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 157
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mtd"

    .line 160
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 162
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "maligngroup"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 163
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "maligngroup"

    .line 164
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 166
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "malignmark"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 167
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "malignmark"

    .line 168
    invoke-virtual {p0, v0, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method public tokenElements(Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/TagInfo;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/htmlcleaner/TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 32
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v1, "mi"

    sget-object v2, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v3, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v8, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    const-string v0, "menclose,mpadded,mphantom,mfenced,mstyle,merror,msqrt,mroot,maligngroup,malignmark,mlabeledtr,ms,mi,mo,mn,mfrac,mtext,mspace,mglyph,p,details,summary,menuitem,address,label,abbr,acronym,dfn,kbd,samp,var,cite,code,param,xml"

    .line 33
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mi"

    .line 34
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 36
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mn"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 37
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mn"

    .line 38
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 40
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mo"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->inline:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 41
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mo"

    .line 42
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 44
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mtext"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 45
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mtext"

    .line 46
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 48
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mspace"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 49
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "mspace"

    .line 50
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 52
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "ms"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 53
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v1, "ms"

    .line 54
    invoke-virtual {p0, v1, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    .line 56
    new-instance p1, Lorg/htmlcleaner/TagInfo;

    const-string v3, "mglyph"

    sget-object v4, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    sget-object v5, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    sget-object v9, Lorg/htmlcleaner/CloseTag;->optional:Lorg/htmlcleaner/CloseTag;

    sget-object v10, Lorg/htmlcleaner/Display;->block:Lorg/htmlcleaner/Display;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    .line 57
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    const-string v0, "mglyph"

    .line 58
    invoke-virtual {p0, v0, p1, p2}, Lorg/htmlcleaner/MathMLTagProvider;->put(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method
