.class Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$1;
.super Ljava/lang/Object;
.source "HtmlFormatter.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$TagClickListenerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter;->formatHtml(Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;)Landroid/text/Spanned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;


# direct methods
.method constructor <init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$1;->val$builder:Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideTagClickListener()Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatter$1;->val$builder:Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;

    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlFormatterBuilder;->getOnClickATagListener()Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;

    move-result-object v0

    return-object v0
.end method
