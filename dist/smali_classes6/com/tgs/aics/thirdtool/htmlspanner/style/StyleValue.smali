.class public Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;
.super Ljava/lang/Object;
.source "StyleValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;
    }
.end annotation


# instance fields
.field private floatValue:Ljava/lang/Float;

.field private intValue:Ljava/lang/Integer;

.field private unit:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;


# direct methods
.method public constructor <init>(FLcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->floatValue:Ljava/lang/Float;

    .line 77
    iput-object p2, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->unit:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->PX:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->unit:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->intValue:Ljava/lang/Integer;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;
    .locals 6

    const-string v0, "0"

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    const/4 v0, 0x0

    sget-object v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->EM:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;-><init>(FLcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;)V

    return-object p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "px"

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Can\'t parse value: "

    const-string v4, "StyleValue"

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 36
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->sp2px(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 39
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    const-string v2, "%"

    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "translating percentage "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 50
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->PERCENTAGE:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-direct {v1, v0, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;-><init>(FLcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 52
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t parse font-size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    const-string v1, "em"

    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget-object v2, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;->EM:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-direct {v1, v0, v2}, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;-><init>(FLcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 62
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CSSCompiler"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v5
.end method

.method private static sp2px(F)I
    .locals 1

    .line 102
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public getFloatValue()F
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->floatValue:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->intValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUnit()Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->unit:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->intValue:Ljava/lang/Integer;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->intValue:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->unit:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->floatValue:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue;->unit:Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleValue$Unit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
