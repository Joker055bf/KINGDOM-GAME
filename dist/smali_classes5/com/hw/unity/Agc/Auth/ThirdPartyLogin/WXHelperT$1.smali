.class final Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$1;
.super Ljava/lang/Object;
.source "WXHelperT.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->getToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$TokenResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$TokenResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->access$000()Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$Callback;->onFail()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$TokenResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$TokenResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->access$000()Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$Callback;

    move-result-object p1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$TokenResponse;

    iget-object v0, v0, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$TokenResponse;->access_token:Ljava/lang/String;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$TokenResponse;

    iget-object p2, p2, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$TokenResponse;->openid:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$Callback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;->access$000()Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$Callback;->onFail()V

    :goto_0
    return-void
.end method
