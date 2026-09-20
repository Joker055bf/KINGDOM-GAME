.class public final Lcom/vk/id/VKID$authorize$6$1;
.super Ljava/lang/Object;
.source "VKID.kt"

# interfaces
.implements Lcom/vk/id/internal/auth/AuthEventBridge$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/VKID$authorize$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/vk/id/VKID$authorize$6$1",
        "Lcom/vk/id/internal/auth/AuthEventBridge$Listener;",
        "onAuthResult",
        "",
        "authResult",
        "Lcom/vk/id/internal/auth/AuthResult;",
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


# instance fields
.field final synthetic $actualParams:Lcom/vk/id/auth/VKIDAuthParams;

.field final synthetic $authContext:Lkotlin/coroutines/CoroutineContext;

.field final synthetic $performanceKey:Ljava/lang/String;

.field final synthetic $statParams:Lcom/vk/id/StatParams;

.field final synthetic this$0:Lcom/vk/id/VKID;


# direct methods
.method constructor <init>(Lkotlin/coroutines/CoroutineContext;Lcom/vk/id/VKID;Ljava/lang/String;Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/id/VKID$authorize$6$1;->$authContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lcom/vk/id/VKID$authorize$6$1;->this$0:Lcom/vk/id/VKID;

    iput-object p3, p0, Lcom/vk/id/VKID$authorize$6$1;->$performanceKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/vk/id/VKID$authorize$6$1;->$actualParams:Lcom/vk/id/auth/VKIDAuthParams;

    iput-object p5, p0, Lcom/vk/id/VKID$authorize$6$1;->$statParams:Lcom/vk/id/StatParams;

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthResult(Lcom/vk/id/internal/auth/AuthResult;)V
    .locals 11

    const-string v0, "authResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/vk/id/VKID$authorize$6$1;->$authContext:Lkotlin/coroutines/CoroutineContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;

    iget-object v5, p0, Lcom/vk/id/VKID$authorize$6$1;->this$0:Lcom/vk/id/VKID;

    iget-object v7, p0, Lcom/vk/id/VKID$authorize$6$1;->$performanceKey:Ljava/lang/String;

    iget-object v8, p0, Lcom/vk/id/VKID$authorize$6$1;->$actualParams:Lcom/vk/id/auth/VKIDAuthParams;

    iget-object v9, p0, Lcom/vk/id/VKID$authorize$6$1;->$statParams:Lcom/vk/id/StatParams;

    const/4 v10, 0x0

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/vk/id/VKID$authorize$6$1$onAuthResult$1;-><init>(Lcom/vk/id/VKID;Lcom/vk/id/internal/auth/AuthResult;Ljava/lang/String;Lcom/vk/id/auth/VKIDAuthParams;Lcom/vk/id/StatParams;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
