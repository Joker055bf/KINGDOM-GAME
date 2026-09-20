.class public Lorg/htmlcleaner/BaseHtmlNode;
.super Lorg/htmlcleaner/BaseTokenImpl;
.source "BaseHtmlNode.java"

# interfaces
.implements Lorg/htmlcleaner/HtmlNode;


# instance fields
.field protected parent:Lorg/htmlcleaner/TagNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/htmlcleaner/BaseTokenImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getParent()Lorg/htmlcleaner/TagNode;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/htmlcleaner/BaseHtmlNode;->parent:Lorg/htmlcleaner/TagNode;

    return-object v0
.end method

.method public getSiblings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/htmlcleaner/BaseToken;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/htmlcleaner/BaseHtmlNode;->parent:Lorg/htmlcleaner/TagNode;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lorg/htmlcleaner/TagNode;->getAllChildren()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setParent(Lorg/htmlcleaner/TagNode;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lorg/htmlcleaner/BaseHtmlNode;->parent:Lorg/htmlcleaner/TagNode;

    return-void
.end method
