.class Lcom/ypx/imagepicker/helper/CameraCompat$2;
.super Ljava/lang/Object;
.source "CameraCompat.java"

# interfaces
.implements Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/helper/CameraCompat;->takeVideo(Landroid/app/Activity;Ljava/lang/String;JZLcom/ypx/imagepicker/data/OnImagePickCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$isCopyInDCIM:Z

.field final synthetic val$listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$videoName:Ljava/lang/String;

.field final synthetic val$videoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;ZLandroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    iput-boolean p3, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$isCopyInDCIM:Z

    iput-object p4, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$videoName:Ljava/lang/String;

    iput-object p6, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$videoUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 2

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 104
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$path:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    iget-boolean p1, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$isCopyInDCIM:Z

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$path:Ljava/lang/String;

    iget-object v0, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$videoName:Ljava/lang/String;

    sget-object v1, Lcom/ypx/imagepicker/bean/MimeType;->MP4:Lcom/ypx/imagepicker/bean/MimeType;

    invoke-static {p1, p2, v0, v1}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->copyFileToDCIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ypx/imagepicker/bean/MimeType;)Lcom/ypx/imagepicker/bean/UriPathInfo;

    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$activity:Landroid/app/Activity;

    iget-object v0, p1, Lcom/ypx/imagepicker/bean/UriPathInfo;->absolutePath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/ypx/imagepicker/utils/PSingleMediaScanner;->refresh(Landroid/content/Context;Ljava/lang/String;Lcom/ypx/imagepicker/utils/PSingleMediaScanner$ScanListener;)V

    goto :goto_0

    .line 113
    :cond_1
    new-instance p1, Lcom/ypx/imagepicker/bean/UriPathInfo;

    iget-object p2, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$videoUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$path:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/ypx/imagepicker/bean/UriPathInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 116
    :goto_0
    new-instance p2, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {p2}, Lcom/ypx/imagepicker/bean/ImageItem;-><init>()V

    .line 117
    iget-object v0, p1, Lcom/ypx/imagepicker/bean/UriPathInfo;->absolutePath:Ljava/lang/String;

    iput-object v0, p2, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    .line 118
    iget-object p1, p1, Lcom/ypx/imagepicker/bean/UriPathInfo;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ypx/imagepicker/bean/ImageItem;->setUriPath(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/ypx/imagepicker/bean/ImageItem;->time:J

    .line 120
    sget-object p1, Lcom/ypx/imagepicker/bean/MimeType;->MP4:Lcom/ypx/imagepicker/bean/MimeType;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/MimeType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 121
    invoke-virtual {p2, p1}, Lcom/ypx/imagepicker/bean/ImageItem;->setVideo(Z)V

    .line 122
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$path:Ljava/lang/String;

    invoke-static {p1}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getLocalVideoDuration(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/ypx/imagepicker/bean/ImageItem;->duration:J

    .line 123
    iget-wide v0, p2, Lcom/ypx/imagepicker/bean/ImageItem;->duration:J

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/utils/PDateUtil;->getVideoDuration(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ypx/imagepicker/bean/ImageItem;->setDurationFormat(Ljava/lang/String;)V

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    invoke-interface {p2, p1}, Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;->onImagePickComplete(Ljava/util/ArrayList;)V

    return-void

    .line 105
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/CameraCompat$2;->val$listener:Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;

    sget-object p2, Lcom/ypx/imagepicker/bean/PickerError;->TAKE_PHOTO_FAILED:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {p2}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/ypx/imagepicker/helper/PickerErrorExecutor;->executeError(Lcom/ypx/imagepicker/data/OnImagePickCompleteListener;I)V

    return-void
.end method
