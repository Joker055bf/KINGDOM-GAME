.class public final Lru/ok/tracer/lite/TracerLite$Configuration$Companion;
.super Ljava/lang/Object;
.source "TracerLite.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/lite/TracerLite$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0005\u001a\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lru/ok/tracer/lite/TracerLite$Configuration$Companion;",
        "",
        "()V",
        "DEFAULT_API_URL",
        "",
        "build",
        "Lru/ok/tracer/lite/TracerLite$Configuration;",
        "block",
        "Lkotlin/Function1;",
        "Lru/ok/tracer/lite/TracerLite$Configuration$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
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

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lru/ok/tracer/lite/TracerLite$Configuration$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lkotlin/jvm/functions/Function1;)Lru/ok/tracer/lite/TracerLite$Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/ok/tracer/lite/TracerLite$Configuration$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lru/ok/tracer/lite/TracerLite$Configuration;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;

    invoke-direct {v0}, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->build()Lru/ok/tracer/lite/TracerLite$Configuration;

    move-result-object p1

    return-object p1
.end method
