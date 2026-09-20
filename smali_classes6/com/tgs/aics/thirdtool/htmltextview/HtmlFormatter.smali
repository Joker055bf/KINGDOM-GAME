.class public Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter;
.super Ljava/lang/Object;
.source "HtmlFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatHtml(Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;)Landroid/text/Spanned;
    .locals 7

    .line 31
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->getImageGetter()Landroid/text/Html$ImageGetter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->getClickableTableSpan()Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;

    move-result-object v2

    .line 32
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->getDrawTableLinkSpan()Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;

    move-result-object v3

    new-instance v4, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$1;

    invoke-direct {v4, p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$1;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;)V

    .line 36
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->getIndent()F

    move-result v5

    .line 37
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->isRemoveTrailingWhiteSpace()Z

    move-result v6

    .line 30
    invoke-static/range {v0 .. v6}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter;->formatHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;FZ)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static formatHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;FZ)Landroid/text/Spanned;
    .locals 1

    .line 46
    new-instance v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;-><init>()V

    .line 47
    invoke-virtual {v0, p2}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->setClickableTableSpan(Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;)V

    .line 48
    invoke-virtual {v0, p3}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->setDrawTableLinkSpan(Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;)V

    .line 49
    invoke-virtual {v0, p4}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->setOnClickATagListenerProvider(Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;)V

    .line 50
    invoke-virtual {v0, p5}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->setListIndentPx(F)V

    .line 52
    invoke-virtual {v0, p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->overrideTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p6, :cond_0

    .line 56
    new-instance p2, Lcom/tgs/aics/thirdtool/htmltextview/WrapperContentHandler;

    invoke-direct {p2, v0}, Lcom/tgs/aics/thirdtool/htmltextview/WrapperContentHandler;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/WrapperTagHandler;)V

    invoke-static {p0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter;->removeHtmlBottomPadding(Landroid/text/Spanned;)Landroid/text/Spanned;

    move-result-object p0

    goto :goto_0

    .line 58
    :cond_0
    new-instance p2, Lcom/tgs/aics/thirdtool/htmltextview/WrapperContentHandler;

    invoke-direct {p2, v0}, Lcom/tgs/aics/thirdtool/htmltextview/WrapperContentHandler;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/WrapperTagHandler;)V

    invoke-static {p0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static removeHtmlBottomPadding(Landroid/text/Spanned;)Landroid/text/Spanned;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 76
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/Spanned;

    goto :goto_0

    :cond_1
    return-object p0
.end method
