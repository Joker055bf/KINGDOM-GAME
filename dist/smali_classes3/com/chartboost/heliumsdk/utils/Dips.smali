.class public final Lcom/chartboost/heliumsdk/utils/Dips;
.super Ljava/lang/Object;
.source "Dips.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/utils/Dips;",
        "",
        "()V",
        "dipsToPixelsInt",
        "",
        "length",
        "context",
        "Landroid/content/Context;",
        "getDensity",
        "",
        "pixelsToIntDips",
        "Helium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/chartboost/heliumsdk/utils/Dips;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chartboost/heliumsdk/utils/Dips;

    invoke-direct {v0}, Lcom/chartboost/heliumsdk/utils/Dips;-><init>()V

    sput-object v0, Lcom/chartboost/heliumsdk/utils/Dips;->INSTANCE:Lcom/chartboost/heliumsdk/utils/Dips;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDensity(Landroid/content/Context;)F
    .locals 0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    return p1
.end method


# virtual methods
.method public final dipsToPixelsInt(ILandroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p1

    .line 34
    invoke-direct {p0, p2}, Lcom/chartboost/heliumsdk/utils/Dips;->getDensity(Landroid/content/Context;)F

    move-result p2

    mul-float/2addr p1, p2

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    return p1
.end method

.method public final pixelsToIntDips(ILandroid/content/Context;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p2}, Lcom/chartboost/heliumsdk/utils/Dips;->getDensity(Landroid/content/Context;)F

    move-result p2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    int-to-float p1, p1

    div-float/2addr p1, p2

    .line 23
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    :cond_1
    return v1
.end method
