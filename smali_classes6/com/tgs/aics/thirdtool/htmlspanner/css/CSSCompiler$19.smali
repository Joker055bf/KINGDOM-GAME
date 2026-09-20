.class Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$19;
.super Ljava/lang/Object;
.source "CSSCompiler.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->parseBorder(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finalBorderColor:Ljava/lang/Integer;

.field final synthetic val$finalBorderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

.field final synthetic val$finalBorderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 575
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$19;->val$finalBorderColor:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$19;->val$finalBorderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iput-object p3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$19;->val$finalBorderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 0

    .line 579
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$19;->val$finalBorderColor:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 580
    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setBorderColor(Ljava/lang/Integer;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p1

    .line 583
    :cond_0
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$19;->val$finalBorderWidth:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    if-eqz p2, :cond_1

    .line 584
    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setBorderWidth(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p1

    .line 587
    :cond_1
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$19;->val$finalBorderStyle:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;

    if-eqz p2, :cond_2

    .line 588
    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setBorderStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$BorderStyle;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p1

    :cond_2
    return-object p1
.end method
