.class public Lcom/unity/udp/extension/sdk/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static enabled:Z = false

.field private static store:Ljava/lang/String; = "UDP"

.field private static tag:Ljava/lang/String; = "UDPExtension"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugLog(Z)V
    .locals 0

    .line 31
    sput-boolean p0, Lcom/unity/udp/extension/sdk/utils/Logger;->enabled:Z

    return-void
.end method

.method public static enableDebugLog(ZLjava/lang/String;)V
    .locals 0

    .line 35
    sput-boolean p0, Lcom/unity/udp/extension/sdk/utils/Logger;->enabled:Z

    .line 36
    sput-object p1, Lcom/unity/udp/extension/sdk/utils/Logger;->tag:Ljava/lang/String;

    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 4

    .line 22
    sget-boolean v0, Lcom/unity/udp/extension/sdk/utils/Logger;->enabled:Z

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/unity/udp/extension/sdk/utils/Logger;->tag:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/unity/udp/extension/sdk/utils/Logger;->store:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "[%s] %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 4

    .line 14
    sget-object v0, Lcom/unity/udp/extension/sdk/utils/Logger;->tag:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/unity/udp/extension/sdk/utils/Logger;->store:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "[%s] %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 4

    .line 27
    sget-object v0, Lcom/unity/udp/extension/sdk/utils/Logger;->tag:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/unity/udp/extension/sdk/utils/Logger;->store:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "[%s] %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logWarn(Ljava/lang/String;)V
    .locals 4

    .line 18
    sget-object v0, Lcom/unity/udp/extension/sdk/utils/Logger;->tag:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/unity/udp/extension/sdk/utils/Logger;->store:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "[%s] %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setStore(Ljava/lang/String;)V
    .locals 0

    .line 40
    sput-object p0, Lcom/unity/udp/extension/sdk/utils/Logger;->store:Ljava/lang/String;

    return-void
.end method
