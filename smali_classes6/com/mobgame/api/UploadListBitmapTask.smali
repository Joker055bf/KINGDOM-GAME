.class public Lcom/mobgame/api/UploadListBitmapTask;
.super Landroid/os/AsyncTask;
.source "UploadListBitmapTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/api/UploadListBitmapTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private callback:Lcom/mobgame/api/UploadListBitmapTask$Callback;

.field private listBitmap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "UploadBitmapTask"

    .line 24
    iput-object v0, p0, Lcom/mobgame/api/UploadListBitmapTask;->TAG:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/mobgame/api/UploadListBitmapTask;->url:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/mobgame/api/UploadListBitmapTask;->listBitmap:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/mobgame/api/UploadListBitmapTask;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mobgame/api/UploadListBitmapTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "*****"

    const-string v2, "\r\n"

    const-string v3, "--"

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IMG_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".JPG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 51
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, v1, Lcom/mobgame/api/UploadListBitmapTask;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x0

    const-string v8, ""

    move-object v11, v5

    move-object v12, v11

    move v9, v7

    move-object v10, v8

    .line 53
    :goto_0
    :try_start_1
    iget-object v13, v1, Lcom/mobgame/api/UploadListBitmapTask;->listBitmap:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_1

    .line 55
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v11, 0x1

    .line 56
    :try_start_2
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 57
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 58
    invoke-virtual {v10, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v11, "POST"

    .line 59
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v11, "Connection"

    const-string v13, "Keep-Alive"

    .line 60
    invoke-virtual {v10, v11, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Content-Type"

    .line 61
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "multipart/form-data;boundary="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "mobgame-token"

    .line 62
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v13

    invoke-virtual {v13}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "mobgame-appkey"

    .line 63
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v13

    invoke-virtual {v13}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    iget-object v13, v1, Lcom/mobgame/api/UploadListBitmapTask;->listBitmap:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v13, v14, v15, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 68
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 70
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 71
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V

    .line 72
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content-Disposition: form-data; filename=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 73
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 72
    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V

    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V

    .line 75
    invoke-virtual {v12, v11}, Ljava/io/OutputStream;->write([B)V

    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/io/OutputStream;->write([B)V

    .line 77
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/io/OutputStream;->write([B)V

    .line 79
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const/16 v13, 0x400

    new-array v13, v13, [B

    move-object v14, v8

    .line 82
    :goto_1
    invoke-virtual {v11, v13}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-ltz v15, :cond_0

    .line 83
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v15, v13, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    const-string v7, "\u0000.*"

    .line 85
    invoke-virtual {v14, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v9, v9, 0x1

    move-object v11, v10

    move-object v10, v7

    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v11, v10

    goto/16 :goto_3

    .line 88
    :cond_1
    :try_start_3
    iget-object v0, v1, Lcom/mobgame/api/UploadListBitmapTask;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz v10, :cond_2

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v2, "UploadBitmap"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    .line 90
    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v2, v1, Lcom/mobgame/api/UploadListBitmapTask;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 93
    :cond_2
    iget-object v0, v1, Lcom/mobgame/api/UploadListBitmapTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, v1, Lcom/mobgame/api/UploadListBitmapTask;->callback:Lcom/mobgame/api/UploadListBitmapTask$Callback;

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-interface {v0, v2, v10}, Lcom/mobgame/api/UploadListBitmapTask$Callback;->onSuccess(ILjava/lang/String;)V

    .line 97
    iget-object v0, v1, Lcom/mobgame/api/UploadListBitmapTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground: getResponseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, v1, Lcom/mobgame/api/UploadListBitmapTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground: getResponseMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    if-eqz v12, :cond_4

    .line 109
    :try_start_4
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 110
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    iget-object v2, v1, Lcom/mobgame/api/UploadListBitmapTask;->callback:Lcom/mobgame/api/UploadListBitmapTask$Callback;

    if-eqz v2, :cond_4

    .line 115
    invoke-interface {v2, v0}, Lcom/mobgame/api/UploadListBitmapTask$Callback;->onFailure(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    if-eqz v11, :cond_7

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v10, v5

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v11, v5

    move-object v12, v11

    .line 102
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    iget-object v2, v1, Lcom/mobgame/api/UploadListBitmapTask;->callback:Lcom/mobgame/api/UploadListBitmapTask$Callback;

    if-eqz v2, :cond_5

    .line 104
    invoke-interface {v2, v0}, Lcom/mobgame/api/UploadListBitmapTask$Callback;->onFailure(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    if-eqz v12, :cond_6

    .line 109
    :try_start_6
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 110
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    iget-object v2, v1, Lcom/mobgame/api/UploadListBitmapTask;->callback:Lcom/mobgame/api/UploadListBitmapTask$Callback;

    if-eqz v2, :cond_6

    .line 115
    invoke-interface {v2, v0}, Lcom/mobgame/api/UploadListBitmapTask$Callback;->onFailure(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    if-eqz v11, :cond_7

    .line 119
    :goto_5
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object v5

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v10, v11

    :goto_6
    move-object v5, v12

    :goto_7
    if-eqz v5, :cond_8

    .line 109
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 110
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    iget-object v3, v1, Lcom/mobgame/api/UploadListBitmapTask;->callback:Lcom/mobgame/api/UploadListBitmapTask$Callback;

    if-eqz v3, :cond_8

    .line 115
    invoke-interface {v3, v0}, Lcom/mobgame/api/UploadListBitmapTask$Callback;->onFailure(Ljava/lang/Throwable;)V

    :cond_8
    :goto_8
    if-eqz v10, :cond_9

    .line 119
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 121
    :cond_9
    throw v2
.end method

.method public setCallback(Lcom/mobgame/api/UploadListBitmapTask$Callback;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mobgame/api/UploadListBitmapTask;->callback:Lcom/mobgame/api/UploadListBitmapTask$Callback;

    return-void
.end method
