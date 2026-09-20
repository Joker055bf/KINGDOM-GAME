.class Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$17;
.super Ljava/lang/Object;
.source "CSSCompiler.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->getStyleUpdater(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$borderColor:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 459
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$17;->val$borderColor:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 0

    .line 462
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$17;->val$borderColor:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setBorderColor(Ljava/lang/Integer;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p1

    return-object p1
.end method
