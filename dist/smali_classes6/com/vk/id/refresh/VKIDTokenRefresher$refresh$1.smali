.class final Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "VKIDTokenRefresher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/refresh/VKIDTokenRefresher;->refresh(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.vk.id.refresh.VKIDTokenRefresher"
    f = "VKIDTokenRefresher.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3
    }
    l = {
        0x20,
        0x23,
        0x27,
        0x35
    }
    m = "refresh"
    n = {
        "this",
        "callback",
        "params",
        "clientId",
        "this",
        "callback",
        "params",
        "clientId",
        "refreshToken",
        "this",
        "callback",
        "params",
        "refreshTokenState",
        "this",
        "callback",
        "result"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/vk/id/refresh/VKIDTokenRefresher;


# direct methods
.method constructor <init>(Lcom/vk/id/refresh/VKIDTokenRefresher;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/refresh/VKIDTokenRefresher;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->this$0:Lcom/vk/id/refresh/VKIDTokenRefresher;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->label:I

    iget-object p1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$refresh$1;->this$0:Lcom/vk/id/refresh/VKIDTokenRefresher;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v0, v1}, Lcom/vk/id/refresh/VKIDTokenRefresher;->refresh(Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Lcom/vk/id/refresh/VKIDRefreshTokenParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
