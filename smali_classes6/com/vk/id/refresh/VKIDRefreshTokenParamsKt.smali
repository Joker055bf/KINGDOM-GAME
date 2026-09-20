.class public final Lcom/vk/id/refresh/VKIDRefreshTokenParamsKt;
.super Ljava/lang/Object;
.source "VKIDRefreshTokenParams.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "VKIDRefreshTokenParams",
        "Lcom/vk/id/refresh/VKIDRefreshTokenParams;",
        "initializer",
        "Lkotlin/Function1;",
        "Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "vkid_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final VKIDRefreshTokenParams(Lkotlin/jvm/functions/Function1;)Lcom/vk/id/refresh/VKIDRefreshTokenParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/vk/id/refresh/VKIDRefreshTokenParams;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;

    invoke-direct {v0}, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;->build()Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    move-result-object p0

    return-object p0
.end method
