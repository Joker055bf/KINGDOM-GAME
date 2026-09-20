.class public final Lcom/vk/id/logger/InternalVKIDLog;
.super Ljava/lang/Object;
.source "InternalVKIDLog.kt"

# interfaces
.implements Lcom/vk/id/logger/LogEngine;


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0001H\u0007J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J*\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vk/id/logger/InternalVKIDLog;",
        "Lcom/vk/id/logger/LogEngine;",
        "<init>",
        "()V",
        "logEngine",
        "setLogEngine",
        "",
        "createLoggerForTag",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "tag",
        "",
        "log",
        "logLevel",
        "Lcom/vk/id/logger/LogEngine$LogLevel;",
        "message",
        "throwable",
        "",
        "logger_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

.field private static logEngine:Lcom/vk/id/logger/LogEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/id/logger/InternalVKIDLog;

    invoke-direct {v0}, Lcom/vk/id/logger/InternalVKIDLog;-><init>()V

    sput-object v0, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    .line 16
    new-instance v0, Lcom/vk/id/logger/InternalVKIDFakeLogEngine;

    invoke-direct {v0}, Lcom/vk/id/logger/InternalVKIDFakeLogEngine;-><init>()V

    check-cast v0, Lcom/vk/id/logger/LogEngine;

    sput-object v0, Lcom/vk/id/logger/InternalVKIDLog;->logEngine:Lcom/vk/id/logger/LogEngine;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;
    .locals 2
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/vk/id/logger/InternalVKIDLoggerWithTag;

    move-object v1, p0

    check-cast v1, Lcom/vk/id/logger/LogEngine;

    invoke-direct {v0, p1, v1}, Lcom/vk/id/logger/InternalVKIDLoggerWithTag;-><init>(Ljava/lang/String;Lcom/vk/id/logger/LogEngine;)V

    check-cast v0, Lcom/vk/id/logger/InternalVKIDLogger;

    return-object v0
.end method

.method public log(Lcom/vk/id/logger/LogEngine$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/vk/id/logger/InternalVKIDLog;->logEngine:Lcom/vk/id/logger/LogEngine;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/vk/id/logger/LogEngine;->log(Lcom/vk/id/logger/LogEngine$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setLogEngine(Lcom/vk/id/logger/LogEngine;)V
    .locals 1
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    const-string v0, "logEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sput-object p1, Lcom/vk/id/logger/InternalVKIDLog;->logEngine:Lcom/vk/id/logger/LogEngine;

    return-void
.end method
