.class final Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre$1;
.super Ljava/lang/Object;
.source "QQPre.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->Login(Landroid/app/Activity;)V
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

    .line 51
    iput-object p1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre$1;->val$it:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "cancel"

    .line 78
    iget-object v1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre$1;->val$it:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 54
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "access_token"

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "openid"

    .line 56
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "Token"

    .line 59
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "OpenId"

    .line 60
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 64
    :goto_0
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->access$000()Lcom/huawei/hmf/tasks/OnSuccessListener;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/huawei/hmf/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Lcom/tencent/tauth/UiError;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre$1;->val$it:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/baseThirdParty;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 71
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/QQPre;->access$100()Lcom/huawei/hmf/tasks/OnFailureListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    iget-object p1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method
