.class public Lorg/htmlcleaner/HtmlCleaner;
.super Ljava/lang/Object;
.source "HtmlCleaner.java"


# static fields
.field public static HTML_4:I = 0x4

.field public static HTML_5:I = 0x5

.field private static final MARKER_ATTRIBUTE:Ljava/lang/String; = "htmlcleaner_marker"


# instance fields
.field private properties:Lorg/htmlcleaner/CleanerProperties;

.field private transformations:Lorg/htmlcleaner/CleanerTransformations;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, v0, v0}, Lorg/htmlcleaner/HtmlCleaner;-><init>(Lorg/htmlcleaner/ITagInfoProvider;Lorg/htmlcleaner/CleanerProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/CleanerProperties;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, v0, p1}, Lorg/htmlcleaner/HtmlCleaner;-><init>(Lorg/htmlcleaner/ITagInfoProvider;Lorg/htmlcleaner/CleanerProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/ITagInfoProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/HtmlCleaner;-><init>(Lorg/htmlcleaner/ITagInfoProvider;Lorg/htmlcleaner/CleanerProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/ITagInfoProvider;Lorg/htmlcleaner/CleanerProperties;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 155
    new-instance p2, Lorg/htmlcleaner/CleanerProperties;

    invoke-direct {p2}, Lorg/htmlcleaner/CleanerProperties;-><init>()V

    :cond_0
    iput-object p2, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    if-nez p1, :cond_2

    .line 161
    invoke-virtual {p2}, Lorg/htmlcleaner/CleanerProperties;->getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;

    move-result-object p2

    if-nez p2, :cond_2

    .line 162
    iget-object p1, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {p1}, Lorg/htmlcleaner/CleanerProperties;->getHtmlVersion()I

    move-result p1

    sget p2, Lorg/htmlcleaner/HtmlCleaner;->HTML_4:I

    if-ne p1, p2, :cond_1

    .line 163
    iget-object p1, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    sget-object p2, Lorg/htmlcleaner/Html4TagProvider;->INSTANCE:Lorg/htmlcleaner/Html4TagProvider;

    invoke-virtual {p1, p2}, Lorg/htmlcleaner/CleanerProperties;->setTagInfoProvider(Lorg/htmlcleaner/ITagInfoProvider;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object p1, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    sget-object p2, Lorg/htmlcleaner/Html5TagProvider;->INSTANCE:Lorg/htmlcleaner/Html5TagProvider;

    invoke-virtual {p1, p2}, Lorg/htmlcleaner/CleanerProperties;->setTagInfoProvider(Lorg/htmlcleaner/ITagInfoProvider;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    .line 168
    iget-object p2, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    if-nez p1, :cond_3

    sget-object p1, Lorg/htmlcleaner/Html4TagProvider;->INSTANCE:Lorg/htmlcleaner/Html4TagProvider;

    :cond_3
    invoke-virtual {p2, p1}, Lorg/htmlcleaner/CleanerProperties;->setTagInfoProvider(Lorg/htmlcleaner/ITagInfoProvider;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private addAttributesToTag(Lorg/htmlcleaner/TagNode;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/TagNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 415
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 416
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 417
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 418
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 419
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 420
    invoke-virtual {p1, v2, v1}, Lorg/htmlcleaner/TagNode;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addIfNeededToPruneSet(Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/CleanTimeValues;)Z
    .locals 4

    .line 1338
    iget-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->pruneTagSet:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->pruneTagSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlcleaner/conditional/ITagNodeCondition;

    .line 1340
    invoke-interface {v2, p1}, Lorg/htmlcleaner/conditional/ITagNodeCondition;->satisfy(Lorg/htmlcleaner/TagNode;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1341
    invoke-virtual {p0, p1, p2}, Lorg/htmlcleaner/HtmlCleaner;->addPruneNode(Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/CleanTimeValues;)V

    .line 1342
    iget-object p2, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {p2, v2, p1}, Lorg/htmlcleaner/CleanerProperties;->fireConditionModification(Lorg/htmlcleaner/conditional/ITagNodeCondition;Lorg/htmlcleaner/TagNode;)V

    return v1

    .line 1348
    :cond_1
    iget-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->allowTagSet:Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->allowTagSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1349
    iget-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->allowTagSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/htmlcleaner/conditional/ITagNodeCondition;

    .line 1350
    invoke-interface {v3, p1}, Lorg/htmlcleaner/conditional/ITagNodeCondition;->satisfy(Lorg/htmlcleaner/TagNode;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 1354
    :cond_3
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->isAutoGenerated()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1355
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    sget-object v2, Lorg/htmlcleaner/audit/ErrorType;->NotAllowedTag:Lorg/htmlcleaner/audit/ErrorType;

    invoke-virtual {v0, v1, p1, v2}, Lorg/htmlcleaner/CleanerProperties;->fireUserDefinedModification(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V

    .line 1357
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/htmlcleaner/HtmlCleaner;->addPruneNode(Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/CleanTimeValues;)V

    return v1

    :cond_5
    return v2
.end method

.method private addPossibleHeadCandidate(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/CleanTimeValues;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1287
    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->isHeadTag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->isHeadAndBodyTag()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p3, Lorg/htmlcleaner/CleanTimeValues;->_headOpened:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p3, Lorg/htmlcleaner/CleanTimeValues;->_bodyOpened:Z

    if-nez p1, :cond_1

    .line 1288
    :cond_0
    iget-object p1, p3, Lorg/htmlcleaner/CleanTimeValues;->_headTags:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static areCopiedTokensEqual(Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/TagNode;)Z
    .locals 2

    .line 1106
    iget-object v0, p0, Lorg/htmlcleaner/TagNode;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/htmlcleaner/TagNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {p0}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private calculateRootNode(Lorg/htmlcleaner/CleanTimeValues;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/CleanTimeValues;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 351
    iget-object v0, p1, Lorg/htmlcleaner/CleanTimeValues;->htmlNode:Lorg/htmlcleaner/TagNode;

    iput-object v0, p1, Lorg/htmlcleaner/CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    .line 352
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isOmitHtmlEnvelope()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p1, Lorg/htmlcleaner/CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v0}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v0

    .line 354
    new-instance v1, Lorg/htmlcleaner/TagNode;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/htmlcleaner/TagNode;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Lorg/htmlcleaner/CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    if-eqz v0, :cond_0

    .line 356
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 358
    iget-object v2, p1, Lorg/htmlcleaner/CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v2, v1}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p1, Lorg/htmlcleaner/CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v0}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 368
    iget-object v1, p1, Lorg/htmlcleaner/CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    const-string v2, "xmlns"

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagNode;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p1, Lorg/htmlcleaner/CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    iget-object v4, p1, Lorg/htmlcleaner/CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v4, v2}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/htmlcleaner/TagNode;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_1
    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    .line 379
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 380
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 381
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 382
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-void

    .line 385
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 386
    iget-object v2, p1, Lorg/htmlcleaner/CleanTimeValues;->namespaceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "xmlns:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "xml"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "svg"

    .line 392
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 393
    iget-object v1, p1, Lorg/htmlcleaner/CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    const-string v4, "http://www.w3.org/2000/svg"

    invoke-virtual {v1, v2, v4}, Lorg/htmlcleaner/TagNode;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v4, "xlink"

    .line 394
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 395
    iget-object v1, p1, Lorg/htmlcleaner/CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    const-string v4, "http://www.w3.org/1999/xlink"

    invoke-virtual {v1, v2, v4}, Lorg/htmlcleaner/TagNode;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 397
    :cond_5
    iget-object v4, p1, Lorg/htmlcleaner/CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v4, v2, v1}, Lorg/htmlcleaner/TagNode;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method private closeAll(Ljava/util/List;Lorg/htmlcleaner/CleanTimeValues;)V
    .locals 6

    .line 1267
    invoke-direct {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlcleaner/OpenTags;->findFirstTagPos()Lorg/htmlcleaner/TagPos;

    move-result-object v0

    .line 1268
    invoke-direct {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v1

    iget-object v1, v1, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlcleaner/TagPos;

    .line 1269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1270
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-void

    .line 1273
    :cond_0
    iget-object v3, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    iget v2, v2, Lorg/htmlcleaner/TagPos;->position:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlcleaner/TagNode;

    sget-object v4, Lorg/htmlcleaner/audit/ErrorType;->UnclosedTag:Lorg/htmlcleaner/audit/ErrorType;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2, v4}, Lorg/htmlcleaner/CleanerProperties;->fireHtmlError(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1276
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/htmlcleaner/HtmlCleaner;->closeSnippet(Ljava/util/List;Lorg/htmlcleaner/TagPos;Ljava/lang/Object;Lorg/htmlcleaner/CleanTimeValues;)Ljava/util/List;

    :cond_2
    return-void
.end method

.method private closeSnippet(Ljava/util/List;Lorg/htmlcleaner/TagPos;Ljava/lang/Object;Lorg/htmlcleaner/CleanTimeValues;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Lorg/htmlcleaner/TagPos;",
            "Ljava/lang/Object;",
            "Lorg/htmlcleaner/CleanTimeValues;",
            ")",
            "Ljava/util/List<",
            "Lorg/htmlcleaner/TagNode;",
            ">;"
        }
    .end annotation

    .line 1191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    iget p2, p2, Lorg/htmlcleaner/TagPos;->position:I

    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    .line 1196
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 1198
    invoke-direct {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->isStartToken(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1199
    move-object v1, p2

    check-cast v1, Lorg/htmlcleaner/TagNode;

    .line 1200
    invoke-virtual {v1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1201
    invoke-virtual {v1}, Lorg/htmlcleaner/TagInfo;->getAssumedNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    :goto_1
    if-nez p3, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    if-eqz p3, :cond_a

    if-eq p2, p3, :cond_a

    .line 1209
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1211
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-object v0

    .line 1214
    :cond_3
    invoke-direct {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->isStartToken(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1215
    move-object v7, p2

    check-cast v7, Lorg/htmlcleaner/TagNode;

    .line 1216
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1217
    invoke-virtual {v7}, Lorg/htmlcleaner/TagNode;->getItemsToMove()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1219
    invoke-direct {p0, p4}, Lorg/htmlcleaner/HtmlCleaner;->pushNesting(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/NestingState;

    .line 1220
    invoke-interface {v8, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v9

    invoke-virtual {p0, v8, v9, p4}, Lorg/htmlcleaner/HtmlCleaner;->makeTree(Ljava/util/List;Ljava/util/ListIterator;Lorg/htmlcleaner/CleanTimeValues;)V

    .line 1221
    invoke-direct {p0, v8, p4}, Lorg/htmlcleaner/HtmlCleaner;->closeAll(Ljava/util/List;Lorg/htmlcleaner/CleanTimeValues;)V

    .line 1222
    invoke-virtual {v7, v4}, Lorg/htmlcleaner/TagNode;->setItemsToMove(Ljava/util/List;)V

    .line 1223
    invoke-direct {p0, p4}, Lorg/htmlcleaner/HtmlCleaner;->popNesting(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/NestingState;

    .line 1226
    :cond_4
    invoke-direct {p0, v7}, Lorg/htmlcleaner/HtmlCleaner;->createTagNode(Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;

    move-result-object v7

    .line 1227
    invoke-virtual {v7}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, p4}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object v9

    .line 1228
    invoke-direct {p0, v9, v7, p4}, Lorg/htmlcleaner/HtmlCleaner;->addPossibleHeadCandidate(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/CleanTimeValues;)V

    if-eqz v6, :cond_5

    .line 1230
    invoke-virtual {v6, v8}, Lorg/htmlcleaner/TagNode;->addChildren(Ljava/util/List;)V

    .line 1231
    invoke-virtual {v6, v7}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    .line 1232
    invoke-interface {p1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-eqz v8, :cond_6

    .line 1235
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    invoke-interface {p1, v8}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_2

    .line 1238
    :cond_6
    invoke-interface {p1, v7}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 1242
    :goto_2
    invoke-direct {p0, p4}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v6

    invoke-virtual {v7}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/htmlcleaner/OpenTags;->removeTag(Ljava/lang/String;)V

    move-object v6, v7

    goto :goto_3

    :cond_7
    if-eqz v6, :cond_8

    .line 1246
    invoke-interface {p1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    if-eqz p2, :cond_8

    .line 1248
    invoke-virtual {v6, p2}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    .line 1253
    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1254
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_1

    :cond_9
    move v5, v2

    goto/16 :goto_1

    :cond_a
    if-eqz v1, :cond_b

    .line 1259
    iget-object p1, p4, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p4, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_b
    return-object v0
.end method

.method private createDocumentNodes(Ljava/util/List;Lorg/htmlcleaner/CleanTimeValues;)V
    .locals 4

    .line 1130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1131
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1140
    :cond_1
    instance-of v2, v0, Lorg/htmlcleaner/TagNode;

    if-eqz v2, :cond_2

    .line 1141
    move-object v2, v0

    check-cast v2, Lorg/htmlcleaner/TagNode;

    .line 1142
    invoke-virtual {v2}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object v3

    .line 1144
    invoke-direct {p0, v3, v2, p2}, Lorg/htmlcleaner/HtmlCleaner;->addPossibleHeadCandidate(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/CleanTimeValues;)V

    goto :goto_1

    .line 1146
    :cond_2
    instance-of v2, v0, Lorg/htmlcleaner/ContentNode;

    if-eqz v2, :cond_3

    const-string v2, ""

    .line 1147
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 1152
    iget-object v1, p2, Lorg/htmlcleaner/CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v1, v0}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    goto :goto_0

    .line 1157
    :cond_4
    iget-object p1, p2, Lorg/htmlcleaner/CleanTimeValues;->_headTags:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1158
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1160
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-void

    .line 1163
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/TagNode;

    .line 1166
    invoke-virtual {v0}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_8

    .line 1169
    iget-object v3, p2, Lorg/htmlcleaner/CleanTimeValues;->_headTags:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    goto :goto_4

    .line 1173
    :cond_7
    invoke-virtual {v2}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v2

    goto :goto_3

    :cond_8
    move v2, v1

    :goto_4
    if-eqz v2, :cond_5

    .line 1177
    invoke-virtual {v0}, Lorg/htmlcleaner/TagNode;->removeFromTree()Z

    .line 1178
    iget-object v2, p2, Lorg/htmlcleaner/CleanTimeValues;->headNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v2, v0}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    return-void
.end method

.method private createTagNode(Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;
    .locals 0

    .line 511
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->setFormed()V

    return-object p1
.end method

.method private flattenNestedList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")",
            "Ljava/util/List<",
            "Lorg/htmlcleaner/TagNode;",
            ">;"
        }
    .end annotation

    .line 1089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1091
    instance-of v2, v1, Lorg/htmlcleaner/TagNode;

    if-eqz v2, :cond_1

    .line 1092
    check-cast v1, Lorg/htmlcleaner/TagNode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1094
    :cond_1
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1095
    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getChildBreaks(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/ChildBreaks;
    .locals 0

    .line 1436
    iget-object p1, p1, Lorg/htmlcleaner/CleanTimeValues;->nestingStates:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/NestingState;

    invoke-virtual {p1}, Lorg/htmlcleaner/NestingState;->getChildBreaks()Lorg/htmlcleaner/ChildBreaks;

    move-result-object p1

    return-object p1
.end method

.method private getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;
    .locals 0

    .line 1432
    iget-object p1, p1, Lorg/htmlcleaner/CleanTimeValues;->nestingStates:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/NestingState;

    invoke-virtual {p1}, Lorg/htmlcleaner/NestingState;->getOpenTags()Lorg/htmlcleaner/OpenTags;

    move-result-object p1

    return-object p1
.end method

.method private handleEndTagToken(Lorg/htmlcleaner/BaseToken;Ljava/util/ListIterator;Ljava/util/List;Lorg/htmlcleaner/CleanTimeValues;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/BaseToken;",
            "Ljava/util/ListIterator<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;",
            "Ljava/util/List;",
            "Lorg/htmlcleaner/CleanTimeValues;",
            ")V"
        }
    .end annotation

    .line 573
    check-cast p1, Lorg/htmlcleaner/EndTagToken;

    .line 574
    iget-object v0, p1, Lorg/htmlcleaner/EndTagToken;->name:Ljava/lang/String;

    .line 575
    invoke-virtual {p0, v0, p4}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 582
    invoke-virtual {v1}, Lorg/htmlcleaner/TagInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 585
    iget-object v3, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isOmitUnknownTags()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, p4}, Lorg/htmlcleaner/HtmlCleaner;->isAllowedAsForeignMarkup(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/htmlcleaner/TagInfo;->isDeprecated()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v3}, Lorg/htmlcleaner/CleanerProperties;->isOmitDeprecatedTags()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 587
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    if-eqz v1, :cond_4

    .line 588
    invoke-virtual {v1}, Lorg/htmlcleaner/TagInfo;->allowsBody()Z

    move-result v3

    if-nez v3, :cond_4

    .line 590
    invoke-interface {p2, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 593
    :cond_4
    invoke-direct {p0, p4}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v3

    invoke-virtual {v3, v0, p4}, Lorg/htmlcleaner/OpenTags;->findTag(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagPos;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 599
    invoke-direct {p0, p3, v3, p1, p4}, Lorg/htmlcleaner/HtmlCleaner;->closeSnippet(Ljava/util/List;Lorg/htmlcleaner/TagPos;Ljava/lang/Object;Lorg/htmlcleaner/CleanTimeValues;)Ljava/util/List;

    move-result-object p1

    .line 604
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v4, 0x0

    .line 605
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/htmlcleaner/TagNode;

    const-string v5, "xmlns"

    .line 606
    invoke-virtual {v4, v5}, Lorg/htmlcleaner/TagNode;->hasAttribute(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 607
    iget-object v6, p4, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 612
    :cond_5
    invoke-virtual {v4}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p4}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 614
    invoke-virtual {v6}, Lorg/htmlcleaner/TagInfo;->getAssumedNamespace()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p4, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    .line 615
    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 616
    invoke-virtual {v6}, Lorg/htmlcleaner/TagInfo;->getAssumedNamespace()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p4, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 617
    invoke-virtual {v4, v5}, Lorg/htmlcleaner/TagNode;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 618
    iget-object v4, p4, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 622
    :cond_6
    invoke-interface {p2, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 623
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_0
    if-ltz v4, :cond_8

    .line 624
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/htmlcleaner/TagNode;

    if-lez v4, :cond_7

    if-eqz v1, :cond_7

    .line 626
    invoke-virtual {v6}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/htmlcleaner/TagInfo;->isContinueAfter(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 630
    invoke-virtual {v6}, Lorg/htmlcleaner/TagNode;->makeCopy()Lorg/htmlcleaner/TagNode;

    move-result-object v6

    .line 631
    invoke-virtual {v6, v5}, Lorg/htmlcleaner/TagNode;->setAutoGenerated(Z)V

    .line 632
    invoke-interface {p2, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 633
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 636
    :cond_8
    invoke-direct {p0, p4}, Lorg/htmlcleaner/HtmlCleaner;->getChildBreaks(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/ChildBreaks;

    move-result-object p1

    invoke-virtual {p1}, Lorg/htmlcleaner/ChildBreaks;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 637
    :goto_1
    iget p1, v3, Lorg/htmlcleaner/TagPos;->position:I

    invoke-direct {p0, p4}, Lorg/htmlcleaner/HtmlCleaner;->getChildBreaks(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/ChildBreaks;

    move-result-object v1

    invoke-virtual {v1}, Lorg/htmlcleaner/ChildBreaks;->getLastBreakingTagPosition()I

    move-result v1

    if-ge p1, v1, :cond_9

    .line 640
    invoke-direct {p0, p4}, Lorg/htmlcleaner/HtmlCleaner;->getChildBreaks(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/ChildBreaks;

    move-result-object p1

    invoke-virtual {p1}, Lorg/htmlcleaner/ChildBreaks;->pop()Lorg/htmlcleaner/TagPos;

    goto :goto_1

    .line 643
    :cond_9
    :goto_2
    invoke-direct {p0, p4}, Lorg/htmlcleaner/HtmlCleaner;->getChildBreaks(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/ChildBreaks;

    move-result-object p1

    invoke-virtual {p1}, Lorg/htmlcleaner/ChildBreaks;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-direct {p0, p4}, Lorg/htmlcleaner/HtmlCleaner;->getChildBreaks(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/ChildBreaks;

    move-result-object p1

    invoke-virtual {p1}, Lorg/htmlcleaner/ChildBreaks;->getLastBreakingTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget p1, v3, Lorg/htmlcleaner/TagPos;->position:I

    .line 644
    invoke-direct {p0, p4}, Lorg/htmlcleaner/HtmlCleaner;->getChildBreaks(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/ChildBreaks;

    move-result-object v1

    invoke-virtual {v1}, Lorg/htmlcleaner/ChildBreaks;->getLastBreakingTagPosition()I

    move-result v1

    if-ne p1, v1, :cond_e

    .line 646
    invoke-direct {p0, p4}, Lorg/htmlcleaner/HtmlCleaner;->getChildBreaks(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/ChildBreaks;

    move-result-object p1

    iget-object p1, p1, Lorg/htmlcleaner/ChildBreaks;->closedByChildBreak:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/TagPos;

    iget p1, p1, Lorg/htmlcleaner/TagPos;->position:I

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 648
    invoke-direct {p0, p4}, Lorg/htmlcleaner/HtmlCleaner;->getChildBreaks(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/ChildBreaks;

    move-result-object p1

    invoke-virtual {p1}, Lorg/htmlcleaner/ChildBreaks;->pop()Lorg/htmlcleaner/TagPos;

    move-result-object p1

    iget p1, p1, Lorg/htmlcleaner/TagPos;->position:I

    .line 649
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 651
    instance-of v4, v1, Lorg/htmlcleaner/TagNode;

    if-eqz v4, :cond_a

    .line 653
    check-cast v1, Lorg/htmlcleaner/TagNode;

    invoke-direct {p0, p2, v1, p4}, Lorg/htmlcleaner/HtmlCleaner;->reopenBrokenNode(Ljava/util/ListIterator;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/CleanTimeValues;)V

    goto :goto_2

    .line 654
    :cond_a
    instance-of v4, v1, Ljava/util/List;

    if-eqz v4, :cond_9

    .line 661
    check-cast v1, Ljava/util/List;

    .line 666
    invoke-direct {p0, v1}, Lorg/htmlcleaner/HtmlCleaner;->flattenNestedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 668
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/htmlcleaner/TagNode;

    .line 669
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_b

    return-void

    .line 673
    :cond_b
    invoke-interface {p2, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 674
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-interface {p3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    invoke-virtual {p0, p3, v4, p4}, Lorg/htmlcleaner/HtmlCleaner;->makeTree(Ljava/util/List;Ljava/util/ListIterator;Lorg/htmlcleaner/CleanTimeValues;)V

    goto :goto_3

    .line 677
    :cond_c
    invoke-interface {p3, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 689
    :cond_d
    invoke-direct {p0, p4}, Lorg/htmlcleaner/HtmlCleaner;->getChildBreaks(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/ChildBreaks;

    move-result-object p1

    invoke-virtual {p1}, Lorg/htmlcleaner/ChildBreaks;->pop()Lorg/htmlcleaner/TagPos;

    goto/16 :goto_2

    :cond_e
    :goto_4
    return-void
.end method

.method private handleStartTagToken(Lorg/htmlcleaner/BaseToken;Ljava/util/ListIterator;Ljava/util/List;Lorg/htmlcleaner/CleanTimeValues;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/BaseToken;",
            "Ljava/util/ListIterator<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;",
            "Ljava/util/List;",
            "Lorg/htmlcleaner/CleanTimeValues;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 706
    move-object v5, v1

    check-cast v5, Lorg/htmlcleaner/TagNode;

    .line 707
    invoke-virtual {v5}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v6

    .line 708
    invoke-virtual {v0, v6, v4}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object v7

    .line 709
    invoke-direct {v0, v4}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v8

    invoke-virtual {v8}, Lorg/htmlcleaner/OpenTags;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {v0, v4}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v8

    invoke-virtual {v8}, Lorg/htmlcleaner/OpenTags;->getLastTagPos()Lorg/htmlcleaner/TagPos;

    move-result-object v8

    :goto_0
    if-nez v8, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    .line 710
    :cond_1
    iget-object v10, v8, Lorg/htmlcleaner/TagPos;->name:Ljava/lang/String;

    invoke-virtual {v0, v10, v4}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object v10

    .line 713
    :goto_1
    iget-object v11, v4, Lorg/htmlcleaner/CleanTimeValues;->allTags:Ljava/util/Set;

    invoke-interface {v11, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v11, "xmlns"

    if-eqz v7, :cond_2

    .line 724
    invoke-virtual {v7}, Lorg/htmlcleaner/TagInfo;->getAssumedNamespace()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v5, v11}, Lorg/htmlcleaner/TagNode;->hasAttribute(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 725
    iget-object v12, v4, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    invoke-virtual {v7}, Lorg/htmlcleaner/TagInfo;->getAssumedNamespace()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    :cond_2
    invoke-virtual {v5}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 734
    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 735
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 736
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v9, "xmlns:"

    invoke-virtual {v15, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/4 v14, -0x1

    if-eq v15, v14, :cond_3

    .line 737
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x1

    aget-object v9, v9, v14

    .line 738
    invoke-virtual {v5, v13}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 739
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14, v13}, Lorg/htmlcleaner/TagNode;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v14, v4, Lorg/htmlcleaner/CleanTimeValues;->namespaceMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 749
    :cond_4
    invoke-virtual {v5, v11}, Lorg/htmlcleaner/TagNode;->hasAttribute(Ljava/lang/String;)Z

    move-result v9

    const-string v12, "html"

    if-eqz v9, :cond_9

    .line 751
    invoke-virtual {v5, v11}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "https://www.w3.org/1999/xhtml"

    .line 756
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "http://w3.org/1999/xhtml"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 758
    :cond_5
    invoke-virtual {v5}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v9

    const-string v13, "http://www.w3.org/1999/xhtml"

    .line 759
    invoke-interface {v9, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    invoke-virtual {v5, v9}, Lorg/htmlcleaner/TagNode;->setAttributes(Ljava/util/Map;)V

    move-object v9, v13

    .line 767
    :cond_6
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "http://www.w3.org/TR/REC-html40"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 768
    invoke-virtual {v5, v11}, Lorg/htmlcleaner/TagNode;->removeAttribute(Ljava/lang/String;)V

    goto :goto_3

    .line 773
    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 774
    invoke-virtual {v5, v11}, Lorg/htmlcleaner/TagNode;->removeAttribute(Ljava/lang/String;)V

    goto :goto_3

    .line 779
    :cond_8
    iget-object v13, v4, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    invoke-virtual {v13, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, ""

    .line 780
    invoke-virtual {v5, v13, v9}, Lorg/htmlcleaner/TagNode;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v14, v4, Lorg/htmlcleaner/CleanTimeValues;->namespaceMap:Ljava/util/HashMap;

    invoke-virtual {v14, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    :goto_3
    iget-object v9, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v9}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v9

    if-nez v9, :cond_9

    .line 789
    invoke-virtual {v5, v11}, Lorg/htmlcleaner/TagNode;->removeAttribute(Ljava/lang/String;)V

    .line 796
    :cond_9
    invoke-direct {v0, v6, v4}, Lorg/htmlcleaner/HtmlCleaner;->isAllowedAsForeignMarkup(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    .line 797
    invoke-virtual {v5, v6}, Lorg/htmlcleaner/TagNode;->setForeignMarkup(Z)V

    goto :goto_4

    .line 799
    :cond_a
    invoke-virtual {v5, v9}, Lorg/htmlcleaner/TagNode;->setForeignMarkup(Z)V

    .line 809
    :goto_4
    invoke-virtual {v5}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v6

    .line 819
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 820
    iget-object v1, v4, Lorg/htmlcleaner/CleanTimeValues;->htmlNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v5}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/htmlcleaner/HtmlCleaner;->addAttributesToTag(Lorg/htmlcleaner/TagNode;Ljava/util/Map;)V

    const/4 v11, 0x0

    .line 821
    invoke-interface {v2, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    :cond_b
    const/4 v11, 0x0

    const-string v12, "body"

    .line 823
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    .line 824
    iput-boolean v12, v4, Lorg/htmlcleaner/CleanTimeValues;->_bodyOpened:Z

    .line 825
    iget-object v1, v4, Lorg/htmlcleaner/CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v5}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/htmlcleaner/HtmlCleaner;->addAttributesToTag(Lorg/htmlcleaner/TagNode;Ljava/util/Map;)V

    .line 826
    invoke-interface {v2, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    :cond_c
    const/4 v12, 0x1

    const-string v13, "head"

    .line 828
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 829
    iput-boolean v12, v4, Lorg/htmlcleaner/CleanTimeValues;->_headOpened:Z

    .line 830
    iget-object v1, v4, Lorg/htmlcleaner/CleanTimeValues;->headNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v5}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/htmlcleaner/HtmlCleaner;->addAttributesToTag(Lorg/htmlcleaner/TagNode;Ljava/util/Map;)V

    .line 831
    invoke-interface {v2, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    :cond_d
    if-nez v7, :cond_e

    .line 842
    iget-object v12, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v12}, Lorg/htmlcleaner/CleanerProperties;->isOmitUnknownTags()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-direct {v0, v6, v4}, Lorg/htmlcleaner/HtmlCleaner;->isAllowedAsForeignMarkup(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 843
    invoke-interface {v2, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 844
    iget-object v1, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    sget-object v2, Lorg/htmlcleaner/audit/ErrorType;->Unknown:Lorg/htmlcleaner/audit/ErrorType;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v5, v2}, Lorg/htmlcleaner/CleanerProperties;->fireUglyHtml(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V

    return-void

    :cond_e
    if-eqz v7, :cond_f

    .line 846
    invoke-virtual {v7}, Lorg/htmlcleaner/TagInfo;->isDeprecated()Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v11}, Lorg/htmlcleaner/CleanerProperties;->isOmitDeprecatedTags()Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, 0x0

    .line 847
    invoke-interface {v2, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 848
    iget-object v1, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    sget-object v2, Lorg/htmlcleaner/audit/ErrorType;->Deprecated:Lorg/htmlcleaner/audit/ErrorType;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v5, v2}, Lorg/htmlcleaner/CleanerProperties;->fireUglyHtml(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V

    return-void

    :cond_f
    if-nez v7, :cond_10

    if-eqz v10, :cond_10

    .line 851
    invoke-virtual {v10}, Lorg/htmlcleaner/TagInfo;->allowsAnything()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v10, v5}, Lorg/htmlcleaner/TagInfo;->allowsItem(Lorg/htmlcleaner/BaseToken;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 852
    invoke-direct {v0, v3, v8, v5, v4}, Lorg/htmlcleaner/HtmlCleaner;->closeSnippet(Ljava/util/List;Lorg/htmlcleaner/TagPos;Ljava/lang/Object;Lorg/htmlcleaner/CleanTimeValues;)Ljava/util/List;

    .line 853
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-void

    :cond_10
    if-eqz v7, :cond_11

    .line 855
    invoke-virtual {v7}, Lorg/htmlcleaner/TagInfo;->hasPermittedTags()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-direct {v0, v4}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v11

    invoke-virtual {v7}, Lorg/htmlcleaner/TagInfo;->getPermittedTags()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/htmlcleaner/OpenTags;->someAlreadyOpen(Ljava/util/Set;)Z

    move-result v11

    if-eqz v11, :cond_11

    const/4 v11, 0x0

    .line 856
    invoke-interface {v2, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    :cond_11
    const/4 v11, 0x0

    if-eqz v7, :cond_12

    .line 859
    invoke-virtual {v7}, Lorg/htmlcleaner/TagInfo;->isUnique()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-direct {v0, v4}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v12

    invoke-virtual {v12, v6}, Lorg/htmlcleaner/OpenTags;->tagEncountered(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 860
    invoke-interface {v2, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 861
    iget-object v1, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    sget-object v2, Lorg/htmlcleaner/audit/ErrorType;->UniqueTagDuplicated:Lorg/htmlcleaner/audit/ErrorType;

    const/4 v12, 0x1

    invoke-virtual {v1, v12, v5, v2}, Lorg/htmlcleaner/CleanerProperties;->fireHtmlError(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V

    return-void

    :cond_12
    const/4 v12, 0x1

    .line 864
    invoke-direct {v0, v7, v4}, Lorg/htmlcleaner/HtmlCleaner;->isFatalTagSatisfied(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result v13

    if-nez v13, :cond_13

    .line 865
    invoke-interface {v2, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 866
    iget-object v1, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    sget-object v2, Lorg/htmlcleaner/audit/ErrorType;->FatalTagMissing:Lorg/htmlcleaner/audit/ErrorType;

    invoke-virtual {v1, v12, v5, v2}, Lorg/htmlcleaner/CleanerProperties;->fireHtmlError(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V

    return-void

    .line 878
    :cond_13
    invoke-direct {v0, v7, v4}, Lorg/htmlcleaner/HtmlCleaner;->mustAddRequiredParent(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 882
    invoke-virtual {v7}, Lorg/htmlcleaner/TagInfo;->getRequiredParentTags()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 883
    invoke-direct {v0, v6}, Lorg/htmlcleaner/HtmlCleaner;->newTagNode(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v6

    .line 888
    invoke-direct {v0, v6, v4}, Lorg/htmlcleaner/HtmlCleaner;->isAllowedInLastOpenTag(Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 889
    invoke-virtual {v6, v12}, Lorg/htmlcleaner/TagNode;->setAutoGenerated(Z)V

    .line 890
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 891
    invoke-interface {v2, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 892
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 893
    iget-object v1, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    sget-object v2, Lorg/htmlcleaner/audit/ErrorType;->RequiredParentMissing:Lorg/htmlcleaner/audit/ErrorType;

    invoke-virtual {v1, v12, v5, v2}, Lorg/htmlcleaner/CleanerProperties;->fireHtmlError(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V

    goto :goto_5

    .line 895
    :cond_14
    invoke-direct {v0, v3, v1, v4}, Lorg/htmlcleaner/HtmlCleaner;->saveToLastOpenTag(Ljava/util/List;Ljava/lang/Object;Lorg/htmlcleaner/CleanTimeValues;)V

    const/4 v1, 0x0

    .line 896
    invoke-interface {v2, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    :goto_5
    return-void

    :cond_15
    if-eqz v7, :cond_1c

    if-eqz v8, :cond_1c

    .line 904
    invoke-virtual {v7, v10}, Lorg/htmlcleaner/TagInfo;->isMustCloseTag(Lorg/htmlcleaner/TagInfo;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 907
    invoke-direct {v0, v4}, Lorg/htmlcleaner/HtmlCleaner;->getChildBreaks(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/ChildBreaks;

    move-result-object v1

    new-instance v10, Lorg/htmlcleaner/TagPos;

    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previousIndex()I

    move-result v11

    invoke-virtual {v7}, Lorg/htmlcleaner/TagInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v6, v4}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object v6

    invoke-direct {v10, v11, v12, v6, v4}, Lorg/htmlcleaner/TagPos;-><init>(ILjava/lang/String;Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/CleanTimeValues;)V

    invoke-virtual {v1, v8, v10}, Lorg/htmlcleaner/ChildBreaks;->addBreak(Lorg/htmlcleaner/TagPos;Lorg/htmlcleaner/TagPos;)V

    const-string v1, "id"

    .line 908
    invoke-virtual {v5, v1}, Lorg/htmlcleaner/TagNode;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x1

    xor-int/2addr v1, v6

    .line 909
    iget-object v6, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    iget v10, v8, Lorg/htmlcleaner/TagPos;->position:I

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/htmlcleaner/TagNode;

    sget-object v11, Lorg/htmlcleaner/audit/ErrorType;->UnpermittedChild:Lorg/htmlcleaner/audit/ErrorType;

    invoke-virtual {v6, v1, v10, v11}, Lorg/htmlcleaner/CleanerProperties;->fireHtmlError(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V

    .line 910
    invoke-direct {v0, v3, v8, v5, v4}, Lorg/htmlcleaner/HtmlCleaner;->closeSnippet(Ljava/util/List;Lorg/htmlcleaner/TagPos;Ljava/lang/Object;Lorg/htmlcleaner/CleanTimeValues;)Ljava/util/List;

    move-result-object v1

    .line 911
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 914
    invoke-virtual {v7}, Lorg/htmlcleaner/TagInfo;->hasCopyTags()Z

    move-result v4

    if-eqz v4, :cond_1b

    if-lez v3, :cond_1b

    .line 917
    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 918
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 919
    :goto_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 920
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 921
    invoke-virtual/range {p0 .. p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-void

    .line 924
    :cond_16
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/htmlcleaner/TagNode;

    .line 925
    invoke-virtual {v4}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/htmlcleaner/TagInfo;->isCopy(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 926
    invoke-interface {v3, v9, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 932
    :cond_17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 933
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 934
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 935
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 936
    invoke-virtual/range {p0 .. p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-void

    .line 939
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/htmlcleaner/TagNode;

    .line 940
    invoke-static {v4, v2}, Lorg/htmlcleaner/HtmlCleaner;->isCopiedTokenEqualToNextThreeCopiedTokens(Lorg/htmlcleaner/TagNode;Ljava/util/ListIterator;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 941
    invoke-virtual {v4}, Lorg/htmlcleaner/TagNode;->makeCopy()Lorg/htmlcleaner/TagNode;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_7

    .line 943
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 948
    :cond_1a
    :goto_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_1b

    .line 949
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 954
    :cond_1b
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-void

    .line 962
    :cond_1c
    invoke-direct {v0, v1, v4}, Lorg/htmlcleaner/HtmlCleaner;->isAllowedInLastOpenTag(Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 967
    invoke-direct {v0, v4}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v6

    invoke-virtual {v6}, Lorg/htmlcleaner/OpenTags;->getLastTagPos()Lorg/htmlcleaner/TagPos;

    move-result-object v6

    if-eqz v6, :cond_1e

    .line 968
    iget-object v7, v6, Lorg/htmlcleaner/TagPos;->info:Lorg/htmlcleaner/TagInfo;

    if-eqz v7, :cond_1e

    iget-object v7, v6, Lorg/htmlcleaner/TagPos;->info:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v7}, Lorg/htmlcleaner/TagInfo;->getPreferredChildTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e

    .line 969
    iget-object v7, v6, Lorg/htmlcleaner/TagPos;->info:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v7}, Lorg/htmlcleaner/TagInfo;->getPreferredChildTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/htmlcleaner/HtmlCleaner;->newTagNode(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v7

    .line 974
    invoke-direct {v0, v7, v4}, Lorg/htmlcleaner/HtmlCleaner;->isAllowedInLastOpenTag(Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result v8

    if-eqz v8, :cond_1d

    iget-object v8, v6, Lorg/htmlcleaner/TagPos;->info:Lorg/htmlcleaner/TagInfo;

    .line 975
    invoke-virtual {v8}, Lorg/htmlcleaner/TagInfo;->getPreferredChildTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v4}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object v8

    if-eqz v8, :cond_1d

    iget-object v6, v6, Lorg/htmlcleaner/TagPos;->info:Lorg/htmlcleaner/TagInfo;

    .line 976
    invoke-virtual {v6}, Lorg/htmlcleaner/TagInfo;->getPreferredChildTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/htmlcleaner/TagInfo;->allowsItem(Lorg/htmlcleaner/BaseToken;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x1

    .line 978
    invoke-virtual {v7, v6}, Lorg/htmlcleaner/TagNode;->setAutoGenerated(Z)V

    .line 979
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 980
    invoke-interface {v2, v7}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 981
    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 982
    iget-object v1, v0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    sget-object v2, Lorg/htmlcleaner/audit/ErrorType;->RequiredParentMissing:Lorg/htmlcleaner/audit/ErrorType;

    invoke-virtual {v1, v6, v5, v2}, Lorg/htmlcleaner/CleanerProperties;->fireHtmlError(ZLorg/htmlcleaner/TagNode;Lorg/htmlcleaner/audit/ErrorType;)V

    goto :goto_9

    .line 987
    :cond_1d
    invoke-direct {v0, v3, v1, v4}, Lorg/htmlcleaner/HtmlCleaner;->saveToLastOpenTag(Ljava/util/List;Ljava/lang/Object;Lorg/htmlcleaner/CleanTimeValues;)V

    const/4 v5, 0x0

    .line 988
    invoke-interface {v2, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_9

    :cond_1e
    const/4 v5, 0x0

    .line 994
    invoke-direct {v0, v3, v1, v4}, Lorg/htmlcleaner/HtmlCleaner;->saveToLastOpenTag(Ljava/util/List;Ljava/lang/Object;Lorg/htmlcleaner/CleanTimeValues;)V

    .line 995
    invoke-interface {v2, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    :goto_9
    return-void

    :cond_1f
    if-eqz v7, :cond_20

    .line 1003
    invoke-virtual {v7}, Lorg/htmlcleaner/TagInfo;->allowsBody()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1005
    invoke-direct {v0, v5}, Lorg/htmlcleaner/HtmlCleaner;->createTagNode(Lorg/htmlcleaner/TagNode;)Lorg/htmlcleaner/TagNode;

    move-result-object v1

    .line 1006
    invoke-direct {v0, v7, v1, v4}, Lorg/htmlcleaner/HtmlCleaner;->addPossibleHeadCandidate(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/CleanTimeValues;)V

    .line 1007
    invoke-interface {v2, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    .line 1014
    :cond_20
    invoke-direct {v0, v4}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v1

    invoke-virtual {v0, v6, v4}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Ljava/util/ListIterator;->previousIndex()I

    move-result v2

    invoke-virtual {v1, v6, v3, v2, v4}, Lorg/htmlcleaner/OpenTags;->addTag(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;ILorg/htmlcleaner/CleanTimeValues;)V

    return-void
.end method

.method private isAllowedAsForeignMarkup(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Z
    .locals 2

    .line 555
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->isNamespacesAware()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    const-string v0, ":"

    .line 557
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    return v0

    .line 558
    :cond_2
    iget-object p1, p2, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    if-eqz p1, :cond_6

    iget-object p1, p2, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 559
    :cond_3
    iget-object p1, p2, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    return v1

    :cond_4
    const-string p2, "http://www.w3.org/1999/xhtml"

    .line 561
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method private isAllowedInLastOpenTag(Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/CleanTimeValues;)Z
    .locals 1

    .line 516
    invoke-direct {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object p2

    invoke-virtual {p2}, Lorg/htmlcleaner/OpenTags;->getLastTagPos()Lorg/htmlcleaner/TagPos;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 518
    iget-object v0, p2, Lorg/htmlcleaner/TagPos;->info:Lorg/htmlcleaner/TagInfo;

    if-eqz v0, :cond_0

    .line 519
    iget-object p2, p2, Lorg/htmlcleaner/TagPos;->info:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {p2, p1}, Lorg/htmlcleaner/TagInfo;->allowsItem(Lorg/htmlcleaner/BaseToken;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private static isCopiedTokenEqualToNextThreeCopiedTokens(Lorg/htmlcleaner/TagNode;Ljava/util/ListIterator;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/TagNode;",
            "Ljava/util/ListIterator<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1070
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_0

    if-ge v1, v4, :cond_0

    .line 1071
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/htmlcleaner/BaseToken;

    add-int/lit8 v1, v1, 0x1

    .line 1073
    instance-of v5, v3, Lorg/htmlcleaner/TagNode;

    if-eqz v5, :cond_0

    check-cast v3, Lorg/htmlcleaner/TagNode;

    invoke-virtual {v3}, Lorg/htmlcleaner/TagNode;->isCopy()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3, p0}, Lorg/htmlcleaner/HtmlCleaner;->areCopiedTokensEqual(Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/TagNode;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_1
    if-ge p0, v1, :cond_1

    .line 1080
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isFatalTagSatisfied(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/CleanTimeValues;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 434
    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->getFatalTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 436
    :cond_0
    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->getFatalTags()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 437
    invoke-direct {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lorg/htmlcleaner/OpenTags;->tagExists(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method private isStartToken(Ljava/lang/Object;)Z
    .locals 1

    .line 543
    instance-of v0, p1, Lorg/htmlcleaner/TagNode;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/htmlcleaner/TagNode;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->isFormed()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private markNodesToPrune(Ljava/util/List;Lorg/htmlcleaner/CleanTimeValues;)Z
    .locals 3

    .line 329
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 330
    instance-of v2, v1, Lorg/htmlcleaner/TagNode;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lorg/htmlcleaner/CleanTimeValues;->pruneNodeSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    check-cast v1, Lorg/htmlcleaner/TagNode;

    .line 332
    invoke-direct {p0, v1, p2}, Lorg/htmlcleaner/HtmlCleaner;->addIfNeededToPruneSet(Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {v1}, Lorg/htmlcleaner/TagNode;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    invoke-virtual {v1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/htmlcleaner/HtmlCleaner;->markNodesToPrune(Ljava/util/List;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private mustAddRequiredParent(Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/CleanTimeValues;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 456
    :cond_0
    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->getRequiredParentTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 462
    :cond_1
    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->getFatalTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 464
    invoke-direct {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lorg/htmlcleaner/OpenTags;->findTag(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagPos;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 466
    iget v2, v3, Lorg/htmlcleaner/TagPos;->position:I

    goto :goto_0

    .line 476
    :cond_3
    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->getRequiredParentTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :goto_1
    move v4, v3

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 478
    invoke-direct {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v6

    invoke-virtual {v6, v5, p2}, Lorg/htmlcleaner/OpenTags;->findTag(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagPos;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 480
    iget v4, v5, Lorg/htmlcleaner/TagPos;->position:I

    if-gt v4, v2, :cond_5

    goto :goto_1

    :cond_5
    move v4, v0

    goto :goto_2

    :cond_6
    if-nez v4, :cond_7

    return v0

    .line 490
    :cond_7
    invoke-direct {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v1

    iget-object v1, v1, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    invoke-direct {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object p2

    iget-object p2, p2, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {v1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    .line 491
    :cond_8
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 492
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlcleaner/TagPos;

    .line 493
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 494
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    .line 495
    iget p1, v1, Lorg/htmlcleaner/TagPos;->position:I

    if-gt p1, v2, :cond_9

    move v0, v3

    :cond_9
    return v0

    .line 497
    :cond_a
    iget-object v4, v1, Lorg/htmlcleaner/TagPos;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/htmlcleaner/TagInfo;->isHigher(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 498
    iget p1, v1, Lorg/htmlcleaner/TagPos;->position:I

    if-gt p1, v2, :cond_b

    move v0, v3

    :cond_b
    return v0

    :cond_c
    return v3
.end method

.method private newTagNode(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;
    .locals 1

    .line 506
    new-instance v0, Lorg/htmlcleaner/TagNode;

    invoke-direct {v0, p1}, Lorg/htmlcleaner/TagNode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private popNesting(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/NestingState;
    .locals 0

    .line 1444
    iget-object p1, p1, Lorg/htmlcleaner/CleanTimeValues;->nestingStates:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/NestingState;

    return-object p1
.end method

.method private pushNesting(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/NestingState;
    .locals 3

    .line 1441
    iget-object p1, p1, Lorg/htmlcleaner/CleanTimeValues;->nestingStates:Ljava/util/Stack;

    new-instance v0, Lorg/htmlcleaner/NestingState;

    new-instance v1, Lorg/htmlcleaner/OpenTags;

    invoke-direct {v1, p0}, Lorg/htmlcleaner/OpenTags;-><init>(Lorg/htmlcleaner/HtmlCleaner;)V

    new-instance v2, Lorg/htmlcleaner/ChildBreaks;

    invoke-direct {v2}, Lorg/htmlcleaner/ChildBreaks;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/htmlcleaner/NestingState;-><init>(Lorg/htmlcleaner/OpenTags;Lorg/htmlcleaner/ChildBreaks;)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/NestingState;

    return-object p1
.end method

.method private reopenBrokenNode(Ljava/util/ListIterator;Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/CleanTimeValues;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;",
            "Lorg/htmlcleaner/TagNode;",
            "Lorg/htmlcleaner/CleanTimeValues;",
            ")V"
        }
    .end annotation

    .line 1112
    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->makeCopy()Lorg/htmlcleaner/TagNode;

    move-result-object v0

    const/4 v1, 0x1

    .line 1113
    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagNode;->setAutoGenerated(Z)V

    const-string v1, "id"

    .line 1114
    invoke-virtual {v0, v1}, Lorg/htmlcleaner/TagNode;->removeAttribute(Ljava/lang/String;)V

    .line 1115
    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1116
    invoke-direct {p0, p3}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v0

    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/ListIterator;->previousIndex()I

    move-result p1

    invoke-virtual {v0, v1, p2, p1, p3}, Lorg/htmlcleaner/OpenTags;->addTag(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;ILorg/htmlcleaner/CleanTimeValues;)V

    return-void
.end method

.method private saveToLastOpenTag(Ljava/util/List;Ljava/lang/Object;Lorg/htmlcleaner/CleanTimeValues;)V
    .locals 1

    .line 527
    invoke-direct {p0, p3}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlcleaner/OpenTags;->getLastTagPos()Lorg/htmlcleaner/TagPos;

    .line 532
    invoke-direct {p0, p3}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object p3

    invoke-virtual {p3}, Lorg/htmlcleaner/OpenTags;->findTagToPlaceRubbish()Lorg/htmlcleaner/TagPos;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 534
    iget p3, p3, Lorg/htmlcleaner/TagPos;->position:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/TagNode;

    if-eqz p1, :cond_0

    .line 536
    invoke-virtual {p1, p2}, Lorg/htmlcleaner/TagNode;->addItemForMoving(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addPruneNode(Lorg/htmlcleaner/TagNode;Lorg/htmlcleaner/CleanTimeValues;)V
    .locals 1

    const/4 v0, 0x1

    .line 1306
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->setPruned(Z)V

    .line 1307
    iget-object p2, p2, Lorg/htmlcleaner/CleanTimeValues;->pruneNodeSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clean(Ljava/io/File;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/File;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    return-object p1
.end method

.method public clean(Ljava/io/File;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 186
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    :try_start_1
    new-instance p1, Lorg/htmlcleaner/CleanTimeValues;

    invoke-direct {p1}, Lorg/htmlcleaner/CleanTimeValues;-><init>()V

    invoke-virtual {p0, v1, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    :catch_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    :goto_0
    if-eqz v1, :cond_0

    .line 190
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 192
    :catch_2
    :cond_0
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    throw p1
.end method

.method public clean(Ljava/io/InputStream;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/InputStream;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    return-object p1
.end method

.method public clean(Ljava/io/InputStream;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p1, Lorg/htmlcleaner/CleanTimeValues;

    invoke-direct {p1}, Lorg/htmlcleaner/CleanTimeValues;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    return-object p1
.end method

.method public clean(Ljava/io/Reader;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    new-instance v0, Lorg/htmlcleaner/CleanTimeValues;

    invoke-direct {v0}, Lorg/htmlcleaner/CleanTimeValues;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    return-object p1
.end method

.method protected clean(Ljava/io/Reader;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-direct {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->pushNesting(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/NestingState;

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p2, Lorg/htmlcleaner/CleanTimeValues;->_headOpened:Z

    .line 249
    iput-boolean v0, p2, Lorg/htmlcleaner/CleanTimeValues;->_bodyOpened:Z

    .line 250
    iget-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->_headTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 251
    iget-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->allTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 252
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->getPruneTagSet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->pruneTagSet:Ljava/util/Set;

    .line 253
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->getAllowTagSet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->allowTagSet:Ljava/util/Set;

    .line 254
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getCleanerTransformations()Lorg/htmlcleaner/CleanerTransformations;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    .line 255
    iget-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->pruneNodeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v0, "html"

    .line 257
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlCleaner;->newTagNode(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    iput-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->htmlNode:Lorg/htmlcleaner/TagNode;

    const-string v0, "body"

    .line 258
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlCleaner;->newTagNode(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    iput-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;

    const-string v0, "head"

    .line 259
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlCleaner;->newTagNode(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v0

    iput-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->headNode:Lorg/htmlcleaner/TagNode;

    const/4 v0, 0x0

    .line 260
    iput-object v0, p2, Lorg/htmlcleaner/CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    .line 261
    iget-object v1, p2, Lorg/htmlcleaner/CleanTimeValues;->htmlNode:Lorg/htmlcleaner/TagNode;

    iget-object v2, p2, Lorg/htmlcleaner/CleanTimeValues;->headNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    .line 262
    iget-object v1, p2, Lorg/htmlcleaner/CleanTimeValues;->htmlNode:Lorg/htmlcleaner/TagNode;

    iget-object v2, p2, Lorg/htmlcleaner/CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v1, v2}, Lorg/htmlcleaner/TagNode;->addChild(Ljava/lang/Object;)V

    .line 264
    new-instance v1, Lorg/htmlcleaner/HtmlTokenizer;

    invoke-direct {v1, p0, p1, p2}, Lorg/htmlcleaner/HtmlTokenizer;-><init>(Lorg/htmlcleaner/HtmlCleaner;Ljava/io/Reader;Lorg/htmlcleaner/CleanTimeValues;)V

    .line 266
    invoke-virtual {v1}, Lorg/htmlcleaner/HtmlTokenizer;->start()V

    .line 268
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-object v0

    .line 273
    :cond_0
    invoke-virtual {v1}, Lorg/htmlcleaner/HtmlTokenizer;->getTokenList()Ljava/util/List;

    move-result-object p1

    .line 274
    invoke-direct {p0, p1, p2}, Lorg/htmlcleaner/HtmlCleaner;->closeAll(Ljava/util/List;Lorg/htmlcleaner/CleanTimeValues;)V

    .line 276
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-object v0

    .line 281
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/htmlcleaner/HtmlCleaner;->createDocumentNodes(Ljava/util/List;Lorg/htmlcleaner/CleanTimeValues;)V

    .line 283
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-object v0

    .line 288
    :cond_2
    invoke-virtual {v1}, Lorg/htmlcleaner/HtmlTokenizer;->getNamespacePrefixes()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lorg/htmlcleaner/HtmlCleaner;->calculateRootNode(Lorg/htmlcleaner/CleanTimeValues;Ljava/util/Set;)V

    .line 290
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-object v0

    .line 298
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/htmlcleaner/HtmlCleaner;->markNodesToPrune(Ljava/util/List;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-object v0

    .line 307
    :cond_4
    iget-object p1, p2, Lorg/htmlcleaner/CleanTimeValues;->pruneNodeSet:Ljava/util/Set;

    if-eqz p1, :cond_7

    iget-object p1, p2, Lorg/htmlcleaner/CleanTimeValues;->pruneNodeSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 308
    iget-object p1, p2, Lorg/htmlcleaner/CleanTimeValues;->pruneNodeSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 309
    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 310
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 311
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-object v0

    .line 314
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlcleaner/TagNode;

    .line 315
    invoke-virtual {v2}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 317
    invoke-virtual {v3, v2}, Lorg/htmlcleaner/TagNode;->removeChild(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_7
    iget-object p1, p2, Lorg/htmlcleaner/CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    invoke-virtual {v1}, Lorg/htmlcleaner/HtmlTokenizer;->getDocType()Lorg/htmlcleaner/DoctypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->setDocType(Lorg/htmlcleaner/DoctypeToken;)V

    .line 323
    invoke-direct {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->popNesting(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/NestingState;

    .line 324
    iget-object p1, p2, Lorg/htmlcleaner/CleanTimeValues;->rootNode:Lorg/htmlcleaner/TagNode;

    return-object p1
.end method

.method public clean(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;
    .locals 1

    .line 175
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/htmlcleaner/CleanTimeValues;

    invoke-direct {p1}, Lorg/htmlcleaner/CleanTimeValues;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 178
    new-instance v0, Lorg/htmlcleaner/HtmlCleanerException;

    invoke-direct {v0, p1}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public clean(Ljava/net/URL;)Lorg/htmlcleaner/TagNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/net/URL;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    return-object p1
.end method

.method public clean(Ljava/net/URL;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    invoke-static {p1, p2}, Lorg/htmlcleaner/Utils;->readUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 211
    new-instance p2, Ljava/io/StringReader;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 212
    new-instance p1, Lorg/htmlcleaner/CleanTimeValues;

    invoke-direct {p1}, Lorg/htmlcleaner/CleanTimeValues;-><init>()V

    invoke-virtual {p0, p2, p1}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagNode;

    move-result-object p1

    return-object p1
.end method

.method protected getAllTags(Lorg/htmlcleaner/CleanTimeValues;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/CleanTimeValues;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1364
    iget-object p1, p1, Lorg/htmlcleaner/CleanTimeValues;->allTags:Ljava/util/Set;

    return-object p1
.end method

.method protected getAllowTagSet(Lorg/htmlcleaner/CleanTimeValues;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/CleanTimeValues;",
            ")",
            "Ljava/util/Set<",
            "Lorg/htmlcleaner/conditional/ITagNodeCondition;",
            ">;"
        }
    .end annotation

    .line 1302
    iget-object p1, p1, Lorg/htmlcleaner/CleanTimeValues;->allowTagSet:Ljava/util/Set;

    return-object p1
.end method

.method public getInnerHtml(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    .line 1388
    new-instance v0, Lorg/htmlcleaner/SimpleXmlSerializer;

    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-direct {v0, v1}, Lorg/htmlcleaner/SimpleXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    invoke-virtual {v0, p1}, Lorg/htmlcleaner/SimpleXmlSerializer;->getAsString(Lorg/htmlcleaner/TagNode;)Ljava/lang/String;

    move-result-object v0

    .line 1389
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x3e

    add-int/lit8 p1, p1, 0x1

    .line 1390
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    const/16 v1, 0x3c

    .line 1391
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 1392
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 1394
    :cond_1
    new-instance p1, Lorg/htmlcleaner/HtmlCleanerException;

    const-string v0, "Cannot return inner html of the null node!"

    invoke-direct {p1, v0}, Lorg/htmlcleaner/HtmlCleanerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getProperties()Lorg/htmlcleaner/CleanerProperties;
    .locals 1

    .line 1294
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    return-object v0
.end method

.method protected getPruneTagSet(Lorg/htmlcleaner/CleanTimeValues;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/htmlcleaner/CleanTimeValues;",
            ")",
            "Ljava/util/Set<",
            "Lorg/htmlcleaner/conditional/ITagNodeCondition;",
            ">;"
        }
    .end annotation

    .line 1298
    iget-object p1, p1, Lorg/htmlcleaner/CleanTimeValues;->pruneTagSet:Ljava/util/Set;

    return-object p1
.end method

.method public getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;
    .locals 3

    .line 1322
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {v0}, Lorg/htmlcleaner/TagInfo;->getAssumedNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1324
    iget-object v1, p2, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1325
    iget-object v1, p2, Lorg/htmlcleaner/CleanTimeValues;->namespace:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1326
    invoke-virtual {v0}, Lorg/htmlcleaner/TagInfo;->getAssumedNamespace()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-object v0

    .line 1331
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/htmlcleaner/HtmlCleaner;->isAllowedAsForeignMarkup(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1332
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;
    .locals 1

    .line 1371
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v0}, Lorg/htmlcleaner/CleanerProperties;->getTagInfoProvider()Lorg/htmlcleaner/ITagInfoProvider;

    move-result-object v0

    return-object v0
.end method

.method public getTransformations()Lorg/htmlcleaner/CleanerTransformations;
    .locals 1

    .line 1378
    iget-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    return-object v0
.end method

.method protected handleInterruption()V
    .locals 0

    return-void
.end method

.method public initCleanerTransformations(Ljava/util/Map;)V
    .locals 1

    .line 1428
    new-instance v0, Lorg/htmlcleaner/CleanerTransformations;

    invoke-direct {v0, p1}, Lorg/htmlcleaner/CleanerTransformations;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/htmlcleaner/HtmlCleaner;->transformations:Lorg/htmlcleaner/CleanerTransformations;

    return-void
.end method

.method protected isRemovingNodeReasonablySafe(Lorg/htmlcleaner/TagNode;)Z
    .locals 1

    const-string v0, "id"

    .line 1125
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "class"

    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->hasAttribute(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method makeTree(Ljava/util/List;Ljava/util/ListIterator;Lorg/htmlcleaner/CleanTimeValues;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/util/ListIterator<",
            "Lorg/htmlcleaner/BaseToken;",
            ">;",
            "Lorg/htmlcleaner/CleanTimeValues;",
            ")V"
        }
    .end annotation

    .line 1028
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1029
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    invoke-virtual {p0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-void

    .line 1033
    :cond_1
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/BaseToken;

    .line 1035
    instance-of v1, v0, Lorg/htmlcleaner/EndTagToken;

    if-eqz v1, :cond_2

    .line 1036
    invoke-direct {p0, v0, p2, p1, p3}, Lorg/htmlcleaner/HtmlCleaner;->handleEndTagToken(Lorg/htmlcleaner/BaseToken;Ljava/util/ListIterator;Ljava/util/List;Lorg/htmlcleaner/CleanTimeValues;)V

    goto :goto_0

    .line 1037
    :cond_2
    invoke-direct {p0, v0}, Lorg/htmlcleaner/HtmlCleaner;->isStartToken(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1038
    invoke-direct {p0, v0, p2, p1, p3}, Lorg/htmlcleaner/HtmlCleaner;->handleStartTagToken(Lorg/htmlcleaner/BaseToken;Ljava/util/ListIterator;Ljava/util/List;Lorg/htmlcleaner/CleanTimeValues;)V

    goto :goto_0

    .line 1040
    :cond_3
    iget-boolean v1, p3, Lorg/htmlcleaner/CleanTimeValues;->_headOpened:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p3, Lorg/htmlcleaner/CleanTimeValues;->_bodyOpened:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/htmlcleaner/HtmlCleaner;->properties:Lorg/htmlcleaner/CleanerProperties;

    invoke-virtual {v1}, Lorg/htmlcleaner/CleanerProperties;->isKeepWhitespaceAndCommentsInHead()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1041
    instance-of v1, v0, Lorg/htmlcleaner/CommentNode;

    if-eqz v1, :cond_4

    .line 1042
    invoke-direct {p0, p3}, Lorg/htmlcleaner/HtmlCleaner;->getOpenTags(Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/OpenTags;

    move-result-object v1

    invoke-virtual {v1}, Lorg/htmlcleaner/OpenTags;->getLastTagPos()Lorg/htmlcleaner/TagPos;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1043
    iget-object v1, p3, Lorg/htmlcleaner/CleanTimeValues;->_headTags:Ljava/util/Set;

    new-instance v2, Lorg/htmlcleaner/ProxyTagNode;

    move-object v3, v0

    check-cast v3, Lorg/htmlcleaner/CommentNode;

    iget-object v4, p3, Lorg/htmlcleaner/CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;

    invoke-direct {v2, v3, v4}, Lorg/htmlcleaner/ProxyTagNode;-><init>(Lorg/htmlcleaner/CommentNode;Lorg/htmlcleaner/TagNode;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1045
    :cond_4
    instance-of v1, v0, Lorg/htmlcleaner/ContentNode;

    if-eqz v1, :cond_5

    .line 1046
    move-object v1, v0

    check-cast v1, Lorg/htmlcleaner/ContentNode;

    .line 1047
    invoke-virtual {v1}, Lorg/htmlcleaner/ContentNode;->isBlank()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1048
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlcleaner/BaseToken;

    if-ne v2, v0, :cond_5

    .line 1050
    iget-object v2, p3, Lorg/htmlcleaner/CleanTimeValues;->_headTags:Ljava/util/Set;

    new-instance v3, Lorg/htmlcleaner/ProxyTagNode;

    iget-object v4, p3, Lorg/htmlcleaner/CleanTimeValues;->bodyNode:Lorg/htmlcleaner/TagNode;

    invoke-direct {v3, v1, v4}, Lorg/htmlcleaner/ProxyTagNode;-><init>(Lorg/htmlcleaner/ContentNode;Lorg/htmlcleaner/TagNode;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1056
    :cond_5
    :goto_1
    invoke-direct {p0, v0, p3}, Lorg/htmlcleaner/HtmlCleaner;->isAllowedInLastOpenTag(Lorg/htmlcleaner/BaseToken;Lorg/htmlcleaner/CleanTimeValues;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1057
    invoke-direct {p0, p1, v0, p3}, Lorg/htmlcleaner/HtmlCleaner;->saveToLastOpenTag(Ljava/util/List;Ljava/lang/Object;Lorg/htmlcleaner/CleanTimeValues;)V

    const/4 v0, 0x0

    .line 1058
    invoke-interface {p2, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public setInnerHtml(Lorg/htmlcleaner/TagNode;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 1406
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    .line 1408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " htmlcleaner_marker=\'\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "</"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ">"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_0

    .line 1411
    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1412
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object p2

    goto :goto_0

    .line 1417
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object p2

    const-string v0, "htmlcleaner_marker"

    const/4 v1, 0x1

    .line 1418
    invoke-virtual {p2, v0, v1}, Lorg/htmlcleaner/TagNode;->findElementHavingAttribute(Ljava/lang/String;Z)Lorg/htmlcleaner/TagNode;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1420
    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/htmlcleaner/TagNode;->setChildren(Ljava/util/List;)V

    :cond_1
    return-void
.end method
