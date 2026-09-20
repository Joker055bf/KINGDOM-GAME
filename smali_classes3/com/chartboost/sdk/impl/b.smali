.class public final Lcom/chartboost/sdk/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J.\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J,\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\r\u001a\u00020\u000cJ$\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J$\u0010\u000e\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J.\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J.\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J$\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u000b\u001a\u00020\u0012H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/b;",
        "",
        "",
        "adId",
        "Lcom/chartboost/sdk/events/ShowError;",
        "error",
        "Lcom/chartboost/sdk/ads/Ad;",
        "ad",
        "Lcom/chartboost/sdk/callbacks/AdCallback;",
        "callback",
        "",
        "a",
        "",
        "reward",
        "b",
        "Lcom/chartboost/sdk/events/CacheError;",
        "Lcom/chartboost/sdk/events/ClickError;",
        "c",
        "Landroid/os/Handler;",
        "uiHandler",
        "<init>",
        "(Landroid/os/Handler;)V",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/b;->a:Landroid/os/Handler;

    return-void
.end method

.method public static final a(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;Ljava/lang/String;Lcom/chartboost/sdk/events/CacheError;Lcom/chartboost/sdk/impl/b;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdApi"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    .line 59
    new-instance v1, Lcom/chartboost/sdk/events/CacheEvent;

    invoke-direct {v1, p2, p0}, Lcom/chartboost/sdk/events/CacheEvent;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;)V

    invoke-interface {p1, v1, p3}, Lcom/chartboost/sdk/callbacks/AdCallback;->onAdLoaded(Lcom/chartboost/sdk/events/CacheEvent;Lcom/chartboost/sdk/events/CacheError;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    if-nez v1, :cond_1

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Callback missing for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/chartboost/sdk/impl/b;->a(Lcom/chartboost/sdk/ads/Ad;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " on onAdLoaded"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    if-nez v1, :cond_3

    const-string p0, "Ad is missing on onAdLoaded"

    .line 68
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static final a(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;Ljava/lang/String;Lcom/chartboost/sdk/events/ClickError;Lcom/chartboost/sdk/impl/b;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdApi"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    .line 70
    new-instance v1, Lcom/chartboost/sdk/events/ClickEvent;

    invoke-direct {v1, p2, p0}, Lcom/chartboost/sdk/events/ClickEvent;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;)V

    invoke-interface {p1, v1, p3}, Lcom/chartboost/sdk/callbacks/AdCallback;->onAdClicked(Lcom/chartboost/sdk/events/ClickEvent;Lcom/chartboost/sdk/events/ClickError;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    if-nez v1, :cond_1

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Callback missing for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/chartboost/sdk/impl/b;->a(Lcom/chartboost/sdk/ads/Ad;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " on onAdClicked"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    if-nez v1, :cond_3

    const-string p0, "Ad is missing on onAdClicked"

    .line 79
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static final a(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;Ljava/lang/String;Lcom/chartboost/sdk/events/ShowError;Lcom/chartboost/sdk/impl/b;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdApi"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    .line 2
    new-instance v1, Lcom/chartboost/sdk/events/ShowEvent;

    invoke-direct {v1, p2, p0}, Lcom/chartboost/sdk/events/ShowEvent;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;)V

    invoke-interface {p1, v1, p3}, Lcom/chartboost/sdk/callbacks/AdCallback;->onAdShown(Lcom/chartboost/sdk/events/ShowEvent;Lcom/chartboost/sdk/events/ShowError;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    if-nez v1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Callback missing for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/chartboost/sdk/impl/b;->a(Lcom/chartboost/sdk/ads/Ad;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " on onAdShown"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    if-nez v1, :cond_3

    const-string p0, "Ad is missing on onAdShown"

    .line 11
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static final a(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;Ljava/lang/String;Lcom/chartboost/sdk/impl/b;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdApi"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    .line 48
    new-instance v1, Lcom/chartboost/sdk/events/ImpressionEvent;

    invoke-direct {v1, p2, p0}, Lcom/chartboost/sdk/events/ImpressionEvent;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;)V

    invoke-interface {p1, v1}, Lcom/chartboost/sdk/callbacks/AdCallback;->onImpressionRecorded(Lcom/chartboost/sdk/events/ImpressionEvent;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    if-nez v1, :cond_1

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Callback missing for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/chartboost/sdk/impl/b;->a(Lcom/chartboost/sdk/ads/Ad;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " on onImpressionRecorded"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    if-nez v1, :cond_3

    const-string p0, "Ad is missing on onImpressionRecorded"

    .line 57
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static final a(Lcom/chartboost/sdk/callbacks/AdCallback;Lcom/chartboost/sdk/ads/Ad;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "AdApi"

    if-eqz p0, :cond_3

    .line 31
    instance-of v2, p0, Lcom/chartboost/sdk/callbacks/DismissibleAdCallback;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 33
    check-cast p0, Lcom/chartboost/sdk/callbacks/DismissibleAdCallback;

    new-instance v0, Lcom/chartboost/sdk/events/DismissEvent;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/events/DismissEvent;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;)V

    invoke-interface {p0, v0}, Lcom/chartboost/sdk/callbacks/DismissibleAdCallback;->onAdDismiss(Lcom/chartboost/sdk/events/DismissEvent;)V

    .line 34
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    if-nez v0, :cond_2

    const-string p0, "Ad is missing on onAdDismiss"

    .line 36
    invoke-static {v1, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "Invalid ad type to send onAdDismiss"

    .line 38
    invoke-static {v1, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3
    if-nez v0, :cond_4

    const-string p0, "Missing callback on sendDismissCallbackOnMainThread"

    .line 47
    invoke-static {v1, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static final a(Lcom/chartboost/sdk/callbacks/AdCallback;Lcom/chartboost/sdk/ads/Ad;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "AdApi"

    if-eqz p0, :cond_3

    .line 13
    instance-of v2, p0, Lcom/chartboost/sdk/callbacks/RewardedCallback;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 15
    check-cast p0, Lcom/chartboost/sdk/callbacks/RewardedCallback;

    new-instance v0, Lcom/chartboost/sdk/events/RewardEvent;

    invoke-direct {v0, p2, p1, p3}, Lcom/chartboost/sdk/events/RewardEvent;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;I)V

    invoke-interface {p0, v0}, Lcom/chartboost/sdk/callbacks/RewardedCallback;->onRewardEarned(Lcom/chartboost/sdk/events/RewardEvent;)V

    .line 16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    if-nez v0, :cond_2

    const-string p0, "Ad is missing on didEarnReward"

    .line 18
    invoke-static {v1, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "Invalid ad type to send a reward"

    .line 20
    invoke-static {v1, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3
    if-nez v0, :cond_4

    const-string p0, "Missing callback on sendRewardCallbackOnMainThread"

    .line 29
    invoke-static {v1, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static final b(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;Ljava/lang/String;Lcom/chartboost/sdk/impl/b;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdApi"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    .line 2
    new-instance v1, Lcom/chartboost/sdk/events/ShowEvent;

    invoke-direct {v1, p2, p0}, Lcom/chartboost/sdk/events/ShowEvent;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;)V

    invoke-interface {p1, v1}, Lcom/chartboost/sdk/callbacks/AdCallback;->onAdRequestedToShow(Lcom/chartboost/sdk/events/ShowEvent;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    if-nez v1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Callback missing for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/chartboost/sdk/impl/b;->a(Lcom/chartboost/sdk/ads/Ad;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " on onAdRequestedToShow"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    if-nez v1, :cond_3

    const-string p0, "Ad is missing on onAdRequestedToShow"

    .line 11
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "AdApi"

    const-string v1, "Missing handler on AdApiCallbackSender. Create new handler."

    .line 84
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/chartboost/sdk/ads/Ad;)Ljava/lang/String;
    .locals 1

    .line 80
    instance-of v0, p1, Lcom/chartboost/sdk/ads/Interstitial;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/chartboost/sdk/impl/h3;->c:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_0
    instance-of v0, p1, Lcom/chartboost/sdk/ads/Rewarded;

    if-eqz v0, :cond_1

    sget-object p1, Lcom/chartboost/sdk/impl/h3;->d:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 82
    :cond_1
    instance-of p1, p1, Lcom/chartboost/sdk/ads/Banner;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/chartboost/sdk/impl/h3;->e:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, p2, p1}, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda1;-><init>(Lcom/chartboost/sdk/callbacks/AdCallback;Lcom/chartboost/sdk/ads/Ad;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;I)V
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p2, p1, p4}, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda0;-><init>(Lcom/chartboost/sdk/callbacks/AdCallback;Lcom/chartboost/sdk/ads/Ad;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/chartboost/sdk/events/CacheError;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V
    .locals 8

    .line 58
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda6;

    move-object v1, v7

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda6;-><init>(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;Ljava/lang/String;Lcom/chartboost/sdk/events/CacheError;Lcom/chartboost/sdk/impl/b;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/chartboost/sdk/events/ClickError;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V
    .locals 8

    .line 69
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda3;-><init>(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;Ljava/lang/String;Lcom/chartboost/sdk/events/ClickError;Lcom/chartboost/sdk/impl/b;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/chartboost/sdk/events/ShowError;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda5;

    move-object v1, v7

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda5;-><init>(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;Ljava/lang/String;Lcom/chartboost/sdk/events/ShowError;Lcom/chartboost/sdk/impl/b;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p3, p1, p0}, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda2;-><init>(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;Ljava/lang/String;Lcom/chartboost/sdk/impl/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p3, p1, p0}, Lcom/chartboost/sdk/impl/b$$ExternalSyntheticLambda4;-><init>(Lcom/chartboost/sdk/ads/Ad;Lcom/chartboost/sdk/callbacks/AdCallback;Ljava/lang/String;Lcom/chartboost/sdk/impl/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
