.class public final Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;
.super Ljava/lang/Object;
.source "PartnerAdUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;",
        "",
        "()V",
        "getCreativeSizeFromPartnerAdDetails",
        "Landroid/util/Size;",
        "partnerAd",
        "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
        "requestedSize",
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
.field public static final INSTANCE:Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;

    invoke-direct {v0}, Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;-><init>()V

    sput-object v0, Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;->INSTANCE:Lcom/chartboost/heliumsdk/domain/PartnerAdUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCreativeSizeFromPartnerAdDetails(Lcom/chartboost/heliumsdk/domain/PartnerAd;Landroid/util/Size;)Landroid/util/Size;
    .locals 3

    const-string v0, "partnerAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestedSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Landroid/util/Size;

    .line 19
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getDetails()Ljava/util/Map;

    move-result-object v1

    const-string v2, "banner_width_dips"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 20
    :goto_0
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getDetails()Ljava/util/Map;

    move-result-object p1

    const-string v2, "banner_height_dips"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 18
    :goto_1
    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method
