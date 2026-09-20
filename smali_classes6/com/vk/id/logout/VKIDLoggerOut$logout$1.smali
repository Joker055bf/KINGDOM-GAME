.class final Lcom/vk/id/logout/VKIDLoggerOut$logout$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "VKIDLoggerOut.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/logout/VKIDLoggerOut;->logout(Lcom/vk/id/logout/VKIDLogoutCallback;Ljava/lang/String;ZLcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.vk.id.logout.VKIDLoggerOut"
    f = "VKIDLoggerOut.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x4
    }
    l = {
        0x1c,
        0x20,
        0x25,
        0x2d,
        0x33
    }
    m = "logout"
    n = {
        "this",
        "callback",
        "clearTokenStorage",
        "callback",
        "this",
        "callback",
        "clearTokenStorage",
        "this",
        "callback",
        "clearTokenStorage",
        "callback"
    }
    s = {
        "L$0",
        "L$1",
        "Z$0",
        "L$0",
        "L$0",
        "L$1",
        "Z$0",
        "L$0",
        "L$1",
        "Z$0",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/vk/id/logout/VKIDLoggerOut;


# direct methods
.method constructor <init>(Lcom/vk/id/logout/VKIDLoggerOut;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/logout/VKIDLoggerOut;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/logout/VKIDLoggerOut$logout$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->this$0:Lcom/vk/id/logout/VKIDLoggerOut;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->label:I

    iget-object v0, p0, Lcom/vk/id/logout/VKIDLoggerOut$logout$1;->this$0:Lcom/vk/id/logout/VKIDLoggerOut;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-virtual/range {v0 .. v5}, Lcom/vk/id/logout/VKIDLoggerOut;->logout(Lcom/vk/id/logout/VKIDLogoutCallback;Ljava/lang/String;ZLcom/vk/id/logout/VKIDLogoutParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
