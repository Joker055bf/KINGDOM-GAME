.class final Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TwitterPre.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->Login(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/TwitterSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$it:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre$1;->val$it:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 2

    .line 84
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre$1;->val$it:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 85
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->access$100()Lcom/huawei/hmf/tasks/OnFailureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->access$100()Lcom/huawei/hmf/tasks/OnFailureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":error in fail callback"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre$1;->val$it:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    .line 65
    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    .line 66
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "Token"

    .line 68
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "Secret"

    .line 69
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 74
    :goto_0
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->access$000()Lcom/huawei/hmf/tasks/OnSuccessListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre;->access$000()Lcom/huawei/hmf/tasks/OnSuccessListener;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/huawei/hmf/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p1, "callback error!"

    .line 78
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/TwitterPre$1;->val$it:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_1
    return-void
.end method
