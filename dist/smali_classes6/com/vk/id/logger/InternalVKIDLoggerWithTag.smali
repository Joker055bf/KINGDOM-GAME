.class public final Lcom/vk/id/logger/InternalVKIDLoggerWithTag;
.super Ljava/lang/Object;
.source "InternalVKIDLoggerWithTag.kt"

# interfaces
.implements Lcom/vk/id/logger/InternalVKIDLogger;


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H\u0016J\u001a\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vk/id/logger/InternalVKIDLoggerWithTag;",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "tag",
        "",
        "logEngine",
        "Lcom/vk/id/logger/LogEngine;",
        "<init>",
        "(Ljava/lang/String;Lcom/vk/id/logger/LogEngine;)V",
        "info",
        "",
        "message",
        "debug",
        "error",
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


# instance fields
.field private final logEngine:Lcom/vk/id/logger/LogEngine;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vk/id/logger/LogEngine;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logEngine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/vk/id/logger/InternalVKIDLoggerWithTag;->tag:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/vk/id/logger/InternalVKIDLoggerWithTag;->logEngine:Lcom/vk/id/logger/LogEngine;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/vk/id/logger/InternalVKIDLoggerWithTag;->logEngine:Lcom/vk/id/logger/LogEngine;

    sget-object v1, Lcom/vk/id/logger/LogEngine$LogLevel;->DEBUG:Lcom/vk/id/logger/LogEngine$LogLevel;

    iget-object v2, p0, Lcom/vk/id/logger/InternalVKIDLoggerWithTag;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/vk/id/logger/LogEngine;->log(Lcom/vk/id/logger/LogEngine$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/vk/id/logger/InternalVKIDLoggerWithTag;->logEngine:Lcom/vk/id/logger/LogEngine;

    sget-object v1, Lcom/vk/id/logger/LogEngine$LogLevel;->ERROR:Lcom/vk/id/logger/LogEngine$LogLevel;

    iget-object v2, p0, Lcom/vk/id/logger/InternalVKIDLoggerWithTag;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/vk/id/logger/LogEngine;->log(Lcom/vk/id/logger/LogEngine$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/vk/id/logger/InternalVKIDLoggerWithTag;->logEngine:Lcom/vk/id/logger/LogEngine;

    sget-object v1, Lcom/vk/id/logger/LogEngine$LogLevel;->INFO:Lcom/vk/id/logger/LogEngine$LogLevel;

    iget-object v2, p0, Lcom/vk/id/logger/InternalVKIDLoggerWithTag;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/vk/id/logger/LogEngine;->log(Lcom/vk/id/logger/LogEngine$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
