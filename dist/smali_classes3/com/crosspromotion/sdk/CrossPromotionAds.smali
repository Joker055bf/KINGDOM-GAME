.class public final Lcom/crosspromotion/sdk/CrossPromotionAds;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.6"

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/core/b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/crosspromotion/sdk/core/b;->a(Landroid/content/Context;)V

    return-void
.end method
