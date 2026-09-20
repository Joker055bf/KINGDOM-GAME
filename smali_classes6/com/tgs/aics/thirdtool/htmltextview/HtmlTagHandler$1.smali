.class Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;
.super Landroid/text/style/URLSpan;
.source "HtmlTagHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;

.field final synthetic val$spannedText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;->this$0:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;

    iput-object p3, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;->val$spannedText:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;->this$0:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->access$1100(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;)Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;->this$0:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;

    .line 275
    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;->access$1100(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler;)Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;->provideTagClickListener()Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;->val$spannedText:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTagHandler$1;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;->onClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
