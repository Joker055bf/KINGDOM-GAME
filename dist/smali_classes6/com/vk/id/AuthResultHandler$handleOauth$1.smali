.class final Lcom/vk/id/AuthResultHandler$handleOauth$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AuthResultHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/AuthResultHandler;->handleOauth(Lcom/vk/id/internal/auth/AuthResult$Success;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vk.id.AuthResultHandler"
    f = "AuthResultHandler.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x39,
        0x54,
        0x61,
        0x63
    }
    m = "handleOauth"
    n = {
        "this",
        "oauth",
        "onFail",
        "this",
        "onFail",
        "this",
        "onFail",
        "callResult"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/vk/id/AuthResultHandler;


# direct methods
.method constructor <init>(Lcom/vk/id/AuthResultHandler;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/AuthResultHandler;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/AuthResultHandler$handleOauth$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$1;->this$0:Lcom/vk/id/AuthResultHandler;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$1;->label:I

    iget-object p1, p0, Lcom/vk/id/AuthResultHandler$handleOauth$1;->this$0:Lcom/vk/id/AuthResultHandler;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v0, v1}, Lcom/vk/id/AuthResultHandler;->access$handleOauth(Lcom/vk/id/AuthResultHandler;Lcom/vk/id/internal/auth/AuthResult$Success;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
