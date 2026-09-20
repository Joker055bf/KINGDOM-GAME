.class public final Lru/ok/tracer/base/drop/DropManager;
.super Ljava/lang/Object;
.source "DropManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/base/drop/DropManager$Companion;,
        Lru/ok/tracer/base/drop/DropManager$DropRecordComparator;,
        Lru/ok/tracer/base/drop/DropManager$State;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDropManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DropManager.kt\nru/ok/tracer/base/drop/DropManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u0000 \u001a2\u00020\u0001:\u0003\u001a\u001b\u001cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012H\u0007J\u0016\u0010\u000c\u001a\u00020\r2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0007J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0017H\u0002J\u0016\u0010\u0018\u001a\u00020\r2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0017H\u0002J\u000e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0007R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lru/ok/tracer/base/drop/DropManager;",
        "",
        "file",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "dir",
        "lock",
        "Ljava/lang/Object;",
        "state",
        "Lru/ok/tracer/base/drop/DropManager$State;",
        "takenFile",
        "tmpFile",
        "drop",
        "",
        "event",
        "",
        "reason",
        "count",
        "",
        "records",
        "",
        "Lru/ok/tracer/base/drop/DropRecord;",
        "load",
        "",
        "save",
        "take",
        "Companion",
        "DropRecordComparator",
        "State",
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
.field public static final Companion:Lru/ok/tracer/base/drop/DropManager$Companion;

.field private static final DEFAULT_MAX_RECORDS_SIZE:I = 0xf

.field private static final EVENT_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final REASON_MAX_SIZE_EXCEEDED:Ljava/lang/String; = "max_size_exceeded"


# instance fields
.field private final dir:Ljava/io/File;

.field private final file:Ljava/io/File;

.field private final lock:Ljava/lang/Object;

.field private volatile state:Lru/ok/tracer/base/drop/DropManager$State;

.field private final takenFile:Ljava/io/File;

.field private final tmpFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/ok/tracer/base/drop/DropManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/base/drop/DropManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/base/drop/DropManager;->Companion:Lru/ok/tracer/base/drop/DropManager$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lru/ok/tracer/base/drop/DropManager;->file:Ljava/io/File;

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lru/ok/tracer/base/drop/DropManager;->dir:Ljava/io/File;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lru/ok/tracer/base/drop/DropManager;->tmpFile:Ljava/io/File;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".taken"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lru/ok/tracer/base/drop/DropManager;->takenFile:Ljava/io/File;

    .line 24
    sget-object p1, Lru/ok/tracer/base/drop/DropManager$State$None;->INSTANCE:Lru/ok/tracer/base/drop/DropManager$State$None;

    check-cast p1, Lru/ok/tracer/base/drop/DropManager$State;

    iput-object p1, p0, Lru/ok/tracer/base/drop/DropManager;->state:Lru/ok/tracer/base/drop/DropManager$State;

    .line 25
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/ok/tracer/base/drop/DropManager;->lock:Ljava/lang/Object;

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not in directory"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic drop$default(Lru/ok/tracer/base/drop/DropManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lru/ok/tracer/base/drop/DropManager;->drop(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private final load()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/ok/tracer/base/drop/DropRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "Couldn\'t read "

    const-string v1, "Tracer"

    .line 86
    iget-object v2, p0, Lru/ok/tracer/base/drop/DropManager;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    :try_start_0
    iget-object v2, p0, Lru/ok/tracer/base/drop/DropManager;->file:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 92
    sget-object v2, Lru/ok/tracer/base/drop/DropRecordSerializer;->INSTANCE:Lru/ok/tracer/base/drop/DropRecordSerializer;

    invoke-virtual {v2, v3}, Lru/ok/tracer/base/drop/DropRecordSerializer;->fromJsonArray$tracer_base_release(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lru/ok/tracer/base/drop/DropManager;->file:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v2

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lru/ok/tracer/base/drop/DropManager;->file:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :try_start_1
    iget-object v0, p0, Lru/ok/tracer/base/drop/DropManager;->file:Ljava/io/File;

    invoke-static {v0}, Lru/ok/tracer/base/io/FileUtils;->deleteChecked(Ljava/io/File;)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 100
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t delete "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lru/ok/tracer/base/drop/DropManager;->file:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final save(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/ok/tracer/base/drop/DropRecord;",
            ">;)V"
        }
    .end annotation

    .line 111
    sget-object v0, Lru/ok/tracer/base/drop/DropRecordSerializer;->INSTANCE:Lru/ok/tracer/base/drop/DropRecordSerializer;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lru/ok/tracer/base/drop/DropRecordSerializer;->toJsonArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "json.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    :try_start_0
    iget-object v0, p0, Lru/ok/tracer/base/drop/DropManager;->dir:Ljava/io/File;

    invoke-static {v0}, Lru/ok/tracer/base/io/FileUtils;->mkdirsChecked(Ljava/io/File;)Ljava/io/File;

    .line 115
    iget-object v0, p0, Lru/ok/tracer/base/drop/DropManager;->tmpFile:Ljava/io/File;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 116
    iget-object p1, p0, Lru/ok/tracer/base/drop/DropManager;->tmpFile:Ljava/io/File;

    iget-object v0, p0, Lru/ok/tracer/base/drop/DropManager;->file:Ljava/io/File;

    invoke-static {p1, v0}, Lru/ok/tracer/base/io/FileUtils;->renameToChecked(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/ok/tracer/base/drop/DropManager;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "Tracer"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :try_start_1
    iget-object p1, p0, Lru/ok/tracer/base/drop/DropManager;->file:Ljava/io/File;

    invoke-static {p1}, Lru/ok/tracer/base/io/FileUtils;->deleteChecked(Ljava/io/File;)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 123
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t delete "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lru/ok/tracer/base/drop/DropManager;->file:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final drop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lru/ok/tracer/base/drop/DropManager;->drop$default(Lru/ok/tracer/base/drop/DropManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public final drop(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lru/ok/tracer/base/drop/DropRecord;

    invoke-direct {v0, p1, p2, p3}, Lru/ok/tracer/base/drop/DropRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lru/ok/tracer/base/drop/DropManager;->drop(Ljava/util/Collection;)V

    return-void
.end method

.method public final drop(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lru/ok/tracer/base/drop/DropRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "records"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lru/ok/tracer/base/drop/DropManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lru/ok/tracer/base/drop/DropManager;->state:Lru/ok/tracer/base/drop/DropManager$State;

    .line 40
    instance-of v2, v1, Lru/ok/tracer/base/drop/DropManager$State$Taken;

    if-eqz v2, :cond_1

    check-cast v1, Lru/ok/tracer/base/drop/DropManager$State$Taken;

    invoke-virtual {v1}, Lru/ok/tracer/base/drop/DropManager$State$Taken;->getRecords()Ljava/util/List;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 41
    iget-object v1, p0, Lru/ok/tracer/base/drop/DropManager;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 42
    iget-object v1, p0, Lru/ok/tracer/base/drop/DropManager;->takenFile:Ljava/io/File;

    iget-object v2, p0, Lru/ok/tracer/base/drop/DropManager;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 43
    new-instance v1, Lru/ok/tracer/base/drop/DropManager$State$Loaded;

    check-cast p1, Ljava/util/List;

    invoke-direct {v1, p1}, Lru/ok/tracer/base/drop/DropManager$State$Loaded;-><init>(Ljava/util/List;)V

    check-cast v1, Lru/ok/tracer/base/drop/DropManager$State;

    iput-object v1, p0, Lru/ok/tracer/base/drop/DropManager;->state:Lru/ok/tracer/base/drop/DropManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    .line 47
    :cond_1
    :try_start_1
    iget-object v1, p0, Lru/ok/tracer/base/drop/DropManager;->state:Lru/ok/tracer/base/drop/DropManager$State;

    .line 48
    instance-of v2, v1, Lru/ok/tracer/base/drop/DropManager$State$None;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lru/ok/tracer/base/drop/DropManager;->load()Ljava/util/List;

    move-result-object v1

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 49
    :cond_2
    instance-of v2, v1, Lru/ok/tracer/base/drop/DropManager$State$Loaded;

    if-eqz v2, :cond_3

    check-cast v1, Lru/ok/tracer/base/drop/DropManager$State$Loaded;

    invoke-virtual {v1}, Lru/ok/tracer/base/drop/DropManager$State$Loaded;->getRecords()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_3
    instance-of v1, v1, Lru/ok/tracer/base/drop/DropManager$State$Taken;

    if-eqz v1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 52
    :goto_1
    sget-object v2, Lru/ok/tracer/base/drop/DropManager;->Companion:Lru/ok/tracer/base/drop/DropManager$Companion;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lru/ok/tracer/base/drop/DropManager$Companion;->merge$tracer_base_release$default(Lru/ok/tracer/base/drop/DropManager$Companion;Ljava/util/List;Ljava/util/Collection;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Lru/ok/tracer/base/drop/DropManager;->save(Ljava/util/List;)V

    .line 54
    new-instance v1, Lru/ok/tracer/base/drop/DropManager$State$Loaded;

    invoke-direct {v1, p1}, Lru/ok/tracer/base/drop/DropManager$State$Loaded;-><init>(Ljava/util/List;)V

    check-cast v1, Lru/ok/tracer/base/drop/DropManager$State;

    iput-object v1, p0, Lru/ok/tracer/base/drop/DropManager;->state:Lru/ok/tracer/base/drop/DropManager$State;

    .line 55
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    monitor-exit v0

    return-void

    .line 50
    :cond_4
    :try_start_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 38
    monitor-exit v0

    throw p1
.end method

.method public final take()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lru/ok/tracer/base/drop/DropRecord;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lru/ok/tracer/base/drop/DropManager;->state:Lru/ok/tracer/base/drop/DropManager$State;

    .line 61
    instance-of v1, v0, Lru/ok/tracer/base/drop/DropManager$State$Loaded;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lru/ok/tracer/base/drop/DropManager$State$Loaded;

    invoke-virtual {v1}, Lru/ok/tracer/base/drop/DropManager$State$Loaded;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    .line 64
    :cond_0
    instance-of v0, v0, Lru/ok/tracer/base/drop/DropManager$State$Taken;

    if-eqz v0, :cond_1

    .line 65
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    .line 67
    :cond_1
    iget-object v0, p0, Lru/ok/tracer/base/drop/DropManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lru/ok/tracer/base/drop/DropManager;->state:Lru/ok/tracer/base/drop/DropManager$State;

    .line 69
    instance-of v2, v1, Lru/ok/tracer/base/drop/DropManager$State$None;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lru/ok/tracer/base/drop/DropManager;->load()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 70
    :cond_2
    instance-of v2, v1, Lru/ok/tracer/base/drop/DropManager$State$Loaded;

    if-eqz v2, :cond_4

    check-cast v1, Lru/ok/tracer/base/drop/DropManager$State$Loaded;

    invoke-virtual {v1}, Lru/ok/tracer/base/drop/DropManager$State$Loaded;->getRecords()Ljava/util/List;

    move-result-object v1

    .line 75
    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 76
    iget-object v2, p0, Lru/ok/tracer/base/drop/DropManager;->file:Ljava/io/File;

    iget-object v3, p0, Lru/ok/tracer/base/drop/DropManager;->takenFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 77
    new-instance v2, Lru/ok/tracer/base/drop/DropManager$State$Taken;

    invoke-direct {v2, v1}, Lru/ok/tracer/base/drop/DropManager$State$Taken;-><init>(Ljava/util/List;)V

    check-cast v2, Lru/ok/tracer/base/drop/DropManager$State;

    iput-object v2, p0, Lru/ok/tracer/base/drop/DropManager;->state:Lru/ok/tracer/base/drop/DropManager$State;

    goto :goto_1

    .line 79
    :cond_3
    new-instance v2, Lru/ok/tracer/base/drop/DropManager$State$Loaded;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lru/ok/tracer/base/drop/DropManager$State$Loaded;-><init>(Ljava/util/List;)V

    check-cast v2, Lru/ok/tracer/base/drop/DropManager$State;

    iput-object v2, p0, Lru/ok/tracer/base/drop/DropManager;->state:Lru/ok/tracer/base/drop/DropManager$State;

    .line 81
    :goto_1
    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 71
    :cond_4
    :try_start_1
    instance-of v1, v1, Lru/ok/tracer/base/drop/DropManager$State$Taken;

    if-eqz v1, :cond_5

    .line 72
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_5
    :try_start_2
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 81
    monitor-exit v0

    throw v1
.end method
