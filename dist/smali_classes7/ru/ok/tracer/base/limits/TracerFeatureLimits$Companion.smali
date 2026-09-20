.class public final Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;
.super Ljava/lang/Object;
.source "TracerFeatureLimits.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/base/limits/TracerFeatureLimits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;",
        "",
        "()V",
        "unlimited",
        "Lru/ok/tracer/base/limits/TracerFeatureLimits;",
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


# static fields
.field static final synthetic $$INSTANCE:Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;

    invoke-direct {v0}, Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;-><init>()V

    sput-object v0, Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;->$$INSTANCE:Lru/ok/tracer/base/limits/TracerFeatureLimits$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final unlimited()Lru/ok/tracer/base/limits/TracerFeatureLimits;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 19
    sget-object v0, Lru/ok/tracer/base/limits/NoTracerFeatureLimits;->INSTANCE:Lru/ok/tracer/base/limits/NoTracerFeatureLimits;

    check-cast v0, Lru/ok/tracer/base/limits/TracerFeatureLimits;

    return-object v0
.end method
