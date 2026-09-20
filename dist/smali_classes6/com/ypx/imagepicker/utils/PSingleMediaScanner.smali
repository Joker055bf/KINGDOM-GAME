.class public Lcom/ypx/imagepicker/utils/PSingleMediaScanner;
.super Ljava/lang/Object;
.source "PSingleMediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ypx/imagepicker/utils/PSingleMediaScanner$ScanListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/ypx/imagepicker/utils/PSingleMediaScanner$ScanListener;

.field private mPath:Ljava/lang/String;

.field private mediaScannerConnection:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ypx/imagepicker/utils/PSingleMediaScanner$ScanListener;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/ypx/imagepicker/utils/PSingleMediaScanner;->mPath:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/ypx/imagepicker/utils/PSingleMediaScanner;->mListener:Lcom/ypx/imagepicker/utils/PSingleMediaScanner$ScanListener;

    .line 24
    new-instance p2, Landroid/media/MediaScannerConnection;

    invoke-direct {p2, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p2, p0, Lcom/ypx/imagepicker/utils/PSingleMediaScanner;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 25
    invoke-virtual {p2}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method

.method public static refresh(Landroid/content/Context;Ljava/lang/String;Lcom/ypx/imagepicker/utils/PSingleMediaScanner$ScanListener;)V
    .locals 1

    .line 42
    new-instance v0, Lcom/ypx/imagepicker/utils/PSingleMediaScanner;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/ypx/imagepicker/utils/PSingleMediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ypx/imagepicker/utils/PSingleMediaScanner$ScanListener;)V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/ypx/imagepicker/utils/PSingleMediaScanner;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/ypx/imagepicker/utils/PSingleMediaScanner;->mPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/ypx/imagepicker/utils/PSingleMediaScanner;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 36
    iget-object p1, p0, Lcom/ypx/imagepicker/utils/PSingleMediaScanner;->mListener:Lcom/ypx/imagepicker/utils/PSingleMediaScanner$ScanListener;

    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1}, Lcom/ypx/imagepicker/utils/PSingleMediaScanner$ScanListener;->onScanFinish()V

    :cond_0
    return-void
.end method
