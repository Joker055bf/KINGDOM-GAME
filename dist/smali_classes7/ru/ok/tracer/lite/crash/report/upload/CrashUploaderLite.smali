.class public final Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;
.super Ljava/lang/Object;
.source "CrashUploaderLite.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrashUploaderLite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrashUploaderLite.kt\nru/ok/tracer/lite/crash/report/upload/CrashUploaderLite\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 HttpMultipartBody.kt\nru/ok/tracer/base/http/HttpMultipartBodyBuilder$Companion\n*L\n1#1,165:1\n1#2:166\n37#3:167\n*S KotlinDebug\n*F\n+ 1 CrashUploaderLite.kt\nru/ok/tracer/lite/crash/report/upload/CrashUploaderLite\n*L\n94#1:167\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J@\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00122\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u000e\u0008\u0002\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0017R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;",
        "",
        "tracer",
        "Lru/ok/tracer/lite/TracerLite;",
        "limits",
        "Lru/ok/tracer/lite/limits/TracerLiteLimits;",
        "(Lru/ok/tracer/lite/TracerLite;Lru/ok/tracer/lite/limits/TracerLiteLimits;)V",
        "commandHandler",
        "Lru/ok/tracer/base/commands/CommandsHandler;",
        "dropManager",
        "Lru/ok/tracer/base/drop/DropManager;",
        "getDropManager",
        "()Lru/ok/tracer/base/drop/DropManager;",
        "httpClientHolder",
        "Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;",
        "upload",
        "",
        "severity",
        "",
        "e",
        "",
        "issueKey",
        "logs",
        "",
        "Lru/ok/tracer/lite/crash/report/LogEntryLite;",
        "tags",
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
.field private final commandHandler:Lru/ok/tracer/base/commands/CommandsHandler;

.field private final httpClientHolder:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

.field private final tracer:Lru/ok/tracer/lite/TracerLite;


# direct methods
.method public constructor <init>(Lru/ok/tracer/lite/TracerLite;Lru/ok/tracer/lite/limits/TracerLiteLimits;)V
    .locals 1

    const-string v0, "tracer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limits"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    .line 32
    sget-object v0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->Companion:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$Companion;

    invoke-virtual {v0, p1}, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$Companion;->get(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

    move-result-object p1

    iput-object p1, p0, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->httpClientHolder:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

    .line 33
    new-instance p1, Lru/ok/tracer/base/commands/CommandsHandler$Builder;

    invoke-direct {p1}, Lru/ok/tracer/base/commands/CommandsHandler$Builder;-><init>()V

    const-string v0, "CRASH_REPORT"

    .line 34
    invoke-virtual {p1, v0}, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->setFeatureName(Ljava/lang/String;)Lru/ok/tracer/base/commands/CommandsHandler$Builder;

    move-result-object p1

    .line 35
    check-cast p2, Lru/ok/tracer/base/limits/TracerFeatureLimits;

    invoke-virtual {p1, p2}, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->setLimitsHandler(Lru/ok/tracer/base/limits/TracerFeatureLimits;)Lru/ok/tracer/base/commands/CommandsHandler$Builder;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->build()Lru/ok/tracer/base/commands/CommandsHandler;

    move-result-object p1

    iput-object p1, p0, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->commandHandler:Lru/ok/tracer/base/commands/CommandsHandler;

    return-void
.end method

.method private final getDropManager()Lru/ok/tracer/base/drop/DropManager;
    .locals 2

    .line 38
    sget-object v0, Lru/ok/tracer/lite/upload/TracerDropHolder;->Companion:Lru/ok/tracer/lite/upload/TracerDropHolder$Companion;

    iget-object v1, p0, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v0, v1}, Lru/ok/tracer/lite/upload/TracerDropHolder$Companion;->get(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/base/drop/DropManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic upload$default(Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 40
    invoke-virtual/range {v0 .. v5}, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->upload(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final upload(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lru/ok/tracer/lite/crash/report/LogEntryLite;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    const-string v4, "No lib token"

    const-string v5, "severity"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "e"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "logs"

    move-object/from16 v7, p4

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "tags"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :try_start_0
    iget-object v8, v1, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v8}, Lru/ok/tracer/lite/TracerLite;->getLibToken()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_c

    .line 53
    iget-object v4, v1, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v4}, Lru/ok/tracer/lite/TracerLite;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lru/ok/tracer/base/apptoken/AppTokenUtils;->getHostAppToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 56
    iget-object v9, v1, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v9}, Lru/ok/tracer/lite/TracerLite;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 57
    iget-object v9, v1, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v9}, Lru/ok/tracer/lite/TracerLite;->getLibraryInfo()Lru/ok/tracer/lite/TracerLibraryInfo;

    move-result-object v11

    .line 58
    iget-object v9, v1, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v9}, Lru/ok/tracer/lite/TracerLite;->getSessionUuid()Ljava/lang/String;

    move-result-object v12

    .line 59
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 61
    move-object v9, v3

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    const/4 v15, 0x0

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v15

    :goto_0
    move-object/from16 v14, p3

    move-object v9, v15

    move-object v15, v3

    .line 55
    invoke-static/range {v10 .. v15}, Lru/ok/tracer/lite/upload/UploadBeanUtilsLite;->composeLibUploadBean(Landroid/content/Context;Lru/ok/tracer/lite/TracerLibraryInfo;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v3, "uploadBean.toString()"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v3

    check-cast v10, Ljava/lang/Appendable;

    invoke-static {v2, v10}, Lru/ok/tracer/base/stacktrace/ThrowableUtils;->appendStackTraceTo(Ljava/lang/Throwable;Ljava/lang/Appendable;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {v2}, Lru/ok/tracer/base/io/GZIPUtils;->toGzippedByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 69
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v15, v9

    goto :goto_2

    .line 70
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    add-int/lit8 v13, v11, 0x1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lru/ok/tracer/lite/crash/report/LogEntryLite;

    .line 72
    move-object v15, v10

    check-cast v15, Ljava/lang/Appendable;

    invoke-virtual {v14, v15, v11}, Lru/ok/tracer/lite/crash/report/LogEntryLite;->appendToApi(Ljava/lang/Appendable;I)V

    move v11, v13

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    if-eqz v15, :cond_3

    .line 76
    invoke-static {v15}, Lru/ok/tracer/base/io/GZIPUtils;->toGzippedByteArray(Ljava/lang/String;)[B

    move-result-object v15

    move-object v3, v15

    goto :goto_3

    :cond_3
    move-object v3, v9

    .line 78
    :goto_3
    invoke-direct/range {p0 .. p0}, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->getDropManager()Lru/ok/tracer/base/drop/DropManager;

    move-result-object v7

    invoke-virtual {v7}, Lru/ok/tracer/base/drop/DropManager;->take()Ljava/util/Collection;

    move-result-object v7

    .line 79
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_4

    move-object v15, v7

    goto :goto_4

    :cond_4
    move-object v15, v9

    :goto_4
    if-eqz v15, :cond_5

    sget-object v10, Lru/ok/tracer/base/drop/DropRecordSerializer;->INSTANCE:Lru/ok/tracer/base/drop/DropRecordSerializer;

    invoke-virtual {v10, v15}, Lru/ok/tracer/base/drop/DropRecordSerializer;->toJsonArray(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    goto :goto_5

    :cond_5
    move-object/from16 v18, v9

    .line 81
    :goto_5
    iget-object v10, v1, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v10}, Lru/ok/tracer/lite/TracerLite;->getConfiguration()Lru/ok/tracer/lite/TracerLite$Configuration;

    move-result-object v10

    invoke-virtual {v10}, Lru/ok/tracer/lite/TracerLite$Configuration;->getApiUrl()Ljava/lang/String;

    move-result-object v10

    .line 82
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "api/crash/upload"

    .line 83
    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "crashToken"

    .line 84
    invoke-virtual {v10, v11, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    if-eqz v4, :cond_6

    const-string v10, "crashHostAppToken"

    .line 87
    invoke-virtual {v8, v10, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    :cond_6
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "tracer.configuration.api\u2026}\n            .toString()"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v8, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;->Companion:Lru/ok/tracer/base/http/HttpMultipartBodyBuilder$Companion;

    .line 167
    new-instance v8, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;

    invoke-direct {v8}, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;-><init>()V

    const-string v10, "type"

    const-string v11, "NON_FATAL"

    .line 95
    invoke-virtual {v8, v10, v11}, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;

    const-string v10, "format"

    const-string v11, "JVM_STACKTRACE"

    .line 96
    invoke-virtual {v8, v10, v11}, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;

    .line 97
    invoke-virtual {v8, v5, v0}, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;

    .line 100
    sget-object v0, Lru/ok/tracer/base/http/HttpRequestBody;->Companion:Lru/ok/tracer/base/http/HttpRequestBody$Companion;

    const-string v5, "application/octet-stream"

    invoke-virtual {v0, v5, v2}, Lru/ok/tracer/base/http/HttpRequestBody$Companion;->fromBytes(Ljava/lang/String;[B)Lru/ok/tracer/base/http/HttpRequestBody;

    move-result-object v0

    const-string v2, "stackTrace"

    const-string v10, "stack.gzip"

    .line 98
    invoke-virtual {v8, v2, v10, v0}, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;->add(Ljava/lang/String;Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;)Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;

    const-string v20, "uploadBean"

    const/16 v21, 0x0

    .line 107
    sget-object v10, Lru/ok/tracer/base/http/HttpRequestBody;->Companion:Lru/ok/tracer/base/http/HttpRequestBody$Companion;

    const-string v11, "application/json; charset=utf-8"

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lru/ok/tracer/base/http/HttpRequestBody$Companion;->fromString$default(Lru/ok/tracer/base/http/HttpRequestBody$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)Lru/ok/tracer/base/http/HttpRequestBody;

    move-result-object v22

    const/16 v23, 0x2

    const/16 v24, 0x0

    move-object/from16 v19, v8

    .line 105
    invoke-static/range {v19 .. v24}, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;->add$default(Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;Ljava/lang/String;Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;ILjava/lang/Object;)Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;

    if-eqz v3, :cond_7

    .line 115
    sget-object v0, Lru/ok/tracer/base/http/HttpRequestBody;->Companion:Lru/ok/tracer/base/http/HttpRequestBody$Companion;

    invoke-virtual {v0, v5, v3}, Lru/ok/tracer/base/http/HttpRequestBody$Companion;->fromBytes(Ljava/lang/String;[B)Lru/ok/tracer/base/http/HttpRequestBody;

    move-result-object v0

    const-string v2, "logs.gzip"

    .line 113
    invoke-virtual {v8, v6, v2, v0}, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;->add(Ljava/lang/String;Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;)Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;

    :cond_7
    if-eqz v18, :cond_8

    .line 124
    sget-object v16, Lru/ok/tracer/base/http/HttpRequestBody;->Companion:Lru/ok/tracer/base/http/HttpRequestBody$Companion;

    const-string v17, "application/json"

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lru/ok/tracer/base/http/HttpRequestBody$Companion;->fromString$default(Lru/ok/tracer/base/http/HttpRequestBody$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)Lru/ok/tracer/base/http/HttpRequestBody;

    move-result-object v0

    const-string v2, "drops"

    const-string v3, "drops.json"

    .line 122
    invoke-virtual {v8, v2, v3, v0}, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;->add(Ljava/lang/String;Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;)Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;

    .line 167
    :cond_8
    invoke-virtual {v8}, Lru/ok/tracer/base/http/HttpMultipartBodyBuilder;->build()Lru/ok/tracer/base/http/HttpRequestBody;

    move-result-object v0

    .line 92
    new-instance v2, Lru/ok/tracer/base/http/HttpRequest;

    invoke-direct {v2, v4, v0}, Lru/ok/tracer/base/http/HttpRequest;-><init>(Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;)V

    .line 134
    :try_start_1
    iget-object v0, v1, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->httpClientHolder:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

    invoke-virtual {v0}, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->getHttpClient()Lru/ok/tracer/base/http/HttpClient;

    move-result-object v0

    invoke-interface {v0, v2}, Lru/ok/tracer/base/http/HttpClient;->execute(Lru/ok/tracer/base/http/HttpRequest;)Lru/ok/tracer/base/http/HttpResponse;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v0, v2

    check-cast v0, Lru/ok/tracer/base/http/HttpResponse;

    .line 135
    invoke-virtual {v0}, Lru/ok/tracer/base/http/HttpResponse;->getStatusCode()I

    move-result v3

    .line 136
    invoke-virtual {v0}, Lru/ok/tracer/base/http/HttpResponse;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {v0}, Lru/ok/tracer/base/http/HttpResponse;->getBody()Lru/ok/tracer/base/http/HttpResponseBody;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lru/ok/tracer/base/http/HttpResponseBody;->getContentType()Ljava/lang/String;

    move-result-object v15

    goto :goto_6

    :cond_9
    move-object v15, v9

    .line 138
    :goto_6
    invoke-virtual {v0}, Lru/ok/tracer/base/http/HttpResponse;->getBody()Lru/ok/tracer/base/http/HttpResponseBody;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lru/ok/tracer/base/http/HttpResponseBody;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_a
    move-object v0, v9

    .line 140
    :goto_7
    iget-object v5, v1, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->commandHandler:Lru/ok/tracer/base/commands/CommandsHandler;

    invoke-virtual {v5, v15, v0}, Lru/ok/tracer/base/commands/CommandsHandler;->handleResponse(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne v3, v0, :cond_b

    .line 148
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :try_start_3
    invoke-static {v2, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    .line 146
    :cond_b
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 134
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_6
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "Tracer crash report failed"

    .line 150
    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "ru.ok.tracer"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    invoke-direct/range {p0 .. p0}, Lru/ok/tracer/lite/crash/report/upload/CrashUploaderLite;->getDropManager()Lru/ok/tracer/base/drop/DropManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lru/ok/tracer/base/drop/DropManager;->drop(Ljava/util/Collection;)V

    :goto_8
    return-void

    .line 48
    :cond_c
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    const-string v0, "Tracer"

    .line 50
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
