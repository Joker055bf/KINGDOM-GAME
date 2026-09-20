.class public final Lru/ok/tracer/base/http/HttpRequestBody$Companion;
.super Ljava/lang/Object;
.source "HttpRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/base/http/HttpRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nJ \u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lru/ok/tracer/base/http/HttpRequestBody$Companion;",
        "",
        "()V",
        "fromBytes",
        "Lru/ok/tracer/base/http/HttpRequestBody;",
        "contentType",
        "",
        "content",
        "",
        "fromFile",
        "Ljava/io/File;",
        "fromString",
        "charset",
        "Ljava/nio/charset/Charset;",
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
.field static final synthetic $$INSTANCE:Lru/ok/tracer/base/http/HttpRequestBody$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/ok/tracer/base/http/HttpRequestBody$Companion;

    invoke-direct {v0}, Lru/ok/tracer/base/http/HttpRequestBody$Companion;-><init>()V

    sput-object v0, Lru/ok/tracer/base/http/HttpRequestBody$Companion;->$$INSTANCE:Lru/ok/tracer/base/http/HttpRequestBody$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic fromString$default(Lru/ok/tracer/base/http/HttpRequestBody$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)Lru/ok/tracer/base/http/HttpRequestBody;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 42
    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 39
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lru/ok/tracer/base/http/HttpRequestBody$Companion;->fromString(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lru/ok/tracer/base/http/HttpRequestBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromBytes(Ljava/lang/String;[B)Lru/ok/tracer/base/http/HttpRequestBody;
    .locals 1

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lru/ok/tracer/base/http/HttpByteArrayBody;

    invoke-direct {v0, p1, p2}, Lru/ok/tracer/base/http/HttpByteArrayBody;-><init>(Ljava/lang/String;[B)V

    check-cast v0, Lru/ok/tracer/base/http/HttpRequestBody;

    return-object v0
.end method

.method public final fromFile(Ljava/lang/String;Ljava/io/File;)Lru/ok/tracer/base/http/HttpRequestBody;
    .locals 1

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lru/ok/tracer/base/http/HttpFileBody;

    invoke-direct {v0, p1, p2}, Lru/ok/tracer/base/http/HttpFileBody;-><init>(Ljava/lang/String;Ljava/io/File;)V

    check-cast v0, Lru/ok/tracer/base/http/HttpRequestBody;

    return-object v0
.end method

.method public final fromString(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lru/ok/tracer/base/http/HttpRequestBody;
    .locals 1

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lru/ok/tracer/base/http/HttpByteArrayBody;

    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string p3, "this as java.lang.String).getBytes(charset)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {v0, p1, p2}, Lru/ok/tracer/base/http/HttpByteArrayBody;-><init>(Ljava/lang/String;[B)V

    check-cast v0, Lru/ok/tracer/base/http/HttpRequestBody;

    return-object v0
.end method
