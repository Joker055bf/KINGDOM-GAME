.class public final Lcom/vk/id/internal/auth/AuthActivity$callback$1;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "AuthActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/internal/auth/AuthActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/vk/id/internal/auth/AuthActivity$callback$1",
        "Landroidx/browser/customtabs/CustomTabsCallback;",
        "onNavigationEvent",
        "",
        "navigationEvent",
        "",
        "extras",
        "Landroid/os/Bundle;",
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
.field final synthetic this$0:Lcom/vk/id/internal/auth/AuthActivity;


# direct methods
.method constructor <init>(Lcom/vk/id/internal/auth/AuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/id/internal/auth/AuthActivity$callback$1;->this$0:Lcom/vk/id/internal/auth/AuthActivity;

    .line 48
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 52
    iget-object p1, p0, Lcom/vk/id/internal/auth/AuthActivity$callback$1;->this$0:Lcom/vk/id/internal/auth/AuthActivity;

    invoke-static {p1}, Lcom/vk/id/internal/auth/AuthActivity;->access$getShouldReportCustomTabsPerformance$p(Lcom/vk/id/internal/auth/AuthActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    sget-object p1, Lcom/vk/id/VKID;->Companion:Lcom/vk/id/VKID$Companion;

    invoke-virtual {p1}, Lcom/vk/id/VKID$Companion;->getInstance()Lcom/vk/id/VKID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/id/VKID;->getPerformanceTracker$vkid_release()Lcom/vk/id/tracking/core/PerformanceTracker;

    move-result-object p1

    const-string p2, "CustomTabsAuth"

    invoke-interface {p1, p2}, Lcom/vk/id/tracking/core/PerformanceTracker;->endTracking(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/vk/id/internal/auth/AuthActivity$callback$1;->this$0:Lcom/vk/id/internal/auth/AuthActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/vk/id/internal/auth/AuthActivity;->access$setShouldReportCustomTabsPerformance$p(Lcom/vk/id/internal/auth/AuthActivity;Z)V

    :cond_0
    return-void
.end method
