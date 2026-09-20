.class public final Lcom/vk/id/network/InternalVKIDCallKt;
.super Ljava/lang/Object;
.source "InternalVKIDCall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a7\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u00020\u00030\u00012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u0002H\u00020\u0005\u00a2\u0006\u0002\u0008\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "internalVKIDWrapToVKIDCall",
        "Lcom/vk/id/network/InternalVKIDCall;",
        "T",
        "Lcom/vk/id/network/http/HttpResponse;",
        "responseMapping",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "network_release"
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
.method public static final internalVKIDWrapToVKIDCall(Lcom/vk/id/network/InternalVKIDCall;Lkotlin/jvm/functions/Function1;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 1
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vk/id/network/http/HttpResponse;",
            "+TT;>;)",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseMapping"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/vk/id/network/VKIDCallWrapper;

    invoke-direct {v0, p0, p1}, Lcom/vk/id/network/VKIDCallWrapper;-><init>(Lcom/vk/id/network/InternalVKIDCall;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lcom/vk/id/network/InternalVKIDCall;

    return-object v0
.end method
