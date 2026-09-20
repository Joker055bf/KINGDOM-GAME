.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/WrappingHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
.source "WrappingHandler.java"


# instance fields
.field private wrappedHandler:Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/WrappingHandler;->wrappedHandler:Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;

    return-void
.end method


# virtual methods
.method protected getWrappedHandler()Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/WrappingHandler;->wrappedHandler:Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;

    return-object v0
.end method

.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 6

    .line 24
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/WrappingHandler;->wrappedHandler:Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;->handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    return-void
.end method

.method public setSpanner(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;->setSpanner(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V

    .line 30
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/WrappingHandler;->wrappedHandler:Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;->setSpanner(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V

    return-void
.end method
