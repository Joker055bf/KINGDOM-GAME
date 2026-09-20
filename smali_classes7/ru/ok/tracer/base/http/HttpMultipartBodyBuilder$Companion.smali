.class public final Lru/ok/tracer/base/http/HttpMultipartBodyBuilder$Companion;
.super Ljava/lang/Object;
.source "HttpMultipartBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\tH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\n"
    }
    d2 = {
        "Lru/ok/tracer/base/http/HttpMultipartBodyBuilder$Companion;",
        "",
        "()V",
        "build",
        "Lru/ok/tracer/base/http/HttpRequestBody;",
        "block",
        "Lkotlin/Function1;",
        "Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lkotlin/jvm/functions/Function1;)Lru/ok/tracer/base/http/HttpRequestBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lru/ok/tracer/base/http/HttpRequestBody;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;

    invoke-direct {v0}, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;->build()Lru/ok/tracer/base/http/HttpRequestBody;

    move-result-object p1

    return-object p1
.end method
