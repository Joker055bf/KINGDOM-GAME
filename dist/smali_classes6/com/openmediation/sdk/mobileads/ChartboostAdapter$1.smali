.class Lcom/openmediation/sdk/mobileads/ChartboostAdapter$1;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"

# interfaces
.implements Lcom/openmediation/sdk/mobileads/ChartboostSingleTon$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/util/Map;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/mobileads/ChartboostAdapter;

.field final synthetic val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

.field final synthetic val$checkError:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/mobileads/ChartboostAdapter;Lcom/openmediation/sdk/mediation/RewardedVideoCallback;Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostAdapter;

    iput-object p2, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$1;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    iput-object p3, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$1;->val$checkError:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailed(Ljava/lang/String;)V
    .locals 3

    .line 114
    iget-object p1, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$1;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$1;->this$0:Lcom/openmediation/sdk/mobileads/ChartboostAdapter;

    .line 116
    invoke-static {v0}, Lcom/openmediation/sdk/mobileads/ChartboostAdapter;->access$000(Lcom/openmediation/sdk/mobileads/ChartboostAdapter;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$1;->val$checkError:Ljava/lang/String;

    const-string v2, "Rewarded Video"

    .line 115
    invoke-static {v2, v0, v1}, Lcom/openmediation/sdk/mediation/AdapterErrorBuilder;->buildInitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/openmediation/sdk/mediation/AdapterError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitFailed(Lcom/openmediation/sdk/mediation/AdapterError;)V

    :cond_0
    return-void
.end method

.method public initSuccess()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/openmediation/sdk/mobileads/ChartboostAdapter$1;->val$callback:Lcom/openmediation/sdk/mediation/RewardedVideoCallback;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lcom/openmediation/sdk/mediation/RewardedVideoCallback;->onRewardedVideoInitSuccess()V

    :cond_0
    return-void
.end method
