.class final Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$httpClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TracerLiteHttpClientHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;-><init>(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lru/ok/tracer/base/http/HttpClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lru/ok/tracer/base/http/HttpClient;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;


# direct methods
.method constructor <init>(Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;)V
    .locals 0

    iput-object p1, p0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$httpClient$2;->this$0:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$httpClient$2;->invoke()Lru/ok/tracer/base/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lru/ok/tracer/base/http/HttpClient;
    .locals 3

    .line 16
    iget-object v0, p0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$httpClient$2;->this$0:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

    invoke-static {v0}, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->access$getContext$p(Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;)Landroid/content/Context;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$httpClient$2;->this$0:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

    invoke-static {v1}, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->access$getLibraryPackageName$p(Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;)Ljava/lang/String;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$httpClient$2;->this$0:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

    invoke-static {v2}, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->access$getTrafficStatsTag$p(Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;)I

    move-result v2

    .line 15
    invoke-static {v0, v1, v2}, Lru/ok/tracer/base/http/TracerHttpClientKt;->createTracerLiteHttpClient(Landroid/content/Context;Ljava/lang/String;I)Lru/ok/tracer/base/http/HttpClient;

    move-result-object v0

    return-object v0
.end method
