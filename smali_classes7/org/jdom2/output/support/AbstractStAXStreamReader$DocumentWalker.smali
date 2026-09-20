.class final Lorg/jdom2/output/support/AbstractStAXStreamReader$DocumentWalker;
.super Ljava/lang/Object;
.source "AbstractStAXStreamReader.java"

# interfaces
.implements Lorg/jdom2/output/support/Walker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/output/support/AbstractStAXStreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DocumentWalker"
.end annotation


# instance fields
.field private final data:[Lorg/jdom2/Content;

.field private pos:I


# direct methods
.method public constructor <init>(Lorg/jdom2/Document;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader$DocumentWalker;->pos:I

    .line 115
    invoke-virtual {p1}, Lorg/jdom2/Document;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom2/Document;->getContentSize()I

    move-result p1

    new-array p1, p1, [Lorg/jdom2/Content;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/jdom2/Content;

    iput-object p1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader$DocumentWalker;->data:[Lorg/jdom2/Content;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 130
    iget v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader$DocumentWalker;->pos:I

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader$DocumentWalker;->data:[Lorg/jdom2/Content;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllText()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAllWhitespace()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCDATA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()Lorg/jdom2/Content;
    .locals 3

    .line 135
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader$DocumentWalker;->data:[Lorg/jdom2/Content;

    iget v1, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader$DocumentWalker;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom2/output/support/AbstractStAXStreamReader$DocumentWalker;->pos:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public text()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
