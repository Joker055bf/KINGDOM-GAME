.class public Lcom/tgs/aics/utils/ErrorUtils;
.super Ljava/lang/Object;
.source "ErrorUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "aics.ErrorUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 21
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printExceptionInfo(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "=>printExceptionInfo"

    const-string v1, "aics.ErrorUtils"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "<=printExceptionInfo"

    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
