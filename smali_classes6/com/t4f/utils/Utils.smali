.class public Lcom/t4f/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs closeSafe([Ljava/io/Closeable;)V
    .locals 5

    if-eqz p0, :cond_1

    .line 26
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception close safe.e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isUiThread()Z
    .locals 2

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$notifyFinishTryInUiThread$0(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)V
    .locals 0

    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lcom/t4f/utils/Utils;->notifyFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z

    return-void
.end method

.method static synthetic lambda$notifySdkFinishTryInUiThread$1(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)V
    .locals 0

    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Lcom/t4f/utils/Utils;->notifySdkFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return-void
.end method

.method public static notifyFinish(ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/t4f/sdk/core/OnFinish<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 52
    invoke-interface {p3, p0, p1, p2}, Lcom/t4f/sdk/core/OnFinish;->onFinish(ILjava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static notifyFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/t4f/sdk/core/OnFinish<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p4, :cond_1

    if-eqz p0, :cond_0

    .line 41
    invoke-static {}, Lcom/t4f/utils/Utils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    .line 45
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/t4f/utils/Utils;->notifyFinish(ILjava/lang/String;Ljava/lang/Object;Lcom/t4f/sdk/core/OnFinish;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    .locals 1

    if-eqz p3, :cond_2

    const-string v0, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 71
    :goto_1
    invoke-interface {p3, p0, p1, p2}, Lcom/t4f/sdk/core/OnSDKFinish;->onSdkFinish(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static notifySdkFinishTryInUiThread(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    .locals 7

    if-eqz p4, :cond_1

    if-eqz p0, :cond_0

    .line 60
    invoke-static {}, Lcom/t4f/utils/Utils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/t4f/utils/Utils$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    .line 64
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static readFileAsText(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "Not support read file as text."

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Fail read file as text while file path invalid."

    const/4 v4, 0x0

    if-nez p0, :cond_0

    .line 128
    :try_start_0
    invoke-static {v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v4, p0, v1

    .line 156
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object p1

    .line 130
    :cond_0
    :try_start_1
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 131
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v4, p0, v1

    .line 156
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object p1

    .line 135
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/t4f/utils/Utils;->readFileAsText(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v4, p1, v1

    .line 156
    invoke-static {p1}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object p0

    .line 136
    :cond_2
    :try_start_3
    instance-of v3, p0, Ljava/io/File;

    if-eqz v3, :cond_5

    .line 137
    move-object v0, p0

    check-cast v0, Ljava/io/File;

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_3

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v4, p0, v1

    .line 156
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object p1

    .line 141
    :cond_3
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    :goto_0
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 146
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 148
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v5, p1, v1

    .line 156
    invoke-static {p1}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v4, v5

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v4, v5

    goto :goto_1

    .line 150
    :cond_5
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v4, p0, v1

    .line 156
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object p1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 153
    :goto_1
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception read file as text.e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " filePath="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v4, p0, v1

    .line 156
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object p1

    :goto_2
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v4, p1, v1

    invoke-static {p1}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    .line 157
    throw p0
.end method

.method public static writeTextIntoFile(Ljava/lang/Object;Ljava/lang/String;ZZ)J
    .locals 12

    const-string v0, "Fail write text into file while file not exist or create fail.autoCreate="

    const-string v1, "To auto create file before write text into file."

    const-string v2, "Delete file while write NULL text into file.succeed="

    const-string v3, "Not support read file as text."

    const-string v4, "Exception write text info file.e="

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "Fail write text into file while file path invalid."

    const/4 v10, 0x0

    if-nez p0, :cond_0

    .line 81
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-array p0, v8, [Ljava/io/Closeable;

    aput-object v10, p0, v7

    .line 120
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-wide v5

    .line 83
    :cond_0
    :try_start_1
    instance-of v11, p0, Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 84
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array p0, v8, [Ljava/io/Closeable;

    aput-object v10, p0, v7

    .line 120
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-wide v5

    .line 88
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lcom/t4f/utils/Utils;->writeTextIntoFile(Ljava/lang/Object;Ljava/lang/String;ZZ)J

    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array p2, v8, [Ljava/io/Closeable;

    aput-object v10, p2, v7

    .line 120
    invoke-static {p2}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-wide p0

    .line 89
    :cond_2
    :try_start_3
    instance-of v9, p0, Ljava/io/File;

    if-eqz v9, :cond_8

    .line 90
    move-object v3, p0

    check-cast v3, Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v9, " "

    if-nez p1, :cond_3

    .line 92
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p1

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    new-array p0, v8, [Ljava/io/Closeable;

    aput-object v10, p0, v7

    .line 120
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-wide v5

    .line 95
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p2, :cond_5

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 101
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 104
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    new-array p0, v8, [Ljava/io/Closeable;

    aput-object v10, p0, v7

    .line 120
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-wide v5

    .line 108
    :cond_6
    :try_start_6
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string p3, "utf-8"

    .line 110
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 111
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 112
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_7
    new-array p0, v8, [Ljava/io/Closeable;

    aput-object p2, p0, v7

    .line 120
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-wide v5

    :catchall_0
    move-exception p0

    move-object v10, p2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v10, p2

    goto :goto_0

    .line 114
    :cond_8
    :try_start_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    new-array p0, v8, [Ljava/io/Closeable;

    aput-object v10, p0, v7

    .line 120
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-wide v5

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 117
    :goto_0
    :try_start_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " filePath="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    new-array p0, v8, [Ljava/io/Closeable;

    aput-object v10, p0, v7

    .line 120
    invoke-static {p0}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-wide v5

    :goto_1
    new-array p1, v8, [Ljava/io/Closeable;

    aput-object v10, p1, v7

    invoke-static {p1}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    .line 121
    throw p0
.end method
