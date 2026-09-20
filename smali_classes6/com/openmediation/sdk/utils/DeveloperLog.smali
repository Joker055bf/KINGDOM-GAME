.class public Lcom/openmediation/sdk/utils/DeveloperLog;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "OmDev"

.field private static debug:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/openmediation/sdk/utils/DeveloperLog;->debug:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OmDev"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static LogD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/openmediation/sdk/utils/DeveloperLog;->debug:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OmDev:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static LogD(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/openmediation/sdk/utils/DeveloperLog;->debug:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OmDev"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static LogE(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/openmediation/sdk/utils/DeveloperLog;->debug:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OmDev"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static LogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/openmediation/sdk/utils/DeveloperLog;->debug:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OmDev"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static LogW(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/openmediation/sdk/utils/DeveloperLog;->debug:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OmDev"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OmDev"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static enableDebug(Landroid/content/Context;Z)V
    .locals 1

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v0, "log.txt"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    sput-boolean p0, Lcom/openmediation/sdk/utils/DeveloperLog;->debug:Z

    return-void
.end method
