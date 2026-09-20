.class public interface abstract Lcom/game/sdk/comon/api/request/PaymentRequest;
.super Ljava/lang/Object;
.source "PaymentRequest.java"


# virtual methods
.method public abstract getListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "method"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "x_request"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "app_version"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "sdk_version"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/ItemPayResponseObj;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "products/items/sdk"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/x-www-form-urlencoded",
            "Accept:application/json"
        }
    .end annotation
.end method

.method public abstract initialPurchase(Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;)Lretrofit2/Call;
    .param p1    # Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/InitialPurchaseResponseObj;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept:application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "payments/sdk"
    .end annotation
.end method

.method public abstract retryPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "app_key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "app_version"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "user_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "character_id"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "area_id"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "package_name"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "purchase_token"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "product_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/RetryPaymentResponseObj;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept:application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "payments/sdk/retry"
    .end annotation
.end method

.method public abstract verifyPurchase(Ljava/lang/String;Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "order_no"
        .end annotation
    .end param
    .param p2    # Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/game/sdk/comon/object/response/VerifyPurchaseResponseObj;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept:application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "payments/sdk/excute/{order_no}"
    .end annotation
.end method
