.class Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$1;
.super Ljava/lang/Object;
.source "HtmlSpanner.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/htmlspanner/ContrastPatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;


# direct methods
.method constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner$1;->this$0:Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public patchBackgroundColor(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)Ljava/lang/Integer;
    .locals 0

    .line 82
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public patchFontColor(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;)Ljava/lang/Integer;
    .locals 0

    .line 87
    invoke-virtual {p1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->getColor()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
