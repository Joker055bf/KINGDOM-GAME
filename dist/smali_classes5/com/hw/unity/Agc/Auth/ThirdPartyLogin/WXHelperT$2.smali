.class final Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$2;
.super Ljava/lang/Object;
.source "WXHelperT.java"

# interfaces
.implements Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->setWechatCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 3

    .line 129
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->access$200()Lcom/huawei/hmf/tasks/OnFailureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->access$200()Lcom/huawei/hmf/tasks/OnFailureListener;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "wx fail"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/huawei/hmf/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 109
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->access$100()Lcom/huawei/hmf/tasks/OnSuccessListener;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Wechat"

    const-string p2, "Wechat Login error!"

    .line 111
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 113
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "Token"

    .line 115
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "OpenId"

    .line 116
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 120
    :goto_0
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->access$100()Lcom/huawei/hmf/tasks/OnSuccessListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 121
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->access$100()Lcom/huawei/hmf/tasks/OnSuccessListener;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/huawei/hmf/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method
