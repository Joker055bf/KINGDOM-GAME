.class public interface abstract Lcom/game/sdk/comon/api/request/AdsRequest;
.super Ljava/lang/Object;
.source "AdsRequest.java"


# virtual methods
.method public abstract saveAii(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "app_instant_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/SaveAIIResponseObj;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/x-www-form-urlencoded"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/data_rel/sdk_fb"
    .end annotation
.end method
