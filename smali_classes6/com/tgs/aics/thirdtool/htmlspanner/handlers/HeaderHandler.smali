.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;
.source "HeaderHandler.java"


# instance fields
.field private final margin:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

.field private final size:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>()V

    .line 53
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    sget-object v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->EM:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-direct {v0, p1, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;-><init>(FLcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;)V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;->size:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    .line 54
    new-instance p1, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->EM:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-direct {p1, p2, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;-><init>(FLcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;)V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;->margin:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    return-void
.end method


# virtual methods
.method public getStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;->getStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;->size:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setFontSize(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;->BOLD:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;

    .line 60
    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setFontWeight(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$FontWeight;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;->BLOCK:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;

    .line 61
    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setDisplayStyle(Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$DisplayStyle;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;->margin:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    .line 62
    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setMarginBottom(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/HeaderHandler;->margin:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    .line 63
    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setMarginTop(Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    return-object v0
.end method
