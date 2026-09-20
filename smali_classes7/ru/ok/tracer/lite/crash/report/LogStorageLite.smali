.class public final Lru/ok/tracer/lite/crash/report/LogStorageLite;
.super Ljava/lang/Object;
.source "LogStorageLite.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogStorageLite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogStorageLite.kt\nru/ok/tracer/lite/crash/report/LogStorageLite\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,34:1\n1#2:35\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lru/ok/tracer/lite/crash/report/LogStorageLite;",
        "",
        "maxLogsLength",
        "",
        "(I)V",
        "logs",
        "",
        "Lru/ok/tracer/lite/crash/report/LogEntryLite;",
        "getLogs$tracer_lite_crash_report_release",
        "()Ljava/util/List;",
        "logsDeque",
        "Lkotlin/collections/ArrayDeque;",
        "logsLength",
        "log",
        "",
        "msg",
        "",
        "tracer-lite-crash-report_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final logsDeque:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Lru/ok/tracer/lite/crash/report/LogEntryLite;",
            ">;"
        }
    .end annotation
.end field

.field private logsLength:I

.field private final maxLogsLength:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lru/ok/tracer/lite/crash/report/LogStorageLite;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lru/ok/tracer/lite/crash/report/LogStorageLite;->maxLogsLength:I

    .line 9
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lru/ok/tracer/lite/crash/report/LogStorageLite;->logsDeque:Lkotlin/collections/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x10000

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lru/ok/tracer/lite/crash/report/LogStorageLite;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getLogs$tracer_lite_crash_report_release()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/ok/tracer/lite/crash/report/LogEntryLite;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lru/ok/tracer/lite/crash/report/LogStorageLite;->logsDeque:Lkotlin/collections/ArrayDeque;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/ok/tracer/lite/crash/report/LogStorageLite;->logsDeque:Lkotlin/collections/ArrayDeque;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget v0, p0, Lru/ok/tracer/lite/crash/report/LogStorageLite;->maxLogsLength:I

    add-int/lit8 v0, v0, -0x24

    if-gtz v0, :cond_0

    const-string p1, "Tracer"

    const-string v0, "Logs length too limited"

    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 19
    :cond_0
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Lru/ok/tracer/lite/crash/report/LogEntryLite;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 20
    invoke-direct {v0, v1, v2, p1}, Lru/ok/tracer/lite/crash/report/LogEntryLite;-><init>(JLjava/lang/String;)V

    .line 24
    iget-object v1, p0, Lru/ok/tracer/lite/crash/report/LogStorageLite;->logsDeque:Lkotlin/collections/ArrayDeque;

    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, p0, Lru/ok/tracer/lite/crash/report/LogStorageLite;->logsDeque:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v2, v0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 26
    iget v0, p0, Lru/ok/tracer/lite/crash/report/LogStorageLite;->logsLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x24

    add-int/2addr v0, p1

    iput v0, p0, Lru/ok/tracer/lite/crash/report/LogStorageLite;->logsLength:I

    .line 27
    :goto_0
    iget p1, p0, Lru/ok/tracer/lite/crash/report/LogStorageLite;->logsLength:I

    const/high16 v0, 0x10000

    if-le p1, v0, :cond_1

    .line 28
    iget-object p1, p0, Lru/ok/tracer/lite/crash/report/LogStorageLite;->logsDeque:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/ok/tracer/lite/crash/report/LogEntryLite;

    .line 29
    iget v0, p0, Lru/ok/tracer/lite/crash/report/LogStorageLite;->logsLength:I

    invoke-virtual {p1}, Lru/ok/tracer/lite/crash/report/LogEntryLite;->getMessageString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x24

    sub-int/2addr v0, p1

    iput v0, p0, Lru/ok/tracer/lite/crash/report/LogStorageLite;->logsLength:I

    goto :goto_0

    .line 31
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method
