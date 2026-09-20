.class public final Lcom/vk/id/internal/ipc/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/ipc/ConnectionInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0001\u0018\u0000 \u001e*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u001eB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u0004\u0018\u00018\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vk/id/internal/ipc/ConnectionInfo;",
        "T",
        "",
        "latch",
        "Ljava/util/concurrent/CountDownLatch;",
        "connection",
        "Landroid/content/ServiceConnection;",
        "<init>",
        "(Ljava/util/concurrent/CountDownLatch;Landroid/content/ServiceConnection;)V",
        "getLatch",
        "()Ljava/util/concurrent/CountDownLatch;",
        "setLatch",
        "(Ljava/util/concurrent/CountDownLatch;)V",
        "getConnection",
        "()Landroid/content/ServiceConnection;",
        "connectionState",
        "",
        "getConnectionState",
        "()I",
        "setConnectionState",
        "(I)V",
        "provider",
        "getProvider",
        "()Ljava/lang/Object;",
        "setProvider",
        "(Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "lock",
        "getLock",
        "()Lcom/vk/id/internal/ipc/ConnectionInfo;",
        "Companion",
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


# static fields
.field public static final $stable:I

.field public static final CONNECTION_STATE_CONNECTED:I = 0x1

.field public static final CONNECTION_STATE_DISCONNECTED:I = 0x2

.field public static final CONNECTION_STATE_UNKNOWN:I

.field public static final Companion:Lcom/vk/id/internal/ipc/ConnectionInfo$Companion;


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private connectionState:I

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private final lock:Lcom/vk/id/internal/ipc/ConnectionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/id/internal/ipc/ConnectionInfo<",
            "TT;>;"
        }
    .end annotation
.end field

.field private provider:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/internal/ipc/ConnectionInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/internal/ipc/ConnectionInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/internal/ipc/ConnectionInfo;->Companion:Lcom/vk/id/internal/ipc/ConnectionInfo$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/ipc/ConnectionInfo;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;Landroid/content/ServiceConnection;)V
    .locals 1

    const-string v0, "latch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/internal/ipc/ConnectionInfo;->latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/vk/id/internal/ipc/ConnectionInfo;->connection:Landroid/content/ServiceConnection;

    .line 37
    iput-object p0, p0, Lcom/vk/id/internal/ipc/ConnectionInfo;->lock:Lcom/vk/id/internal/ipc/ConnectionInfo;

    return-void
.end method


# virtual methods
.method public final getConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/vk/id/internal/ipc/ConnectionInfo;->connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public final getConnectionState()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/vk/id/internal/ipc/ConnectionInfo;->connectionState:I

    return v0
.end method

.method public final getLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/vk/id/internal/ipc/ConnectionInfo;->latch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public final getLock()Lcom/vk/id/internal/ipc/ConnectionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vk/id/internal/ipc/ConnectionInfo<",
            "TT;>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/vk/id/internal/ipc/ConnectionInfo;->lock:Lcom/vk/id/internal/ipc/ConnectionInfo;

    return-object v0
.end method

.method public final getProvider()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/vk/id/internal/ipc/ConnectionInfo;->provider:Ljava/lang/Object;

    return-object v0
.end method

.method public final setConnectionState(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/vk/id/internal/ipc/ConnectionInfo;->connectionState:I

    return-void
.end method

.method public final setLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/vk/id/internal/ipc/ConnectionInfo;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public final setProvider(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/vk/id/internal/ipc/ConnectionInfo;->provider:Ljava/lang/Object;

    return-void
.end method
