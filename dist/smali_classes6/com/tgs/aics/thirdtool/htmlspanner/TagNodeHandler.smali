.class public abstract Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
.super Ljava/lang/Object;
.source "TagNodeHandler.java"


# instance fields
.field private spanner:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected appendNewLine(Landroid/text/SpannableStringBuilder;)Z
    .locals 4

    .line 118
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;->spanner:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->isStripExtraWhiteSpace()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 122
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    sub-int/2addr v0, v1

    .line 123
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "\n"

    .line 128
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public beforeChildren(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 0

    return-void
.end method

.method protected getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;->spanner:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    return-object v0
.end method

.method public abstract handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
.end method

.method public rendersContent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setSpanner(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;->spanner:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    return-void
.end method
