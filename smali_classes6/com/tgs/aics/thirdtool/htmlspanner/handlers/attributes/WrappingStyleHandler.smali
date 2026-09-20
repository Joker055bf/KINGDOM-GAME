.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;
.source "WrappingStyleHandler.java"


# instance fields
.field private wrappedHandler:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>()V

    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)V

    .line 23
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;->wrappedHandler:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    return-void
.end method


# virtual methods
.method public beforeChildren(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;->wrappedHandler:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1, p2, p3}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->beforeChildren(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    :cond_0
    return-void
.end method

.method public getStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;->wrappedHandler:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->getStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedHandler()Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;->wrappedHandler:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    return-object v0
.end method

.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 7

    .line 41
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;->wrappedHandler:Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 42
    invoke-virtual/range {v0 .. v6}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    :cond_0
    return-void
.end method

.method public setSpanner(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->setSpanner(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V

    .line 54
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;->getWrappedHandler()Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;->getWrappedHandler()Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->setSpanner(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V

    :cond_0
    return-void
.end method
