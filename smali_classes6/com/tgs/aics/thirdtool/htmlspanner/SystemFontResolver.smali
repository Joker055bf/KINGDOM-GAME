.class public Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;
.super Ljava/lang/Object;
.source "SystemFontResolver.java"

# interfaces
.implements Lcom/tgs/aics/thirdtool/htmlspanner/FontResolver;


# instance fields
.field private defaultFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

.field private monoSpaceFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

.field private sansSerifFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

.field private serifFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    const-string v1, "default"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->defaultFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    .line 26
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    const-string v1, "serif"

    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->serifFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    .line 27
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    const-string v1, "sans-serif"

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->sansSerifFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    .line 28
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    const-string v1, "monospace"

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->monoSpaceFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    return-void
.end method


# virtual methods
.method public getDefaultFont()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->defaultFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    return-object v0
.end method

.method public getFont(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;
    .locals 5

    if-eqz p1, :cond_3

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, ",(\\s)*"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 65
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 67
    aget-object v1, p1, v0

    const-string v2, "\""

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "\'"

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 77
    :cond_1
    invoke-virtual {p0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->resolveFont(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->getDefaultFont()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object p1

    return-object p1
.end method

.method public getMonoSpaceFont()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->monoSpaceFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    return-object v0
.end method

.method public getSansSerifFont()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->sansSerifFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    return-object v0
.end method

.method public getSerifFont()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->serifFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    return-object v0
.end method

.method protected resolveFont(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to resolve font "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemFontResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "serif"

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->getSerifFont()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "sans-serif"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->getSansSerifFont()Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "monospace"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->monoSpaceFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public setDefaultFont(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->defaultFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    return-void
.end method

.method public setSansSerifFont(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->sansSerifFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    return-void
.end method

.method public setSerifFont(Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/SystemFontResolver;->serifFont:Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;

    return-void
.end method
