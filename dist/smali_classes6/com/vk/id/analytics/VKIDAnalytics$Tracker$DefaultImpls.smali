.class public final Lcom/vk/id/analytics/VKIDAnalytics$Tracker$DefaultImpls;
.super Ljava/lang/Object;
.source "VKIDAnalytics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/analytics/VKIDAnalytics$Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static varargs trackEvent(Lcom/vk/id/analytics/VKIDAnalytics$Tracker;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V
    .locals 1
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/vk/id/analytics/VKIDAnalytics$Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V

    return-void
.end method
