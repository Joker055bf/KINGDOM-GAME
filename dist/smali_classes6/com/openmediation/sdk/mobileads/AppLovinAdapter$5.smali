.class Lcom/openmediation/sdk/mobileads/AppLovinAdapter$5;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->initBannerAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;Lcom/openmediation/sdk/mediation/BannerAdCallback;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$5;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$5;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$5;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$5;->this$0:Lcom/openmediation/sdk/mobileads/AppLovinAdapter;

    .line 378
    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AppLovinAdapter;->access$500(Lcom/openmediation/sdk/mobileads/AppLovinAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Banner"

    .line 377
    invoke-static {v2, v1, p1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AppLovinAdapter$5;->val$callback:Lcom/openmediation/sdk/mediation/BannerAdCallback;

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/BannerAdCallback;->onBannerAdInitSuccess()V

    :cond_0
    return-void
.end method
