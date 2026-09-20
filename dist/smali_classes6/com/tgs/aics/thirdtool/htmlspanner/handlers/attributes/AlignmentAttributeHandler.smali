.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/AlignmentAttributeHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;
.source "AlignmentAttributeHandler.java"


# direct methods
.method public constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)V

    return-void
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 7

    const-string v0, "align"

    .line 43
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "right"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->RIGHT:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    invoke-virtual {p5, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setTextAlignment(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p5

    :cond_0
    :goto_0
    move-object v5, p5

    goto :goto_1

    :cond_1
    const-string v1, "center"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->CENTER:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    invoke-virtual {p5, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setTextAlignment(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p5

    goto :goto_0

    :cond_2
    const-string v1, "left"

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->LEFT:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    invoke-virtual {p5, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setTextAlignment(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p5

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    .line 53
    invoke-super/range {v0 .. v6}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;->handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    return-void
.end method
