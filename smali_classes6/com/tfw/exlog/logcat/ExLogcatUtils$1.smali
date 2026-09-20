.class Lcom/tfw/exlog/logcat/ExLogcatUtils$1;
.super Ljava/lang/Object;
.source "ExLogcatUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tfw/exlog/logcat/ExLogcatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 63
    :try_start_0
    invoke-static {}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->access$000()Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;

    move-result-object v0

    const/4 v1, 0x0

    .line 64
    invoke-static {v1}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->access$002(Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;)Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;

    .line 66
    invoke-static {}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->access$100()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v1, v0, Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;->outputFilePath:Ljava/lang/String;

    .line 71
    iget-object v2, v0, Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;->encKey1:Ljava/lang/String;

    .line 72
    iget-object v3, v0, Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;->encKey2:Ljava/lang/String;

    .line 73
    iget v0, v0, Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;->lineCountMax:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "ExLog"

    if-eqz v2, :cond_6

    if-nez v3, :cond_1

    goto :goto_3

    .line 80
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->access$200()Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 81
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 84
    invoke-static {v5, v1}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->access$300(Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 85
    invoke-static {v7, v2, v3}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->access$400(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v7

    move v8, v1

    .line 90
    :goto_0
    invoke-static {}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->access$100()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 92
    :cond_2
    :goto_1
    invoke-static {}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->access$100()Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v9, :cond_4

    .line 95
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v9, :cond_3

    goto :goto_2

    .line 105
    :cond_3
    :try_start_3
    invoke-virtual {v7, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v9, 0xa

    .line 106
    invoke-virtual {v7, v9}, Ljava/io/Writer;->write(I)V

    .line 107
    invoke-virtual {v7}, Ljava/io/Writer;->flush()V

    add-int/lit8 v8, v8, 0x1

    if-lt v8, v0, :cond_2

    const-string v8, "Max line count reached. Re-creating log file."

    .line 115
    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v7}, Ljava/io/Writer;->flush()V

    .line 118
    invoke-virtual {v7}, Ljava/io/Writer;->close()V

    const/4 v7, 0x1

    .line 120
    invoke-static {v5, v7}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->access$300(Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 121
    invoke-static {v7, v2, v3}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->access$400(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v7

    move v8, v1

    goto :goto_1

    :catch_0
    :cond_4
    :goto_2
    const-wide/16 v9, 0x64

    .line 125
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 128
    :cond_5
    invoke-virtual {v7}, Ljava/io/Writer;->flush()V

    .line 129
    invoke-virtual {v7}, Ljava/io/Writer;->close()V

    goto :goto_4

    :cond_6
    :goto_3
    const-string v0, "encKey1 or encKey2 is null."

    .line 76
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method
