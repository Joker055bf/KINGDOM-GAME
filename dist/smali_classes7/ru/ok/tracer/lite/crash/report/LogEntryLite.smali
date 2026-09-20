.class public final Lru/ok/tracer/lite/crash/report/LogEntryLite;
.super Ljava/lang/Object;
.source "LogEntryLite.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u000b\u001a\u00020\u000c2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lru/ok/tracer/lite/crash/report/LogEntryLite;",
        "",
        "ts",
        "",
        "messageString",
        "",
        "(JLjava/lang/String;)V",
        "getMessageString",
        "()Ljava/lang/String;",
        "getTs",
        "()J",
        "appendToApi",
        "",
        "out",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "seq",
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
.field private final messageString:Ljava/lang/String;

.field private final ts:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    const-string v0, "messageString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lru/ok/tracer/lite/crash/report/LogEntryLite;->ts:J

    .line 9
    iput-object p3, p0, Lru/ok/tracer/lite/crash/report/LogEntryLite;->messageString:Ljava/lang/String;

    return-void
.end method

.method public static synthetic appendToApi$default(Lru/ok/tracer/lite/crash/report/LogEntryLite;Ljava/lang/Appendable;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/ok/tracer/lite/crash/report/LogEntryLite;->appendToApi(Ljava/lang/Appendable;I)V

    return-void
.end method


# virtual methods
.method public final appendToApi(Ljava/lang/Appendable;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "#"

    .line 15
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 16
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string p2, " "

    .line 17
    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 18
    iget-wide v0, p0, Lru/ok/tracer/lite/crash/report/LogEntryLite;->ts:J

    invoke-static {p1, v0, v1}, Lru/ok/tracer/lite/crash/report/LogEntryLiteKt;->access$appendRFC3339(Ljava/lang/Appendable;J)V

    const-string p2, " | "

    .line 19
    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 20
    iget-object p2, p0, Lru/ok/tracer/lite/crash/report/LogEntryLite;->messageString:Ljava/lang/String;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string p2, "\n"

    .line 21
    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public final getMessageString()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/ok/tracer/lite/crash/report/LogEntryLite;->messageString:Ljava/lang/String;

    return-object v0
.end method

.method public final getTs()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lru/ok/tracer/lite/crash/report/LogEntryLite;->ts:J

    return-wide v0
.end method
