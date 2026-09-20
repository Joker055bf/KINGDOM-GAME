.class Lcom/t4f/saver/FileSaver;
.super Ljava/lang/Object;
.source "FileSaver.java"

# interfaces
.implements Lcom/t4f/saver/Saver;


# instance fields
.field private mFolder:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/t4f/saver/FileSaver;->mFolder:Ljava/io/File;

    return-void
.end method

.method private close(Ljava/io/Closeable;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 97
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private read(Ljava/io/File;Ljava/lang/String;[B)[B
    .locals 5

    if-eqz p1, :cond_5

    .line 65
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p2, :cond_4

    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_3

    .line 72
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    return-object p3

    :cond_2
    const/4 p1, 0x0

    .line 78
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 82
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    .line 83
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    invoke-direct {p0, p2}, Lcom/t4f/saver/FileSaver;->close(Ljava/io/Closeable;)Z

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 87
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    invoke-direct {p0, p2}, Lcom/t4f/saver/FileSaver;->close(Ljava/io/Closeable;)Z

    return-object p3

    :catchall_1
    move-exception p1

    :goto_2
    invoke-direct {p0, p2}, Lcom/t4f/saver/FileSaver;->close(Ljava/io/Closeable;)Z

    .line 90
    throw p1

    :cond_4
    :goto_3
    const-string p1, "Can\'t from file while name invalid."

    .line 69
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return-object p3

    :cond_5
    :goto_4
    const-string p1, "Can\'t read from file while path invalid."

    .line 66
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return-object p3
.end method

.method private save(Ljava/io/File;Ljava/lang/String;[B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Write as file."

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 23
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_7

    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_2

    .line 30
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-nez p3, :cond_3

    .line 32
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    move v1, p1

    :cond_2
    return v1

    .line 33
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 38
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Can\'t save as file while fail create file."

    .line 40
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return v1

    .line 43
    :cond_5
    invoke-direct {p0, v2, p2, p3}, Lcom/t4f/saver/FileSaver;->save(Ljava/io/File;Ljava/lang/String;[B)Z

    move-result p1

    return p1

    :cond_6
    const/4 p2, 0x0

    .line 48
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    :try_start_1
    invoke-virtual {v1, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 50
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-direct {p0, v1}, Lcom/t4f/saver/FileSaver;->close(Ljava/io/Closeable;)Z

    return p1

    :catchall_0
    move-exception p1

    move-object p2, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object p2, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 54
    :goto_0
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    :goto_1
    invoke-direct {p0, p2}, Lcom/t4f/saver/FileSaver;->close(Ljava/io/Closeable;)Z

    .line 57
    throw p1

    :cond_7
    :goto_2
    const-string p1, "Can\'t save as file while name invalid."

    .line 27
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return v1

    :cond_8
    :goto_3
    const-string p1, "Can\'t save as file while path invalid."

    .line 24
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public read(Ljava/lang/String;[B)[B
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/t4f/saver/FileSaver;->mFolder:Ljava/io/File;

    invoke-direct {p0, v0, p1, p2}, Lcom/t4f/saver/FileSaver;->read(Ljava/io/File;Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public save(Ljava/lang/String;[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/t4f/saver/FileSaver;->mFolder:Ljava/io/File;

    invoke-direct {p0, v0, p1, p2}, Lcom/t4f/saver/FileSaver;->save(Ljava/io/File;Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method
