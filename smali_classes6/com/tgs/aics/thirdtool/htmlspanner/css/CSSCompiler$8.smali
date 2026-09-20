.class Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$8;
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
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/Float;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$8;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$8;->val$value:Ljava/lang/String;

    iput-object p3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$8;->val$number:Ljava/lang/Float;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Applying style "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$8;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$8;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSSCompiler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p2}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->isUseFontSizeFromStyle()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$8;->val$number:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget-object v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->EM:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-direct {p2, v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;-><init>(FLcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;)V

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setFontSize(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p1

    :cond_0
    return-object p1
.end method
