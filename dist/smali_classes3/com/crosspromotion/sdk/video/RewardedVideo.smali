.class public final Lcom/crosspromotion/sdk/video/RewardedVideo;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isReady(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/core/b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/crosspromotion/sdk/core/b;->g(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadAdWithPayload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/core/b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/crosspromotion/sdk/core/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setAdListener(Ljava/lang/String;Lcom/crosspromotion/sdk/video/RewardedVideoListener;)V
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/core/b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/crosspromotion/sdk/core/b;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/video/RewardedVideoListener;)V

    return-void
.end method

.method public static showAd(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/crosspromotion/sdk/core/b;->a()Lcom/crosspromotion/sdk/core/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/crosspromotion/sdk/core/b;->i(Ljava/lang/String;)V

    return-void
.end method
