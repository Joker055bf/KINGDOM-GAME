.class final synthetic Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$3$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "VKIDTokenExchanger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;
.implements Lkotlin/coroutines/jvm/internal/SuspendFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->handleCode(Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/exchangetoken/VKIDExchangeTokenParams;Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vk/id/AccessToken;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/coroutines/jvm/internal/SuspendFunction;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x2

    const-class v3, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

    const-string v4, "onAuth"

    const-string v5, "onAuth(Lcom/vk/id/AccessToken;)V"

    const/4 v6, 0x4

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/vk/id/AccessToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/AccessToken;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$3$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;

    invoke-static {v0, p1, p2}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger;->access$handleCode$lambda$4$onAuth(Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/AccessToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 107
    check-cast p1, Lcom/vk/id/AccessToken;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/id/exchangetoken/VKIDTokenExchanger$handleCode$3$1;->invoke(Lcom/vk/id/AccessToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
