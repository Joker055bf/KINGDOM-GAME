.class public interface abstract Lorg/htmlcleaner/HtmlNode;
.super Ljava/lang/Object;
.source "HtmlNode.java"

# interfaces
.implements Lorg/htmlcleaner/BaseToken;


# virtual methods
.method public abstract getParent()Lorg/htmlcleaner/TagNode;
.end method

.method public abstract getSiblings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/htmlcleaner/BaseToken;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setParent(Lorg/htmlcleaner/TagNode;)V
.end method
