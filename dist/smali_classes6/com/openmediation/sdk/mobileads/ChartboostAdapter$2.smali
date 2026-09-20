.class Lcom/openmediation/sdk/mobileads/ChartboostAdapter$2;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"

# interfaces
.implements Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->initInterstitialAd(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/ChartboostAdapter;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

.field final synthetic val$checkError:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/ChartboostAdapter;Lcom/openmediation/sdk/mediation/InterstitialAdCallback;Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$2;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$2;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$2;->val$checkError:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailed(Ljava/lang/String;)V
    .locals 3

    .line 196
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$2;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$2;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostAdapter;

    .line 198
    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->access$100(Lcom/openmediation/sdk/mobileads/ChartboostAdapter;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$2;->val$checkError:Ljava/lang/String;

    const-string v2, "Interstitial"

    .line 197
    invoke-static {v2, v0, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public initSuccess()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$2;->val$callback:Lcom/openmediation/sdk/mediation/InterstitialAdCallback;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/InterstitialAdCallback;->onInterstitialAdInitSuccess()V

    :cond_0
    return-void
.end method
