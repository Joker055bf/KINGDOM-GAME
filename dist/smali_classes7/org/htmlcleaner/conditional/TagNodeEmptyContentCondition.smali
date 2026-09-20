.class public Lorg/htmlcleaner/conditional/TagNodeEmptyContentCondition;
.super Ljava/lang/Object;
.source "TagNodeEmptyContentCondition.java"

# interfaces
.implements Lorg/htmlcleaner/conditional/ITagNodeCondition;


# static fields
.field private static final ID_ATTRIBUTE_NAME:Ljava/lang/String; = "id"

.field private static final unsafeBlockElements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/htmlcleaner/conditional/TagNodeEmptyContentCondition;->unsafeBlockElements:Ljava/util/Set;

    const-string v1, "td"

    .line 44
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "th"

    .line 45
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/htmlcleaner/ITagInfoProvider;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/htmlcleaner/conditional/TagNodeEmptyContentCondition;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    return-void
.end method

.method private hasIdAttributeSet(Lorg/htmlcleaner/TagNode;)Z
    .locals 1

    .line 90
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAttributes()Ljava/util/Map;

    move-result-object p1

    const-string v0, "id"

    .line 91
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private satisfy(Lorg/htmlcleaner/TagNode;Z)Z
    .locals 5

    .line 57
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/htmlcleaner/conditional/TagNodeEmptyContentCondition;->tagInfoProvider:Lorg/htmlcleaner/ITagInfoProvider;

    invoke-interface {v1, v0}, Lorg/htmlcleaner/ITagInfoProvider;->getTagInfo(Ljava/lang/String;)Lorg/htmlcleaner/TagInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 60
    invoke-direct {p0, p1}, Lorg/htmlcleaner/conditional/TagNodeEmptyContentCondition;->hasIdAttributeSet(Lorg/htmlcleaner/TagNode;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lorg/htmlcleaner/Display;->none:Lorg/htmlcleaner/Display;

    invoke-virtual {v1}, Lorg/htmlcleaner/TagInfo;->getDisplay()Lorg/htmlcleaner/Display;

    move-result-object v4

    if-eq v3, v4, :cond_6

    invoke-virtual {v1}, Lorg/htmlcleaner/TagInfo;->isEmptyTag()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez p2, :cond_0

    sget-object p2, Lorg/htmlcleaner/conditional/TagNodeEmptyContentCondition;->unsafeBlockElements:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 61
    :cond_0
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    .line 62
    invoke-static {p2}, Lorg/htmlcleaner/Utils;->isEmptyString(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 64
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    return v0

    .line 67
    :cond_1
    invoke-virtual {p1}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 70
    instance-of v1, p2, Lorg/htmlcleaner/TagNode;

    if-eqz v1, :cond_3

    .line 71
    check-cast p2, Lorg/htmlcleaner/TagNode;

    invoke-direct {p0, p2, v0}, Lorg/htmlcleaner/conditional/TagNodeEmptyContentCondition;->satisfy(Lorg/htmlcleaner/TagNode;Z)Z

    move-result p2

    if-nez p2, :cond_2

    return v2

    .line 74
    :cond_3
    instance-of v1, p2, Lorg/htmlcleaner/ContentNode;

    if-eqz v1, :cond_4

    .line 75
    check-cast p2, Lorg/htmlcleaner/ContentNode;

    invoke-virtual {p2}, Lorg/htmlcleaner/ContentNode;->isBlank()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_4
    return v2

    :cond_5
    return v0

    :cond_6
    return v2
.end method


# virtual methods
.method public satisfy(Lorg/htmlcleaner/TagNode;)Z
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lorg/htmlcleaner/conditional/TagNodeEmptyContentCondition;->satisfy(Lorg/htmlcleaner/TagNode;Z)Z

    move-result p1

    return p1
.end method
