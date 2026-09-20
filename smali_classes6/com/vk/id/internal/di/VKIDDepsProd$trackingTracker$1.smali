.class public final Lcom/vk/id/internal/di/VKIDDepsProd$trackingTracker$1;
.super Ljava/lang/Object;
.source "VKIDDepsProd.kt"

# interfaces
.implements Lcom/vk/id/analytics/VKIDAnalytics$Tracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/internal/di/VKIDDepsProd;->getTrackingTracker()Lcom/vk/id/analytics/VKIDAnalytics$Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J3\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\t0\u0008\"\u00020\tH\u0016\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "com/vk/id/internal/di/VKIDDepsProd$trackingTracker$1",
        "Lcom/vk/id/analytics/VKIDAnalytics$Tracker;",
        "trackEvent",
        "",
        "accessToken",
        "",
        "name",
        "params",
        "",
        "Lcom/vk/id/analytics/VKIDAnalytics$EventParam;",
        "(Ljava/lang/String;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V",
        "vkid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/id/internal/di/VKIDDepsProd;


# direct methods
.method constructor <init>(Lcom/vk/id/internal/di/VKIDDepsProd;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/id/internal/di/VKIDDepsProd$trackingTracker$1;->this$0:Lcom/vk/id/internal/di/VKIDDepsProd;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs trackEvent(Ljava/lang/String;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V
    .locals 9

    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "params"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/vk/id/internal/di/VKIDDepsProd$trackingTracker$1;->this$0:Lcom/vk/id/internal/di/VKIDDepsProd;

    invoke-static {p1}, Lcom/vk/id/internal/di/VKIDDepsProd;->access$getTrackingDeps(Lcom/vk/id/internal/di/VKIDDepsProd;)Lcom/vk/id/tracking/tracer/TrackingDeps;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/id/tracking/tracer/TrackingDeps;->getAnalyticsTracking()Lcom/vk/id/tracking/core/AnalyticsTracking;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p3

    invoke-static/range {v0 .. v8}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/vk/id/tracking/core/AnalyticsTracking;->log(Ljava/lang/String;)V

    return-void
.end method

.method public varargs trackEvent(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .line 285
    invoke-static {p0, p1, p2}, Lcom/vk/id/analytics/VKIDAnalytics$Tracker$DefaultImpls;->trackEvent(Lcom/vk/id/analytics/VKIDAnalytics$Tracker;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V

    return-void
.end method
