.class Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView$1;
.super Ljava/lang/Object;
.source "HtmlTextView.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;


# direct methods
.method constructor <init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView$1;->this$0:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideTagClickListener()Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView$1;->this$0:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->access$000(Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;)Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;

    move-result-object v0

    return-object v0
.end method
