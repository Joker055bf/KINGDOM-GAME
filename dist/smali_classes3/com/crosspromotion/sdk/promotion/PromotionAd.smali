.class public final Lcom/crosspromotion/sdk/promotion/PromotionAd;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideAd(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/core/b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/crosspromotion/sdk/core/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static isReady(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/core/b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/crosspromotion/sdk/core/b;->f(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadAd(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/core/b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/crosspromotion/sdk/core/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setAdListener(Ljava/lang/String;Lcom/crosspromotion/sdk/promotion/PromotionAdListener;)V
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/core/b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/crosspromotion/sdk/core/b;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/promotion/PromotionAdListener;)V

    return-void
.end method

.method public static showAd(Landroid/app/Activity;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/core/b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/crosspromotion/sdk/core/b;->a(Landroid/app/Activity;Lcom/crosspromotion/sdk/promotion/PromotionAdRect;Ljava/lang/String;)V

    return-void
.end method
