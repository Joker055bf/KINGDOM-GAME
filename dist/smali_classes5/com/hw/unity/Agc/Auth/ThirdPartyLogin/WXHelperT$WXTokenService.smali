.class public interface abstract Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$WXTokenService;
.super Ljava/lang/Object;
.source "WXHelperT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WXTokenService"
.end annotation


# virtual methods
.method public abstract getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "appid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "secret"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "code"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "grant_type"
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
            "Lcom/hw/unity/Agc/Auth/ThirdPartyLogin/WXHelperT$TokenResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sns/oauth2/access_token"
    .end annotation
.end method
