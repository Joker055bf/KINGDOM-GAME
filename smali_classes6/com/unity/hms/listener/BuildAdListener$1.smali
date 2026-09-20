.class final Lcom/unity/hms/listener/BuildAdListener$1;
.super Lcom/huawei/hms/ads/AdListener;
.source "BuildAdListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/hms/listener/BuildAdListener;->BuildAdListener(Lcom/unity/hms/listener/IAdListener;)Lcom/huawei/hms/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arg:Lcom/unity/hms/listener/IAdListener;


# direct methods
.method constructor <init>(Lcom/unity/hms/listener/IAdListener;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/unity/hms/listener/BuildAdListener$1;->val$arg:Lcom/unity/hms/listener/IAdListener;

    invoke-direct {p0}, Lcom/huawei/hms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/unity/hms/listener/BuildAdListener$1;->val$arg:Lcom/unity/hms/listener/IAdListener;

    invoke-interface {v0}, Lcom/unity/hms/listener/IAdListener;->onAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/unity/hms/listener/BuildAdListener$1;->val$arg:Lcom/unity/hms/listener/IAdListener;

    invoke-interface {v0}, Lcom/unity/hms/listener/IAdListener;->onAdClosed()V

    return-void
.end method

.method public onAdFailed(I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/unity/hms/listener/BuildAdListener$1;->val$arg:Lcom/unity/hms/listener/IAdListener;

    invoke-interface {v0, p1}, Lcom/unity/hms/listener/IAdListener;->onAdFailed(I)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/unity/hms/listener/BuildAdListener$1;->val$arg:Lcom/unity/hms/listener/IAdListener;

    invoke-interface {v0}, Lcom/unity/hms/listener/IAdListener;->onAdImpression()V

    return-void
.end method

.method public onAdLeave()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/unity/hms/listener/BuildAdListener$1;->val$arg:Lcom/unity/hms/listener/IAdListener;

    invoke-interface {v0}, Lcom/unity/hms/listener/IAdListener;->onAdLeave()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/unity/hms/listener/BuildAdListener$1;->val$arg:Lcom/unity/hms/listener/IAdListener;

    invoke-interface {v0}, Lcom/unity/hms/listener/IAdListener;->onAdLoaded()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/unity/hms/listener/BuildAdListener$1;->val$arg:Lcom/unity/hms/listener/IAdListener;

    invoke-interface {v0}, Lcom/unity/hms/listener/IAdListener;->onAdOpened()V

    return-void
.end method
