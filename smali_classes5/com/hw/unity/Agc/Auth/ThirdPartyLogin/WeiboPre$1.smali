.class final Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre$1;
.super Ljava/lang/Object;
.source "WeiboPre.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WbAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->Login(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$it:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre$1;->val$it:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "Cancel"

    .line 66
    iget-object v1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre$1;->val$it:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public onFailure(Lcom/sina/weibo/sdk/auth/WbConnectErrorMessage;)V
    .locals 2

    .line 71
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/WbConnectErrorMessage;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre$1;->val$it:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 72
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->access$100()Lcom/huawei/hmf/tasks/OnFailureListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/WbConnectErrorMessage;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 3

    .line 50
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->access$000()Lcom/huawei/hmf/tasks/OnSuccessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "Token"

    .line 54
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Uid"

    .line 55
    invoke-virtual {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 59
    :goto_0
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WeiboPre;->access$000()Lcom/huawei/hmf/tasks/OnSuccessListener;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/huawei/hmf/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
