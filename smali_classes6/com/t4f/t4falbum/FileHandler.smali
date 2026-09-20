.class public Lcom/t4f/t4falbum/FileHandler;
.super Landroid/app/Activity;
.source "FileHandler.java"


# static fields
.field private static final PERMISSION_EXTERNAL_STORAGE_REQUEST_CODE:I = 0x271b

.field private static mCallback:Lcom/t4f/t4falbum/SaveImage2GalleryCallback;

.field private static mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkExternalStoragePermission()V
    .locals 2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/t4f/t4falbum/FileHandler;->handleImageSave()V

    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/t4f/t4falbum/FileHandler;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 45
    invoke-direct {p0}, Lcom/t4f/t4falbum/FileHandler;->handleImageSave()V

    return-void

    .line 49
    :cond_1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x271b

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private handleImageSave()V
    .locals 6

    const/4 v0, 0x0

    .line 72
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/t4f/t4falbum/FileHandler;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/png"

    .line 75
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_display_name"

    .line 76
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mime_type"

    .line 77
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/t4f/t4falbum/FileHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/t4f/t4falbum/FileHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 82
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 85
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 86
    invoke-virtual {v2, v1, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 89
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 91
    :cond_1
    sget-object v1, Lcom/t4f/t4falbum/FileHandler;->mCallback:Lcom/t4f/t4falbum/SaveImage2GalleryCallback;

    if-eqz v1, :cond_2

    const-string v2, ""

    const/4 v3, 0x1

    .line 92
    invoke-interface {v1, v3, v2}, Lcom/t4f/t4falbum/SaveImage2GalleryCallback;->onSaveImage2Gallery(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    sget-object v2, Lcom/t4f/t4falbum/FileHandler;->mCallback:Lcom/t4f/t4falbum/SaveImage2GalleryCallback;

    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/t4f/t4falbum/SaveImage2GalleryCallback;->onSaveImage2Gallery(ZLjava/lang/String;)V

    .line 100
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/t4f/t4falbum/FileHandler;->finish()V

    return-void
.end method

.method public static saveImage2Album(Ljava/lang/String;Lcom/t4f/t4falbum/SaveImage2GalleryCallback;)V
    .locals 2

    .line 104
    sput-object p0, Lcom/t4f/t4falbum/FileHandler;->mFilePath:Ljava/lang/String;

    .line 105
    sput-object p1, Lcom/t4f/t4falbum/FileHandler;->mCallback:Lcom/t4f/t4falbum/SaveImage2GalleryCallback;

    .line 106
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-class v1, Lcom/t4f/t4falbum/FileHandler;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/t4f/t4falbum/FileHandler;->checkExternalStoragePermission()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x271b

    if-eq p1, p2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/t4f/t4falbum/FileHandler;->finish()V

    return-void

    .line 61
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_2

    aget p1, p3, p2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/t4f/t4falbum/FileHandler;->handleImageSave()V

    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    sget-object p1, Lcom/t4f/t4falbum/FileHandler;->mCallback:Lcom/t4f/t4falbum/SaveImage2GalleryCallback;

    if-eqz p1, :cond_3

    const-string p3, "the user denied permission to access the album"

    .line 63
    invoke-interface {p1, p2, p3}, Lcom/t4f/t4falbum/SaveImage2GalleryCallback;->onSaveImage2Gallery(ZLjava/lang/String;)V

    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/t4f/t4falbum/FileHandler;->finish()V

    :goto_1
    return-void
.end method
