.class public Lcom/game/sdk/comon/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static DEBUG:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    sget-boolean v0, Lcom/game/sdk/comon/utils/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 13
    sget-boolean v0, Lcom/game/sdk/comon/utils/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    sget-boolean v0, Lcom/game/sdk/comon/utils/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/game/sdk/comon/utils/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    sget-boolean v0, Lcom/game/sdk/comon/utils/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-boolean v0, Lcom/game/sdk/comon/utils/LogUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
