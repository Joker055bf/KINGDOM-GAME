.class public interface abstract Lcom/vk/id/test/InternalVKIDOverrideApi;
.super Ljava/lang/Object;
.source "InternalVKIDOverrideApi.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001J5\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\t\u0010\nJ=\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00032\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010JE\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J-\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00032\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ-\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00032\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u001e\u0010\u001bJ%\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\"\u0010#\u00a8\u0006$"
    }
    d2 = {
        "Lcom/vk/id/test/InternalVKIDOverrideApi;",
        "",
        "refreshToken",
        "Lkotlin/Result;",
        "Lcom/vk/id/test/InternalVKIDTokenPayloadResponse;",
        "",
        "clientId",
        "deviceId",
        "state",
        "refreshToken-BWLJW6A",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;",
        "exchangeToken",
        "Lcom/vk/id/test/InternalVKIDCodePayloadResponse;",
        "v1Token",
        "codeChallenge",
        "exchangeToken-yxL6bBk",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;",
        "getToken",
        "code",
        "codeVerifier",
        "redirectUri",
        "getToken-hUnOzRk",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;",
        "getUserInfo",
        "Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;",
        "accessToken",
        "getUserInfo-0E7RQCE",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;",
        "logout",
        "Lcom/vk/id/test/InternalVKIDLogoutPayloadResponse;",
        "logout-0E7RQCE",
        "getSilentAuthProviders",
        "Lcom/vk/id/test/InternalVKIDSilentAuthProvidersResponse;",
        "clientSecret",
        "getSilentAuthProviders-gIAlu-s",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;",
        "vkid_release"
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
.method public abstract exchangeToken-yxL6bBk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getSilentAuthProviders-gIAlu-s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getToken-hUnOzRk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getUserInfo-0E7RQCE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract logout-0E7RQCE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract refreshToken-BWLJW6A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method
