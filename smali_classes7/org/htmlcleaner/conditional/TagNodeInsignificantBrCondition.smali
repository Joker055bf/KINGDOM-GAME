.class public Lorg/htmlcleaner/conditional/TagNodeInsignificantBrCondition;
.super Ljava/lang/Object;
.source "TagNodeInsignificantBrCondition.java"

# interfaces
.implements Lorg/htmlcleaner/conditional/ITagNodeCondition;


# static fields
.field private static final BR_TAG:Ljava/lang/String; = "br"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkSublist(IILjava/util/List;)Z
    .locals 1

    .line 35
    invoke-interface {p3, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 37
    instance-of p3, p2, Lorg/htmlcleaner/TagNode;

    const/4 v0, 0x0

    if-nez p3, :cond_1

    return v0

    .line 40
    :cond_1
    check-cast p2, Lorg/htmlcleaner/TagNode;

    .line 41
    invoke-direct {p0, p2}, Lorg/htmlcleaner/conditional/TagNodeInsignificantBrCondition;->isBrNode(Lorg/htmlcleaner/TagNode;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lorg/htmlcleaner/TagNode;->isPruned()Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isBrNode(Lorg/htmlcleaner/TagNode;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "br"

    .line 31
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public satisfy(Lorg/htmlcleaner/TagNode;)Z
    .locals 3

    .line 21
    invoke-direct {p0, p1}, Lorg/htmlcleaner/conditional/TagNodeInsignificantBrCondition;->isBrNode(Lorg/htmlcleaner/TagNode;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getParent()Lorg/htmlcleaner/TagNode;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 27
    invoke-direct {p0, v1, p1, v0}, Lorg/htmlcleaner/conditional/TagNodeInsignificantBrCondition;->checkSublist(IILjava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, p1, v2, v0}, Lorg/htmlcleaner/conditional/TagNodeInsignificantBrCondition;->checkSublist(IILjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
