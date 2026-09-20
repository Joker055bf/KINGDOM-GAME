.class Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$11;
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
.field final synthetic val$styleValue:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;


# direct methods
.method constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 372
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$11;->val$styleValue:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 0

    .line 375
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$11;->val$styleValue:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setMarginTop(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p1

    return-object p1
.end method
