.class public final Lru/ok/tracer/lite/crash/report/LogEntryLiteKt;
.super Ljava/lang/Object;
.source "LogEntryLite.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u001a\u0018\u0010\u0002\u001a\u00020\u0003*\u00060\u0004j\u0002`\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "BASE_FMT",
        "Ljava/text/SimpleDateFormat;",
        "appendRFC3339",
        "",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "ts",
        "",
        "tracer-lite-crash-report_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BASE_FMT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    .line 27
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 25
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lru/ok/tracer/lite/crash/report/LogEntryLiteKt;->BASE_FMT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static final synthetic access$appendRFC3339(Ljava/lang/Appendable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lru/ok/tracer/lite/crash/report/LogEntryLiteKt;->appendRFC3339(Ljava/lang/Appendable;J)V

    return-void
.end method

.method private static final appendRFC3339(Ljava/lang/Appendable;J)V
    .locals 2

    .line 31
    sget-object v0, Lru/ok/tracer/lite/crash/report/LogEntryLiteKt;->BASE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 34
    check-cast p1, Ljava/lang/CharSequence;

    add-int/lit8 v0, p2, -0x2

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    const/16 v1, 0x3a

    .line 35
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 36
    invoke-interface {p0, p1, v0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method
