.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/BorderAttributeHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;
.source "BorderAttributeHandler.java"


# direct methods
.method public constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;)V

    return-void
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 2

    const-string v0, "border"

    .line 28
    invoke-virtual {p1, v0}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding BorderSpan from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BorderAttributeHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/BorderAttributeHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object v1

    invoke-direct {v0, p5, p3, p4, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/spans/BorderSpan;-><init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;IILcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V

    invoke-virtual {p6, v0, p3, p4}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    .line 33
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/attributes/WrappingStyleHandler;->handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V

    return-void
.end method
