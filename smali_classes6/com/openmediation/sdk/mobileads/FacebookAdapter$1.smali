.class Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkAds$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/FacebookAdapter;->initSdk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/FacebookAdapter;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/FacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 1

    .line 501
    new-instance v0, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/mobileads/FacebookAdapter$1$1;-><init>(Lcom/openmediation/sdk/mobileads/FacebookAdapter$1;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V

    invoke-static {v0}, Lcom/openmediation/sdk/mediation/MediationUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
