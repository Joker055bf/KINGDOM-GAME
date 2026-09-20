.class final Lru/ok/tracer/base/limits/NoTracerFeatureLimits;
.super Ljava/lang/Object;
.source "TracerFeatureLimits.kt"

# interfaces
.implements Lru/ok/tracer/base/limits/TracerFeatureLimits;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J?\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lru/ok/tracer/base/limits/NoTracerFeatureLimits;",
        "Lru/ok/tracer/base/limits/TracerFeatureLimits;",
        "()V",
        "isLimited",
        "",
        "featureName",
        "",
        "tag",
        "setShutdownMs",
        "",
        "globalShutdownMs",
        "",
        "featureShutdownMs",
        "tagShutdownMs",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V",
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
.field public static final INSTANCE:Lru/ok/tracer/base/limits/NoTracerFeatureLimits;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/ok/tracer/base/limits/NoTracerFeatureLimits;

    invoke-direct {v0}, Lru/ok/tracer/base/limits/NoTracerFeatureLimits;-><init>()V

    sput-object v0, Lru/ok/tracer/base/limits/NoTracerFeatureLimits;->INSTANCE:Lru/ok/tracer/base/limits/NoTracerFeatureLimits;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLimited(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setShutdownMs(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    return-void
.end method
