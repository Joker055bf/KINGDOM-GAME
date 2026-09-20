.class public interface abstract Lcom/game/sdk/comon/api/request/NotificationRequest;
.super Ljava/lang/Object;
.source "NotificationRequest.java"


# virtual methods
.method public abstract saveFCM(Lcom/game/sdk/comon/object/request/SaveFcmRequestObj;)Lretrofit2/Call;
    .param p1    # Lcom/game/sdk/comon/object/request/SaveFcmRequestObj;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/comon/object/request/SaveFcmRequestObj;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/SaveFcmResponseObj;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept:application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sdk/device-tokens/fcm"
    .end annotation
.end method
