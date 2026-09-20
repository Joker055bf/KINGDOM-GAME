.class public final Lru/ok/tracer/lite/upload/TracerDropHolder$Companion;
.super Ljava/lang/Object;
.source "TracerDropHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/lite/upload/TracerDropHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lru/ok/tracer/lite/upload/TracerDropHolder$Companion;",
        "",
        "()V",
        "get",
        "Lru/ok/tracer/base/drop/DropManager;",
        "tracerLite",
        "Lru/ok/tracer/lite/TracerLite;",
        "tracer-lite-commons_release"
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lru/ok/tracer/lite/upload/TracerDropHolder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/base/drop/DropManager;
    .locals 1

    const-string v0, "tracerLite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lru/ok/tracer/lite/TracerLite;->getDropHolder$tracer_lite_commons_release()Lru/ok/tracer/lite/upload/TracerDropHolder;

    move-result-object p1

    invoke-static {p1}, Lru/ok/tracer/lite/upload/TracerDropHolder;->access$getDropManager(Lru/ok/tracer/lite/upload/TracerDropHolder;)Lru/ok/tracer/base/drop/DropManager;

    move-result-object p1

    return-object p1
.end method
