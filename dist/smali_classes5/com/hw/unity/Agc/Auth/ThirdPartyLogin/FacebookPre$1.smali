.class final Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre$1;
.super Ljava/lang/Object;
.source "FacebookPre.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->Start(Landroid/app/Activity;Ljava/lang/String;Lcom/huawei/hmf/tasks/OnSuccessListener;Lcom/huawei/hmf/tasks/OnFailureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$it:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre$1;->val$it:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "Cancel"

    .line 64
    iget-object v1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre$1;->val$it:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->access$100()Lcom/huawei/hmf/tasks/OnFailureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->access$100()Lcom/huawei/hmf/tasks/OnFailureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre$1;->val$it:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2

    .line 47
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->access$000()Lcom/huawei/hmf/tasks/OnSuccessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "Token"

    .line 52
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 56
    :goto_0
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre;->access$000()Lcom/huawei/hmf/tasks/OnSuccessListener;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/huawei/hmf/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p1, "callback error"

    .line 58
    iget-object v0, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre$1;->val$it:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/FacebookPre$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
