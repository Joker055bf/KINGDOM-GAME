.class public final Lru/ok/tracer/base/stacktrace/ThrowableUtils;
.super Ljava/lang/Object;
.source "ThrowableUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0007\u001a-\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u00032\u000e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003H\u0002\u00a2\u0006\u0002\u0010\u0006\u001a#\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002\u00a2\u0006\u0002\u0010\u000b\u001a\u001c\u0010\u000c\u001a\u00060\rj\u0002`\u000e*\u00060\rj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u0001H\u0002\u001a\u0016\u0010\u0010\u001a\u00020\u0011*\u00020\t2\n\u0010\u0012\u001a\u00060\rj\u0002`\u000e\u001a]\u0010\u0010\u001a\u00020\u0011*\u00020\t2\n\u0010\u0012\u001a\u00060\rj\u0002`\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00110\u0016H\u0002\u00a2\u0006\u0002\u0010\u0017\u001a*\u0010\u0018\u001a\u00020\u0011*\u00020\u00042\n\u0010\u0012\u001a\u00060\rj\u0002`\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u001a,\u0010\u0019\u001a\u00020\u0011\"\u0004\u0008\u0000\u0010\u001a*\u000e\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u00020\u00110\u00162\u0006\u0010\u001b\u001a\u0002H\u001aH\u0082\u0002\u00a2\u0006\u0002\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "framesInCommon",
        "",
        "a",
        "",
        "Ljava/lang/StackTraceElement;",
        "b",
        "([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I",
        "framesRepeat",
        "ex",
        "",
        "trace",
        "(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)I",
        "appendIndent",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "indent",
        "appendStackTraceTo",
        "",
        "out",
        "prefix",
        "",
        "visited",
        "",
        "(Ljava/lang/Throwable;Ljava/lang/Appendable;ILjava/lang/String;[Ljava/lang/StackTraceElement;ILjava/util/Map;)V",
        "appendTo",
        "plusAssign",
        "T",
        "key",
        "(Ljava/util/Map;Ljava/lang/Object;)V",
        "tracer-base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final appendIndent(Ljava/lang/Appendable;I)Ljava/lang/Appendable;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "\t"

    .line 111
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static final appendStackTraceTo(Ljava/lang/Throwable;Ljava/lang/Appendable;)V
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const-string v0, "stackTrace"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 11
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    const/16 v8, 0x16

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 8
    invoke-static/range {v1 .. v9}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->appendStackTraceTo$default(Ljava/lang/Throwable;Ljava/lang/Appendable;ILjava/lang/String;[Ljava/lang/StackTraceElement;ILjava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method private static final appendStackTraceTo(Ljava/lang/Throwable;Ljava/lang/Appendable;ILjava/lang/String;[Ljava/lang/StackTraceElement;ILjava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Appendable;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 23
    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "append(\'\\n\')"

    const/16 v11, 0xa

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 24
    invoke-static {v8, v1}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->appendIndent(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    move-result-object v1

    const-string v2, "[CIRCULAR REFERENCE: "

    .line 25
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "]"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "out.appendIndent(1)\n    \u2026s.toString()).append(\"]\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_0
    invoke-static {v10, v0}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->plusAssign(Ljava/util/Map;Ljava/lang/Object;)V

    .line 32
    invoke-static/range {p1 .. p2}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->appendIndent(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    move-result-object v1

    .line 33
    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    const-string v2, "out.appendIndent(indent)\u2026).append(this.toString())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {v1, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {v0, v9}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->framesRepeat(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)I

    move-result v12

    if-lez v12, :cond_1

    move v13, v12

    goto :goto_0

    .line 39
    :cond_1
    array-length v1, v9

    sub-int v1, v1, p5

    move v13, v1

    :goto_0
    const/4 v14, 0x0

    move v15, v14

    :goto_1
    if-ge v15, v13, :cond_2

    .line 42
    aget-object v1, v9, v15

    add-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v2, p1

    .line 43
    invoke-static/range {v1 .. v6}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->appendTo$default(Ljava/lang/StackTraceElement;Ljava/lang/Appendable;ILjava/lang/String;ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "... "

    if-lez v12, :cond_3

    add-int/lit8 v2, p2, 0x1

    .line 46
    invoke-static {v8, v2}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->appendIndent(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    move-result-object v2

    .line 47
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    const-string v2, " calls repeat"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    const-string v2, "out.appendIndent(indent \u2026).append(\" calls repeat\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {v1, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz p5, :cond_4

    add-int/lit8 v2, p2, 0x1

    .line 51
    invoke-static {v8, v2}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->appendIndent(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    move-result-object v2

    .line 52
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    const-string v2, " more"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    const-string v2, "out.appendIndent(indent \u2026String()).append(\" more\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {v1, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v11

    const-string v1, "suppressed"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v12, v11

    :goto_3
    if-ge v14, v12, :cond_5

    aget-object v1, v11, v14

    .line 57
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const-string v2, "supp"

    .line 58
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v3, p2, 0x1

    const-string v4, "Suppressed: "

    const-string v2, "suppTrace"

    .line 62
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {v9, v5}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->framesInCommon([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v6

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    .line 58
    invoke-static/range {v1 .. v7}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->appendStackTraceTo(Ljava/lang/Throwable;Ljava/lang/Appendable;ILjava/lang/String;[Ljava/lang/StackTraceElement;ILjava/util/Map;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 68
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const-string v3, "Caused by: "

    const-string v1, "causeTrace"

    .line 75
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {v9, v4}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->framesInCommon([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v5

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v6, p6

    .line 71
    invoke-static/range {v0 .. v6}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->appendStackTraceTo(Ljava/lang/Throwable;Ljava/lang/Appendable;ILjava/lang/String;[Ljava/lang/StackTraceElement;ILjava/util/Map;)V

    :cond_6
    return-void
.end method

.method static synthetic appendStackTraceTo$default(Ljava/lang/Throwable;Ljava/lang/Appendable;ILjava/lang/String;[Ljava/lang/StackTraceElement;ILjava/util/Map;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, p2

    :goto_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1

    const-string v0, ""

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    move-object v8, p6

    .line 15
    invoke-static/range {v2 .. v8}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->appendStackTraceTo(Ljava/lang/Throwable;Ljava/lang/Appendable;ILjava/lang/String;[Ljava/lang/StackTraceElement;ILjava/util/Map;)V

    return-void
.end method

.method public static final appendTo(Ljava/lang/StackTraceElement;Ljava/lang/Appendable;ILjava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {p1, p2}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->appendIndent(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    move-result-object p2

    .line 96
    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 99
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Native Method"

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "Unknown Source"

    .line 102
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    const-string v0, "."

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    const-string v0, "("

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 103
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p2

    if-ltz p2, :cond_2

    const-string p2, ":"

    .line 104
    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2
    const-string p0, ")"

    .line 106
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    const-string p1, "out.append(\")\")"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    const-string p1, "append(\'\\n\')"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic appendTo$default(Ljava/lang/StackTraceElement;Ljava/lang/Appendable;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, "at "

    .line 94
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->appendTo(Ljava/lang/StackTraceElement;Ljava/lang/Appendable;ILjava/lang/String;)V

    return-void
.end method

.method private static final framesInCommon([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .locals 4

    .line 119
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v0

    .line 120
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    .line 121
    aget-object v2, p0, v0

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method private static final framesRepeat(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)I
    .locals 4

    .line 83
    instance-of p0, p0, Ljava/lang/StackOverflowError;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 84
    aget-object p0, p1, v0

    .line 85
    array-length v1, p1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 86
    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static final plusAssign(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;",
            "Lkotlin/Unit;",
            ">;TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
