.class Lorg/htmlcleaner/OpenTags;
.super Ljava/lang/Object;
.source "OpenTags.java"


# instance fields
.field private final htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

.field private last:Lorg/htmlcleaner/TagPos;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/htmlcleaner/TagPos;",
            ">;"
        }
    .end annotation
.end field

.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/htmlcleaner/HtmlCleaner;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/OpenTags;->set:Ljava/util/Set;

    .line 23
    iput-object p1, p0, Lorg/htmlcleaner/OpenTags;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    return-void
.end method


# virtual methods
.method addTag(Ljava/lang/String;Lorg/htmlcleaner/TagInfo;ILorg/htmlcleaner/CleanTimeValues;)V
    .locals 1

    .line 35
    new-instance v0, Lorg/htmlcleaner/TagPos;

    invoke-direct {v0, p3, p1, p2, p4}, Lorg/htmlcleaner/TagPos;-><init>(ILjava/lang/String;Lorg/htmlcleaner/TagInfo;Lorg/htmlcleaner/CleanTimeValues;)V

    iput-object v0, p0, Lorg/htmlcleaner/OpenTags;->last:Lorg/htmlcleaner/TagPos;

    .line 36
    iget-object p2, p0, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p2, p0, Lorg/htmlcleaner/OpenTags;->set:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method findFirstTagPos()Lorg/htmlcleaner/TagPos;
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/TagPos;

    :goto_0
    return-object v0
.end method

.method findTag(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagPos;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 67
    iget-object v1, p0, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lorg/htmlcleaner/OpenTags;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {v2, p1, p2}, Lorg/htmlcleaner/HtmlCleaner;->getTagInfo(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagInfo;

    move-result-object p2

    .line 71
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-object p1, p0, Lorg/htmlcleaner/OpenTags;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {p1}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-object v0

    .line 76
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlcleaner/TagPos;

    .line 77
    iget-object v3, v2, Lorg/htmlcleaner/TagPos;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    if-eqz p2, :cond_0

    .line 79
    iget-object v2, v2, Lorg/htmlcleaner/TagPos;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lorg/htmlcleaner/TagInfo;->isFatalTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    return-object v0
.end method

.method findTagToPlaceRubbish()Lorg/htmlcleaner/TagPos;
    .locals 5

    .line 97
    invoke-virtual {p0}, Lorg/htmlcleaner/OpenTags;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 98
    iget-object v0, p0, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    move-object v2, v1

    :cond_0
    move-object v3, v2

    .line 99
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v0, p0, Lorg/htmlcleaner/OpenTags;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {v0}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    return-object v1

    .line 104
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlcleaner/TagPos;

    .line 105
    iget-object v4, v2, Lorg/htmlcleaner/TagPos;->info:Lorg/htmlcleaner/TagInfo;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lorg/htmlcleaner/TagPos;->info:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v4}, Lorg/htmlcleaner/TagInfo;->allowsAnything()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    if-eqz v3, :cond_0

    return-object v3

    :cond_3
    move-object v1, v2

    :cond_4
    return-object v1
.end method

.method getLastTagPos()Lorg/htmlcleaner/TagPos;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/htmlcleaner/OpenTags;->last:Lorg/htmlcleaner/TagPos;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method removeTag(Ljava/lang/String;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 42
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object p1, p0, Lorg/htmlcleaner/OpenTags;->htmlCleaner:Lorg/htmlcleaner/HtmlCleaner;

    invoke-virtual {p1}, Lorg/htmlcleaner/HtmlCleaner;->handleInterruption()V

    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlcleaner/TagPos;

    .line 48
    iget-object v1, v1, Lorg/htmlcleaner/TagPos;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 54
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/htmlcleaner/TagPos;

    :goto_1
    iput-object p1, p0, Lorg/htmlcleaner/OpenTags;->last:Lorg/htmlcleaner/TagPos;

    return-void
.end method

.method someAlreadyOpen(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/htmlcleaner/OpenTags;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlcleaner/TagPos;

    .line 127
    iget-object v1, v1, Lorg/htmlcleaner/TagPos;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method tagEncountered(Ljava/lang/String;)Z
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/htmlcleaner/OpenTags;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method tagExists(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Z
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2}, Lorg/htmlcleaner/OpenTags;->findTag(Ljava/lang/String;Lorg/htmlcleaner/CleanTimeValues;)Lorg/htmlcleaner/TagPos;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
