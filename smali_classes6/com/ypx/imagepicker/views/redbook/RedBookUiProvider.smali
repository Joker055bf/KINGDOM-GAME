.class public Lcom/ypx/imagepicker/views/redbook/RedBookUiProvider;
.super Lcom/ypx/imagepicker/views/PickerUiProvider;
.source "RedBookUiProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/ypx/imagepicker/views/PickerUiProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomBar(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerControllerView;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFolderItemView(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerFolderItemView;
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lcom/ypx/imagepicker/views/PickerUiProvider;->getFolderItemView(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerFolderItemView;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;

    const/high16 v0, -0x10000

    .line 31
    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->setIndicatorColor(I)V

    const/high16 v0, -0x1000000

    .line 32
    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->setBackgroundColor(I)V

    const/4 v0, -0x1

    .line 33
    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->setNameTextColor(I)V

    const-string v0, "#50F5f5f5"

    .line 34
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->setCountTextColor(I)V

    .line 35
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/views/wx/WXFolderItemView;->setDividerColor(I)V

    return-object p1
.end method

.method public getItemView(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerItemView;
    .locals 1

    .line 25
    new-instance v0, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;

    invoke-direct {v0, p1}, Lcom/ypx/imagepicker/views/redbook/RedBookItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getTitleBar(Landroid/content/Context;)Lcom/ypx/imagepicker/views/base/PickerControllerView;
    .locals 1

    .line 20
    new-instance v0, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;

    invoke-direct {v0, p1}, Lcom/ypx/imagepicker/views/redbook/RedBookTitleBar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
