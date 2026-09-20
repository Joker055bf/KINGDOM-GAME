.class Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$20;
.super Ljava/lang/Object;
.source "CSSCompiler.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler;->parseMargin(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$StyleUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

.field final synthetic val$marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

.field final synthetic val$marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

.field final synthetic val$marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;


# direct methods
.method constructor <init>(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 636
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$20;->val$marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iput-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$20;->val$marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iput-object p3, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$20;->val$marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    iput-object p4, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$20;->val$marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 0

    .line 641
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$20;->val$marginBottom:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    if-eqz p2, :cond_0

    .line 642
    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setMarginBottom(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p1

    .line 645
    :cond_0
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$20;->val$marginTop:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    if-eqz p2, :cond_1

    .line 646
    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setMarginTop(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p1

    .line 649
    :cond_1
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$20;->val$marginLeft:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    if-eqz p2, :cond_2

    .line 650
    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setMarginLeft(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p1

    .line 653
    :cond_2
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/css/CSSCompiler$20;->val$marginRight:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    if-eqz p2, :cond_3

    .line 654
    invoke-virtual {p1, p2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setMarginRight(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object p1

    :cond_3
    return-object p1
.end method
