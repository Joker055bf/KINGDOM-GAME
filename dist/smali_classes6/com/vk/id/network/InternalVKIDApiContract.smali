.class public interface abstract Lcom/vk/id/network/InternalVKIDApiContract;
.super Ljava/lang/Object;
.source "InternalVKIDApiContract.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J>\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H&J\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H&J.\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H&J&\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H&J6\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H&J&\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H&J6\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0006H&J>\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0006H&\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/vk/id/network/InternalVKIDApiContract;",
        "",
        "getToken",
        "Lcom/vk/id/network/InternalVKIDCall;",
        "Lcom/vk/id/network/http/HttpResponse;",
        "code",
        "",
        "codeVerifier",
        "clientId",
        "deviceId",
        "redirectUri",
        "state",
        "getSilentAuthProviders",
        "clientSecret",
        "refreshToken",
        "getUser",
        "accessToken",
        "exchangeToken",
        "v1Token",
        "codeChallenge",
        "logout",
        "sendStatEventsAnonymously",
        "sakVersion",
        "events",
        "Lorg/json/JSONArray;",
        "externalDeviceId",
        "sendStatEvents",
        "network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract exchangeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSilentAuthProviders(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sendStatEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sendStatEventsAnonymously(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/vk/id/network/InternalVKIDCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end method
