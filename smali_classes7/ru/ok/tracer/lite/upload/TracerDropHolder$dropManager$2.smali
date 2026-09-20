.class final Lru/ok/tracer/lite/upload/TracerDropHolder$dropManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TracerDropHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/ok/tracer/lite/upload/TracerDropHolder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lru/ok/tracer/base/drop/DropManager;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lru/ok/tracer/base/drop/DropManager;",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $libraryPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/ok/tracer/lite/upload/TracerDropHolder$dropManager$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lru/ok/tracer/lite/upload/TracerDropHolder$dropManager$2;->$libraryPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lru/ok/tracer/lite/upload/TracerDropHolder$dropManager$2;->invoke()Lru/ok/tracer/base/drop/DropManager;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lru/ok/tracer/base/drop/DropManager;
    .locals 4

    .line 13
    new-instance v0, Lru/ok/tracer/base/drop/DropManager;

    .line 14
    sget-object v1, Lru/ok/tracer/lite/TracerLiteFiles;->INSTANCE:Lru/ok/tracer/lite/TracerLiteFiles;

    iget-object v2, p0, Lru/ok/tracer/lite/upload/TracerDropHolder$dropManager$2;->$context:Landroid/content/Context;

    iget-object v3, p0, Lru/ok/tracer/lite/upload/TracerDropHolder$dropManager$2;->$libraryPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lru/ok/tracer/lite/TracerLiteFiles;->getTracerLiteDir$tracer_lite_commons_release(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "drops.json"

    invoke-static {v1, v2}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lru/ok/tracer/base/drop/DropManager;-><init>(Ljava/io/File;)V

    return-object v0
.end method
