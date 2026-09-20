.class Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$3;
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
.field final synthetic val$alignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$3;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$3;->val$value:Ljava/lang/String;

    iput-object p3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$3;->val$alignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 1

    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Applying style "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$3;->val$key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$3;->val$value:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CSSCompiler"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$3;->val$alignment:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setTextAlignment(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p1

    return-object p1
.end method
