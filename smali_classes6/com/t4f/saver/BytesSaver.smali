.class public Lcom/t4f/saver/BytesSaver;
.super Ljava/lang/Object;
.source "BytesSaver.java"


# static fields
.field public static activity:Landroid/app/Activity;


# instance fields
.field private final mSaver:Lcom/t4f/saver/Saver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-direct {p0}, Lcom/t4f/saver/BytesSaver;->createSaver()Lcom/t4f/saver/Saver;

    move-result-object v0

    iput-object v0, p0, Lcom/t4f/saver/BytesSaver;->mSaver:Lcom/t4f/saver/Saver;

    return-void
.end method

.method private createSaver()Lcom/t4f/saver/Saver;
    .locals 3

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SSSSSSSSSS sdkInt= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/t4f/saver/PermissionFileSaver;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/t4f/saver/BytesSaver;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/t4f/saver/PermissionFileSaver;-><init>(Ljava/io/File;Landroid/app/Activity;)V

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lcom/t4f/saver/ContentSaver;

    sget-object v1, Lcom/t4f/saver/BytesSaver;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/t4f/saver/ContentSaver;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/String;[B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 21
    invoke-virtual {p0, p1}, Lcom/t4f/saver/BytesSaver;->delete(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 23
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/t4f/saver/BytesSaver;->save(Ljava/lang/String;[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    return-object p2

    :cond_3
    :goto_1
    const-string p1, "Fail put bytes while key invalid."

    .line 18
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return-object v0
.end method

.method public read(Ljava/lang/String;[B)[B
    .locals 2

    if-eqz p1, :cond_2

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/t4f/saver/BytesSaver;->mSaver:Lcom/t4f/saver/Saver;

    if-nez v0, :cond_1

    const-string p1, "Fail read bytes while saver invalid."

    .line 52
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return-object p2

    .line 56
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/t4f/saver/Saver;->read(Ljava/lang/String;[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception read bytes.e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2

    :cond_2
    :goto_0
    const-string p1, "Fail read bytes while key invalid."

    .line 47
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return-object p2
.end method

.method public save(Ljava/lang/String;[B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/t4f/saver/BytesSaver;->mSaver:Lcom/t4f/saver/Saver;

    if-nez v1, :cond_1

    const-string p1, "Fail save bytes while saver invalid."

    .line 33
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return v0

    .line 37
    :cond_1
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/t4f/saver/Saver;->save(Ljava/lang/String;[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Exception save bytes.e="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :cond_2
    :goto_0
    const-string p1, "Fail save bytes while key invalid."

    .line 28
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return v0
.end method
