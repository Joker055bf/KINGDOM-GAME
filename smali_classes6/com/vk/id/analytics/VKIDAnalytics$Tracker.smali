.class public interface abstract Lcom/vk/id/analytics/VKIDAnalytics$Tracker;
.super Ljava/lang/Object;
.source "VKIDAnalytics.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/analytics/VKIDAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/analytics/VKIDAnalytics$Tracker$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J3\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\t0\u0008\"\u00020\tH\'\u00a2\u0006\u0002\u0010\nJ)\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\t0\u0008\"\u00020\tH\u0017\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vk/id/analytics/VKIDAnalytics$Tracker;",
        "",
        "trackEvent",
        "",
        "accessToken",
        "",
        "name",
        "params",
        "",
        "Lcom/vk/id/analytics/VKIDAnalytics$EventParam;",
        "(Ljava/lang/String;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V",
        "(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V",
        "analytics_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public varargs abstract trackEvent(Ljava/lang/String;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation
.end method

.method public varargs abstract trackEvent(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation
.end method
