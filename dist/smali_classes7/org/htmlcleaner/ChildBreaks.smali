.class Lorg/htmlcleaner/ChildBreaks;
.super Ljava/lang/Object;
.source "ChildBreaks.java"


# instance fields
.field private breakingTags:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/htmlcleaner/TagPos;",
            ">;"
        }
    .end annotation
.end field

.field closedByChildBreak:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/htmlcleaner/TagPos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/ChildBreaks;->closedByChildBreak:Ljava/util/Stack;

    .line 14
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/htmlcleaner/ChildBreaks;->breakingTags:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public addBreak(Lorg/htmlcleaner/TagPos;Lorg/htmlcleaner/TagPos;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/htmlcleaner/ChildBreaks;->closedByChildBreak:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p1, p0, Lorg/htmlcleaner/ChildBreaks;->breakingTags:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLastBreakingTag()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/htmlcleaner/ChildBreaks;->breakingTags:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/TagPos;

    iget-object v0, v0, Lorg/htmlcleaner/TagPos;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getLastBreakingTagPosition()I
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/htmlcleaner/ChildBreaks;->breakingTags:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/htmlcleaner/ChildBreaks;->breakingTags:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/TagPos;

    iget v0, v0, Lorg/htmlcleaner/TagPos;->position:I

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/htmlcleaner/ChildBreaks;->closedByChildBreak:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public pop()Lorg/htmlcleaner/TagPos;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/htmlcleaner/ChildBreaks;->breakingTags:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lorg/htmlcleaner/ChildBreaks;->closedByChildBreak:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlcleaner/TagPos;

    return-object v0
.end method
