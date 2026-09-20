.class Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobAdapter;->initSplashAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobAdapter;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Splash"

    .line 786
    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$4400(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 788
    sget-object v1, Lcom/openmediation/sdk/mobileads/AdMobAdapter$19;->$SwitchMap$com$openmediation$sdk$mobileads$AdMobAdapter$InitState:[I

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$100(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openmediation/sdk/mobileads/AdMobAdapter$InitState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 797
    :cond_0
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    if-eqz v1, :cond_4

    .line 798
    invoke-interface {v1}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdInitSuccess()V

    goto :goto_0

    .line 794
    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->getInstance()Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->addAdCallback(Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    goto :goto_0

    .line 790
    :cond_2
    invoke-static {}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->getInstance()Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    invoke-virtual {v1, v2}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->addAdCallback(Lcom/openmediation/sdk/mediation/SplashAdCallback;)V

    .line 791
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    invoke-static {v1}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$300(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)V

    goto :goto_0

    .line 805
    :cond_3
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    if-eqz v2, :cond_4

    .line 806
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 807
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$4500(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-static {v0, v3, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 811
    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    if-eqz v2, :cond_4

    .line 812
    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobAdapter$14;->this$0:Lcom/openmediation/sdk/mobileads/AdMobAdapter;

    .line 813
    invoke-static {v3}, Lcom/openmediation/sdk/mobileads/AdMobAdapter;->access$4600(Lcom/openmediation/sdk/mobileads/AdMobAdapter;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown Error, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 812
    invoke-static {v0, v3, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_4
    :goto_0
    return-void
.end method
