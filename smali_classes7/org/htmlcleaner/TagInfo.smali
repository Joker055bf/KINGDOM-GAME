.class public Lorg/htmlcleaner/TagInfo;
.super Ljava/lang/Object;
.source "TagInfo.java"


# instance fields
.field private assumedNamespace:Ljava/lang/String;

.field private assumedNamespacePrefix:Ljava/lang/String;

.field private belongsTo:Lorg/htmlcleaner/BelongsTo;

.field private childTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private closeTag:Lorg/htmlcleaner/CloseTag;

.field private contentType:Lorg/htmlcleaner/ContentType;

.field private continueAfterTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private copyTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deprecated:Z

.field private display:Lorg/htmlcleaner/Display;

.field private fatalTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private higherTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mustCloseTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private permittedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredChildTag:Ljava/lang/String;

.field private requiredParentTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unique:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lorg/htmlcleaner/TagInfo;->mustCloseTags:Ljava/util/Set;

    .line 130
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    .line 131
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    .line 132
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    .line 133
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lorg/htmlcleaner/TagInfo;->copyTags:Ljava/util/Set;

    .line 134
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lorg/htmlcleaner/TagInfo;->continueAfterTags:Ljava/util/Set;

    .line 135
    sget-object p6, Lorg/htmlcleaner/BelongsTo;->BODY:Lorg/htmlcleaner/BelongsTo;

    iput-object p6, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:Lorg/htmlcleaner/BelongsTo;

    .line 136
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lorg/htmlcleaner/TagInfo;->requiredParentTags:Ljava/util/Set;

    .line 137
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lorg/htmlcleaner/TagInfo;->fatalTags:Ljava/util/Set;

    const/4 p6, 0x0

    .line 138
    iput-object p6, p0, Lorg/htmlcleaner/TagInfo;->preferredChildTag:Ljava/lang/String;

    .line 139
    iput-object p6, p0, Lorg/htmlcleaner/TagInfo;->assumedNamespace:Ljava/lang/String;

    .line 140
    iput-object p6, p0, Lorg/htmlcleaner/TagInfo;->assumedNamespacePrefix:Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->name:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lorg/htmlcleaner/TagInfo;->contentType:Lorg/htmlcleaner/ContentType;

    .line 149
    iput-object p3, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:Lorg/htmlcleaner/BelongsTo;

    .line 150
    iput-boolean p4, p0, Lorg/htmlcleaner/TagInfo;->deprecated:Z

    .line 151
    iput-boolean p5, p0, Lorg/htmlcleaner/TagInfo;->unique:Z

    .line 152
    iput-object p7, p0, Lorg/htmlcleaner/TagInfo;->closeTag:Lorg/htmlcleaner/CloseTag;

    .line 153
    iput-object p8, p0, Lorg/htmlcleaner/TagInfo;->display:Lorg/htmlcleaner/Display;

    return-void
.end method


# virtual methods
.method allowsAnything()Z
    .locals 2

    .line 429
    sget-object v0, Lorg/htmlcleaner/ContentType;->all:Lorg/htmlcleaner/ContentType;

    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->contentType:Lorg/htmlcleaner/ContentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method allowsBody()Z
    .locals 2

    .line 348
    sget-object v0, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->contentType:Lorg/htmlcleaner/ContentType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method allowsItem(Lorg/htmlcleaner/BaseToken;)Z
    .locals 3

    .line 393
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->contentType:Lorg/htmlcleaner/ContentType;

    sget-object v1, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lorg/htmlcleaner/TagToken;

    if-eqz v0, :cond_0

    .line 394
    move-object v0, p1

    check-cast v0, Lorg/htmlcleaner/TagToken;

    .line 395
    invoke-virtual {v0}, Lorg/htmlcleaner/TagToken;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "script"

    .line 396
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 401
    :cond_0
    sget-object v0, Lorg/htmlcleaner/TagInfo$1;->$SwitchMap$org$htmlcleaner$ContentType:[I

    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->contentType:Lorg/htmlcleaner/ContentType;

    invoke-virtual {v1}, Lorg/htmlcleaner/ContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 416
    :cond_1
    instance-of v0, p1, Lorg/htmlcleaner/ContentNode;

    if-eqz v0, :cond_2

    .line 418
    check-cast p1, Lorg/htmlcleaner/ContentNode;

    invoke-virtual {p1}, Lorg/htmlcleaner/ContentNode;->isBlank()Z

    move-result p1

    return p1

    .line 419
    :cond_2
    instance-of p1, p1, Lorg/htmlcleaner/TagToken;

    if-nez p1, :cond_3

    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 414
    :cond_4
    instance-of p1, p1, Lorg/htmlcleaner/TagToken;

    xor-int/2addr p1, v2

    return p1

    .line 403
    :cond_5
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 404
    instance-of v0, p1, Lorg/htmlcleaner/TagToken;

    if-eqz v0, :cond_7

    .line 405
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    check-cast p1, Lorg/htmlcleaner/TagToken;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagToken;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 407
    :cond_6
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 408
    instance-of v0, p1, Lorg/htmlcleaner/TagToken;

    if-eqz v0, :cond_7

    .line 409
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    check-cast p1, Lorg/htmlcleaner/TagToken;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagToken;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_7
    return v2
.end method

.method public defineAllowedChildrenTags(Ljava/lang/String;)V
    .locals 2

    .line 183
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 186
    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V
    .locals 2

    .line 199
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 202
    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->copyTags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->mustCloseTags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public defineCloseBeforeTags(Ljava/lang/String;)V
    .locals 2

    .line 216
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 219
    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->mustCloseTags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public defineCloseInsideCopyAfterTags(Ljava/lang/String;)V
    .locals 2

    .line 208
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 211
    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->continueAfterTags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public defineFatalTags(Ljava/lang/String;)V
    .locals 2

    .line 157
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 160
    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->fatalTags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public defineForbiddenTags(Ljava/lang/String;)V
    .locals 2

    .line 175
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 178
    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public defineHigherLevelTags(Ljava/lang/String;)V
    .locals 2

    .line 191
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 194
    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public defineRequiredEnclosingTags(Ljava/lang/String;)V
    .locals 2

    .line 166
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 169
    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->requiredParentTags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAssumedNamespace()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->assumedNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getAssumedNamespacePrefix()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->assumedNamespacePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getBelongsTo()Lorg/htmlcleaner/BelongsTo;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:Lorg/htmlcleaner/BelongsTo;

    return-object v0
.end method

.method public getChildTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    return-object v0
.end method

.method public getContentType()Lorg/htmlcleaner/ContentType;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->contentType:Lorg/htmlcleaner/ContentType;

    return-object v0
.end method

.method public getContinueAfterTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->continueAfterTags:Ljava/util/Set;

    return-object v0
.end method

.method public getCopyTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->copyTags:Ljava/util/Set;

    return-object v0
.end method

.method public getDisplay()Lorg/htmlcleaner/Display;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->display:Lorg/htmlcleaner/Display;

    return-object v0
.end method

.method public getFatalTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->fatalTags:Ljava/util/Set;

    return-object v0
.end method

.method public getHigherTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    return-object v0
.end method

.method public getMustCloseTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->mustCloseTags:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPermittedTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    return-object v0
.end method

.method public getPreferredChildTag()Ljava/lang/String;
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->preferredChildTag:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredParentTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->requiredParentTags:Ljava/util/Set;

    return-object v0
.end method

.method hasCopyTags()Z
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->copyTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method hasPermittedTags()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isContinueAfter(Ljava/lang/String;)Z
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->continueAfterTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isCopy(Ljava/lang/String;)Z
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->copyTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isDeprecated()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lorg/htmlcleaner/TagInfo;->deprecated:Z

    return v0
.end method

.method public isEmptyTag()Z
    .locals 2

    .line 342
    sget-object v0, Lorg/htmlcleaner/ContentType;->none:Lorg/htmlcleaner/ContentType;

    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->contentType:Lorg/htmlcleaner/ContentType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFatalTag(Ljava/lang/String;)Z
    .locals 2

    .line 315
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->fatalTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 316
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method isHeadAndBodyTag()Z
    .locals 2

    .line 376
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:Lorg/htmlcleaner/BelongsTo;

    sget-object v1, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:Lorg/htmlcleaner/BelongsTo;

    sget-object v1, Lorg/htmlcleaner/BelongsTo;->HEAD_AND_BODY:Lorg/htmlcleaner/BelongsTo;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isHeadTag()Z
    .locals 2

    .line 372
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:Lorg/htmlcleaner/BelongsTo;

    sget-object v1, Lorg/htmlcleaner/BelongsTo;->HEAD:Lorg/htmlcleaner/BelongsTo;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isHigher(Ljava/lang/String;)Z
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMinimizedTagPermitted()Z
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->closeTag:Lorg/htmlcleaner/CloseTag;

    invoke-virtual {v0}, Lorg/htmlcleaner/CloseTag;->isMinimizedTagPermitted()Z

    move-result v0

    return v0
.end method

.method isMustCloseTag(Lorg/htmlcleaner/TagInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 381
    iget-object v1, p0, Lorg/htmlcleaner/TagInfo;->mustCloseTags:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Lorg/htmlcleaner/TagInfo;->contentType:Lorg/htmlcleaner/ContentType;

    sget-object v1, Lorg/htmlcleaner/ContentType;->text:Lorg/htmlcleaner/ContentType;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isUnique()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lorg/htmlcleaner/TagInfo;->unique:Z

    return v0
.end method

.method public setAssumedNamespace(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->assumedNamespace:Ljava/lang/String;

    return-void
.end method

.method public setAssumedNamespacePrefix(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->assumedNamespacePrefix:Ljava/lang/String;

    return-void
.end method

.method public setBelongsTo(Lorg/htmlcleaner/BelongsTo;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->belongsTo:Lorg/htmlcleaner/BelongsTo;

    return-void
.end method

.method public setChildTags(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->childTags:Ljava/util/Set;

    return-void
.end method

.method public setContinueAfterTags(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->continueAfterTags:Ljava/util/Set;

    return-void
.end method

.method public setCopyTags(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->copyTags:Ljava/util/Set;

    return-void
.end method

.method public setDeprecated(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lorg/htmlcleaner/TagInfo;->deprecated:Z

    return-void
.end method

.method public setDisplay(Lorg/htmlcleaner/Display;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->display:Lorg/htmlcleaner/Display;

    return-void
.end method

.method public setFatalTag(Ljava/lang/String;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->fatalTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHigherTags(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->higherTags:Ljava/util/Set;

    return-void
.end method

.method public setMustCloseTags(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->mustCloseTags:Ljava/util/Set;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPermittedTags(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->permittedTags:Ljava/util/Set;

    return-void
.end method

.method public setPreferredChildTag(Ljava/lang/String;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lorg/htmlcleaner/TagInfo;->preferredChildTag:Ljava/lang/String;

    return-void
.end method

.method public setRequiredParent(Ljava/lang/String;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/htmlcleaner/TagInfo;->requiredParentTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setUnique(Z)V
    .locals 0

    .line 338
    iput-boolean p1, p0, Lorg/htmlcleaner/TagInfo;->unique:Z

    return-void
.end method
