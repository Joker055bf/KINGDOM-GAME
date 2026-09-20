.class public abstract Lcom/onevcat/uniwebview/internal/obfuscated/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)Landroid/graphics/Point;
    .locals 6

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    .line 2
    new-instance v1, Landroid/graphics/Point;

    .line 3
    sget-boolean v2, Lcom/onevcat/uniwebview/d;->z:Z

    const/4 v3, 0x0

    const v4, 0x461c4000    # 10000.0f

    if-eqz v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    sub-float/2addr v0, v5

    float-to-int v0, v0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    sub-float/2addr p0, v3

    float-to-int p0, p0

    .line 4
    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method
