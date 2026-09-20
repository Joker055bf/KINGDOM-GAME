.class Lcom/openmediation/sdk/mobileads/AdMobSplashManager$3;
.super Ljava/lang/Object;
.source "AdMobSplashManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->showAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$3;->this$0:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$3;->val$adUnitId:Ljava/lang/String;

    iput-object p4, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$3;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$3;->this$0:Lcom/openmediation/sdk/mobileads/AdMobSplashManager;

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$3;->val$adUnitId:Ljava/lang/String;

    iget-object v3, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$3;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/openmediation/sdk/mobileads/AdMobSplashManager;->access$400(Lcom/openmediation/sdk/mobileads/AdMobSplashManager;Landroid/app/Activity;Ljava/lang/String;Lcom/openmediation/sdk/mediation/SplashAdCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 130
    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/AdMobSplashManager$3;->val$callback:Lcom/openmediation/sdk/mediation/SplashAdCallback;

    if-eqz v1, :cond_0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Error, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Splash"

    const-string v3, "AdMobAdapter"

    .line 131
    invoke-static {v2, v3, v0}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildShowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/openmediation/sdk/mediation/SplashAdCallback;->onSplashAdShowFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    :goto_0
    return-void
.end method
