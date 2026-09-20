.class public Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;
.super Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView;
.source "HtmlTextView.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "HtmlTextView"


# instance fields
.field public blockQuoteBackgroundColor:I

.field public blockQuoteGap:F

.field public blockQuoteStripColor:I

.field public blockQuoteStripWidth:F

.field private clickableTableSpan:Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;

.field private drawTableLinkSpan:Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;

.field private indent:F

.field private onClickATagListener:Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;

.field private removeTrailingWhiteSpace:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/tgs/service/ai/R$color;->white:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteBackgroundColor:I

    .line 40
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/tgs/service/ai/R$color;->black:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteStripColor:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 41
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteStripWidth:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 42
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteGap:F

    const/high16 p1, 0x41c00000    # 24.0f

    .line 49
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->indent:F

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->removeTrailingWhiteSpace:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/tgs/service/ai/R$color;->white:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteBackgroundColor:I

    .line 40
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/tgs/service/ai/R$color;->black:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteStripColor:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 41
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteStripWidth:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 42
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteGap:F

    const/high16 p1, 0x41c00000    # 24.0f

    .line 49
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->indent:F

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->removeTrailingWhiteSpace:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/thirdtool/htmltextview/JellyBeanSpanFixTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/tgs/service/ai/R$color;->white:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteBackgroundColor:I

    .line 40
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/tgs/service/ai/R$color;->black:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteStripColor:I

    const/high16 p1, 0x41200000    # 10.0f

    .line 41
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteStripWidth:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 42
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteGap:F

    const/high16 p1, 0x41c00000    # 24.0f

    .line 49
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->indent:F

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->removeTrailingWhiteSpace:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;)Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->onClickATagListener:Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;

    return-object p0
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 158
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string p0, "\\A"

    invoke-virtual {v0, p0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private replaceQuoteSpans(Landroid/text/Spanned;)V
    .locals 11

    .line 164
    check-cast p1, Landroid/text/Spannable;

    .line 165
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-class v1, Landroid/text/style/QuoteSpan;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/QuoteSpan;

    .line 166
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 167
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 168
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 169
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 170
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 171
    new-instance v3, Lcom/tgs/aics/thirdtool/htmltextview/DesignQuoteSpan;

    iget v7, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteBackgroundColor:I

    iget v8, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteStripColor:I

    iget v9, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteStripWidth:F

    iget v10, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->blockQuoteGap:F

    invoke-direct {v3, v7, v8, v9, v10}, Lcom/tgs/aics/thirdtool/htmltextview/DesignQuoteSpan;-><init>(IIFF)V

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public setClickableTableSpan(Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->clickableTableSpan:Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;

    return-void
.end method

.method public setDrawTableLinkSpan(Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->drawTableLinkSpan:Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;

    return-void
.end method

.method public setHtml(I)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->setHtml(ILandroid/text/Html$ImageGetter;)V

    return-void
.end method

.method public setHtml(ILandroid/text/Html$ImageGetter;)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 91
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V

    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V

    return-void
.end method

.method public setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V
    .locals 7

    .line 103
    iget-object v2, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->clickableTableSpan:Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;

    iget-object v3, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->drawTableLinkSpan:Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;

    new-instance v4, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView$1;

    invoke-direct {v4, p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView$1;-><init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;)V

    iget v5, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->indent:F

    iget-boolean v6, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->removeTrailingWhiteSpace:Z

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter;->formatHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;FZ)Landroid/text/Spanned;

    move-result-object p1

    .line 112
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->replaceQuoteSpans(Landroid/text/Spanned;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-static {}, Lcom/tgs/aics/thirdtool/htmltextview/LocalLinkMovementMethod;->getInstance()Lcom/tgs/aics/thirdtool/htmltextview/LocalLinkMovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public setListIndentPx(F)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->indent:F

    return-void
.end method

.method public setOnClickATagListener(Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->onClickATagListener:Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;

    return-void
.end method

.method public setRemoveTrailingWhiteSpace(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->removeTrailingWhiteSpace:Z

    return-void
.end method
