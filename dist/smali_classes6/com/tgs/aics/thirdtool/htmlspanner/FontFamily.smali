.class public Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# instance fields
.field private boldItalicTypeface:Landroid/graphics/Typeface;

.field private boldTypeface:Landroid/graphics/Typeface;

.field private defaultTypeface:Landroid/graphics/Typeface;

.field private italicTypeface:Landroid/graphics/Typeface;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->name:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->defaultTypeface:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public getBoldItalicTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->boldItalicTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getBoldTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->boldTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getDefaultTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->defaultTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getItalicTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->italicTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isFakeBold()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->boldTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFakeItalic()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->italicTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBoldItalicTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->boldItalicTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setBoldTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->boldTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setDefaultTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->defaultTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setItalicTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->italicTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/FontFamily;->name:Ljava/lang/String;

    return-object v0
.end method
