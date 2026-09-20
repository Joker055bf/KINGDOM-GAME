.class public Lcom/ypx/imagepicker/views/PickerUiProvider;
.super Ljava/lang/Object;
.source "PickerUiProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomBar(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerControllerView;
    .locals 1

    .line 44
    new-instance v0, Lcom/ypx/imagepicker/views/wx/WXBottomBar;

    invoke-direct {v0, p1}, Lcom/ypx/imagepicker/views/wx/WXBottomBar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getFolderItemView(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerFolderItemView;
    .locals 1

    .line 66
    new-instance v0, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;

    invoke-direct {v0, p1}, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getItemView(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerItemView;
    .locals 1

    .line 55
    new-instance v0, Lcom/ypx/imagepicker/views/wx/WXItemView;

    invoke-direct {v0, p1}, Lcom/ypx/imagepicker/views/wx/WXItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getPreviewControllerView(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PreviewControllerView;
    .locals 1

    .line 77
    new-instance v0, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;

    invoke-direct {v0, p1}, Lcom/ypx/imagepicker/views/wx/WXPreviewControllerView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSingleCropControllerView(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/SingleCropControllerView;
    .locals 1

    .line 88
    new-instance v0, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;

    invoke-direct {v0, p1}, Lcom/ypx/imagepicker/views/wx/WXSingleCropControllerView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getTitleBar(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerControllerView;
    .locals 1

    .line 33
    new-instance v0, Lcom/ypx/imagepicker/views/wx/WXTitleBar;

    invoke-direct {v0, p1}, Lcom/ypx/imagepicker/views/wx/WXTitleBar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
