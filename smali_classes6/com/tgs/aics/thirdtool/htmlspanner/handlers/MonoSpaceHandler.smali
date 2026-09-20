.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/MonoSpaceHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;
.source "MonoSpaceHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/StyledTextHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getStyle()Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;
    .locals 2

    .line 40
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/MonoSpaceHandler;->getSpanner()Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->getFontResolver()Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;

    move-result-object v1

    invoke-interface {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;->getMonoSpaceFont()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;->setFontFamily(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)Lcom/tgs/aics/thirdtool/htmlspanner/style/Style;

    move-result-object v0

    return-object v0
.end method
