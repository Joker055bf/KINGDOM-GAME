.class public interface abstract Lru/ok/tracer/base/http/HttpRequestBody;
.super Ljava/lang/Object;
.source "HttpRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/base/http/HttpRequestBody$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u0082\u0001\u0003\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lru/ok/tracer/base/http/HttpRequestBody;",
        "",
        "contentLength",
        "",
        "getContentLength",
        "()J",
        "contentType",
        "",
        "getContentType",
        "()Ljava/lang/String;",
        "writeTo",
        "",
        "stream",
        "Ljava/io/OutputStream;",
        "Companion",
        "Lru/ok/tracer/base/http/HttpByteArrayBody;",
        "Lru/ok/tracer/base/http/HttpFileBody;",
        "Lru/ok/tracer/base/http/HttpMultipartBody;",
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
.field public static final Companion:Lru/ok/tracer/base/http/HttpRequestBody$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lru/ok/tracer/base/http/HttpRequestBody$Companion;->$$INSTANCE:Lru/ok/tracer/base/http/HttpRequestBody$Companion;

    sput-object v0, Lru/ok/tracer/base/http/HttpRequestBody;->Companion:Lru/ok/tracer/base/http/HttpRequestBody$Companion;

    return-void
.end method


# virtual methods
.method public abstract getContentLength()J
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
