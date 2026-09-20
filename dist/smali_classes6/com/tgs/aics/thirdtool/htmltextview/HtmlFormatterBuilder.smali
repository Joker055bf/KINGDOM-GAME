.class public Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;
.super Ljava/lang/Object;
.source "HtmlFormatterBuilder.java"


# instance fields
.field private clickableTableSpan:Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;

.field private drawTableLinkSpan:Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;

.field private html:Ljava/lang/String;

.field private imageGetter:Landroid/text/Html$ImageGetter;

.field private indent:F

.field private onClickATagListener:Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;

.field private removeTrailingWhiteSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41c00000    # 24.0f

    .line 27
    iput v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->indent:F

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->removeTrailingWhiteSpace:Z

    return-void
.end method


# virtual methods
.method public getClickableTableSpan()Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->clickableTableSpan:Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;

    return-object v0
.end method

.method public getDrawTableLinkSpan()Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->drawTableLinkSpan:Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getImageGetter()Landroid/text/Html$ImageGetter;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->imageGetter:Landroid/text/Html$ImageGetter;

    return-object v0
.end method

.method public getIndent()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->indent:F

    return v0
.end method

.method public getOnClickATagListener()Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->onClickATagListener:Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;

    return-object v0
.end method

.method public isRemoveTrailingWhiteSpace()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->removeTrailingWhiteSpace:Z

    return v0
.end method

.method public setClickableTableSpan(Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;)Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->clickableTableSpan:Lcom/tgs/aics/thirdtool/htmltextview/ClickableTableSpan;

    return-object p0
.end method

.method public setDrawTableLinkSpan(Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;)Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->drawTableLinkSpan:Lcom/tgs/aics/thirdtool/htmltextview/DrawTableLinkSpan;

    return-object p0
.end method

.method public setHtml(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->html:Ljava/lang/String;

    return-object p0
.end method

.method public setImageGetter(Landroid/text/Html$ImageGetter;)Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->imageGetter:Landroid/text/Html$ImageGetter;

    return-object p0
.end method

.method public setIndent(F)Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;
    .locals 0

    .line 83
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->indent:F

    return-object p0
.end method

.method public setOnClickATagListener(Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->onClickATagListener:Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;

    return-void
.end method

.method public setRemoveTrailingWhiteSpace(Z)Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->removeTrailingWhiteSpace:Z

    return-object p0
.end method
