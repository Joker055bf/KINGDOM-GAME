.class public final Lru/ok/tracer/base/limits/TokenBucket$Companion;
.super Ljava/lang/Object;
.source "TokenBucket.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/base/limits/TokenBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lru/ok/tracer/base/limits/TokenBucket$Companion;",
        "",
        "()V",
        "oneShot",
        "Lru/ok/tracer/base/limits/TokenBucket;",
        "capacity",
        "",
        "tracer-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lru/ok/tracer/base/limits/TokenBucket$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final oneShot(I)Lru/ok/tracer/base/limits/TokenBucket;
    .locals 4

    .line 29
    new-instance v0, Lru/ok/tracer/base/limits/TokenBucket;

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lru/ok/tracer/base/limits/TokenBucket;-><init>(IJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
