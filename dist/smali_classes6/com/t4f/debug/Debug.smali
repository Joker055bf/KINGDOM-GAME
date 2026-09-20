.class public Lcom/t4f/debug/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field private static final MAX_STACK_TRACE_LENGTH:I = 0x1000

.field private static debugListener:Lcom/t4f/debug/IDebugListener;

.field private static volatile sEnable:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-static {v0, p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, p1, v0}, Lcom/t4f/debug/Debug;->dispatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 92
    invoke-static {p0, p1, p2}, Lcom/t4f/debug/Debug;->dispatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-static {p0, p1, v0}, Lcom/t4f/debug/Debug;->dispatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 100
    invoke-static {p0, p1, p2}, Lcom/t4f/debug/Debug;->dispatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-static {p0, p1, v0}, Lcom/t4f/debug/Debug;->dispatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-static {p0, p1, v0}, Lcom/t4f/debug/Debug;->dispatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static dispatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 55
    sget-boolean v0, Lcom/t4f/debug/Debug;->sEnable:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    sget-object v0, Lcom/t4f/debug/Debug;->debugListener:Lcom/t4f/debug/IDebugListener;

    if-nez v0, :cond_1

    return-void

    .line 62
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_3

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Lcom/t4f/debug/Debug;->stackTraceOf(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    :cond_3
    invoke-interface {v0, p1}, Lcom/t4f/debug/IDebugListener;->onLog(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static setDebugListener(Lcom/t4f/debug/IDebugListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-static {v0, p0}, Lcom/t4f/debug/Debug;->setDebugListener(ZLcom/t4f/debug/IDebugListener;)V

    return-void
.end method

.method public static setDebugListener(ZLcom/t4f/debug/IDebugListener;)V
    .locals 0

    .line 46
    sput-object p1, Lcom/t4f/debug/Debug;->debugListener:Lcom/t4f/debug/IDebugListener;

    .line 47
    sput-boolean p0, Lcom/t4f/debug/Debug;->sEnable:Z

    return-void
.end method

.method private static stackTraceOf(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 77
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 80
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_0

    return-object p0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "...(truncated)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
