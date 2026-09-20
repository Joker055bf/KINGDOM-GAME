.class public final Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;
.super Ljava/lang/Object;
.source "HeliumBannerAd.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u001a\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\tH\u0007J\n\u0010\u0015\u001a\u00020\u0016*\u00020\u0004R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;",
        "",
        "()V",
        "LEADERBOARD",
        "Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;",
        "MEDIUM",
        "STANDARD",
        "adaptive10x1",
        "width",
        "",
        "adaptive1x1",
        "adaptive1x2",
        "adaptive1x3",
        "adaptive1x4",
        "adaptive2x1",
        "adaptive4x1",
        "adaptive6x1",
        "adaptive8x1",
        "adaptive9x16",
        "bannerSize",
        "height",
        "asSize",
        "Landroid/util/Size;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;-><init>()V

    return-void
.end method

.method public static synthetic bannerSize$default(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;IIILjava/lang/Object;)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 184
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->bannerSize(II)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final adaptive10x1(I)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 200
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->bannerSize(II)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object p1

    return-object p1
.end method

.method public final adaptive1x1(I)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;
    .locals 0

    .line 210
    invoke-virtual {p0, p1, p1}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->bannerSize(II)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object p1

    return-object p1
.end method

.method public final adaptive1x2(I)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 202
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->bannerSize(II)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object p1

    return-object p1
.end method

.method public final adaptive1x3(I)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->bannerSize(II)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object p1

    return-object p1
.end method

.method public final adaptive1x4(I)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 206
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->bannerSize(II)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object p1

    return-object p1
.end method

.method public final adaptive2x1(I)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 192
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->bannerSize(II)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object p1

    return-object p1
.end method

.method public final adaptive4x1(I)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->bannerSize(II)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object p1

    return-object p1
.end method

.method public final adaptive6x1(I)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 196
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->bannerSize(II)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object p1

    return-object p1
.end method

.method public final adaptive8x1(I)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->bannerSize(II)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object p1

    return-object p1
.end method

.method public final adaptive9x16(I)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 208
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize$Companion;->bannerSize(II)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    move-result-object p1

    return-object p1
.end method

.method public final asSize(Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;)Landroid/util/Size;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public final bannerSize(II)Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 188
    new-instance v6, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;

    const-string v1, "ADAPTIVE"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAd$HeliumBannerSize;-><init>(Ljava/lang/String;IIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method
