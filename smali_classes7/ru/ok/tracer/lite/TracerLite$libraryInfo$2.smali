.class final Lru/ok/tracer/lite/TracerLite$libraryInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TracerLite.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/ok/tracer/lite/TracerLite;-><init>(Landroid/content/Context;Ljava/lang/String;Lru/ok/tracer/lite/TracerLite$Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lru/ok/tracer/lite/TracerLibraryInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lru/ok/tracer/lite/TracerLibraryInfo;",
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
.field final synthetic this$0:Lru/ok/tracer/lite/TracerLite;


# direct methods
.method constructor <init>(Lru/ok/tracer/lite/TracerLite;)V
    .locals 0

    iput-object p1, p0, Lru/ok/tracer/lite/TracerLite$libraryInfo$2;->this$0:Lru/ok/tracer/lite/TracerLite;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lru/ok/tracer/lite/TracerLite$libraryInfo$2;->invoke()Lru/ok/tracer/lite/TracerLibraryInfo;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lru/ok/tracer/lite/TracerLibraryInfo;
    .locals 6

    .line 55
    new-instance v0, Lru/ok/tracer/lite/TracerLibraryInfo;

    .line 56
    iget-object v1, p0, Lru/ok/tracer/lite/TracerLite$libraryInfo$2;->this$0:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v1}, Lru/ok/tracer/lite/TracerLite;->getLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lru/ok/tracer/lite/TracerLite$libraryInfo$2;->this$0:Lru/ok/tracer/lite/TracerLite;

    invoke-static {v2}, Lru/ok/tracer/lite/TracerLite;->access$getManifest(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/manifest/TracerLiteManifest;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lru/ok/tracer/manifest/TracerLiteManifest;->versionName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "NA"

    .line 58
    :cond_1
    iget-object v3, p0, Lru/ok/tracer/lite/TracerLite$libraryInfo$2;->this$0:Lru/ok/tracer/lite/TracerLite;

    invoke-static {v3}, Lru/ok/tracer/lite/TracerLite;->access$getManifest(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/manifest/TracerLiteManifest;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lru/ok/tracer/manifest/TracerLiteManifest;->buildUuid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 59
    :goto_0
    iget-object v5, p0, Lru/ok/tracer/lite/TracerLite$libraryInfo$2;->this$0:Lru/ok/tracer/lite/TracerLite;

    invoke-static {v5}, Lru/ok/tracer/lite/TracerLite;->access$getManifest(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/manifest/TracerLiteManifest;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lru/ok/tracer/manifest/TracerLiteManifest;->environment()Ljava/lang/String;

    move-result-object v4

    .line 55
    :cond_3
    invoke-direct {v0, v1, v2, v3, v4}, Lru/ok/tracer/lite/TracerLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
