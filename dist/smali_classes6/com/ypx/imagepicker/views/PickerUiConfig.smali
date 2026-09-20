.class public Lcom/ypx/imagepicker/views/PickerUiConfig;
.super Ljava/lang/Object;
.source "PickerUiConfig.java"


# static fields
.field public static final DIRECTION_BOTTOM:I = 0x2

.field public static final DIRECTION_TOP:I = 0x1


# instance fields
.field private FillIconID:I

.field private cropViewBackgroundColor:I

.field private fitIconID:I

.field private folderListOpenDirection:I

.field private folderListOpenMaxMargin:I

.field private fullIconID:I

.field private gapIconID:I

.field private isShowStatusBar:Z

.field private pickerBackgroundColor:I

.field private pickerUiProvider:Lcom/ypx/imagepicker/views/PickerUiProvider;

.field private previewBackgroundColor:I

.field private singleCropBackgroundColor:I

.field private statusBarColor:I

.field private themeColor:I

.field private videoPauseIconID:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    .line 26
    iput v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->pickerBackgroundColor:I

    .line 27
    iput v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->previewBackgroundColor:I

    .line 28
    iput v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->singleCropBackgroundColor:I

    const/4 v1, 0x1

    .line 29
    iput v1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->folderListOpenDirection:I

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->folderListOpenMaxMargin:I

    .line 36
    iput v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->cropViewBackgroundColor:I

    return-void
.end method


# virtual methods
.method public getCropViewBackgroundColor()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->cropViewBackgroundColor:I

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    :cond_0
    return v0
.end method

.method public getFillIconID()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->FillIconID:I

    if-nez v0, :cond_0

    .line 170
    sget v0, Lcom/ypx/imagepicker/R$mipmap;->picker_icon_fill:I

    iput v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->FillIconID:I

    .line 172
    :cond_0
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->FillIconID:I

    return v0
.end method

.method public getFitIconID()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->fitIconID:I

    if-nez v0, :cond_0

    .line 148
    sget v0, Lcom/ypx/imagepicker/R$mipmap;->picker_icon_fit:I

    iput v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->fitIconID:I

    .line 150
    :cond_0
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->fitIconID:I

    return v0
.end method

.method public getFolderListOpenDirection()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->folderListOpenDirection:I

    return v0
.end method

.method public getFolderListOpenMaxMargin()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->folderListOpenMaxMargin:I

    return v0
.end method

.method public getFullIconID()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->fullIconID:I

    if-nez v0, :cond_0

    .line 137
    sget v0, Lcom/ypx/imagepicker/R$mipmap;->picker_icon_full:I

    iput v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->fullIconID:I

    .line 139
    :cond_0
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->fullIconID:I

    return v0
.end method

.method public getGapIconID()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->gapIconID:I

    if-nez v0, :cond_0

    .line 159
    sget v0, Lcom/ypx/imagepicker/R$mipmap;->picker_icon_haswhite:I

    iput v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->gapIconID:I

    .line 161
    :cond_0
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->gapIconID:I

    return v0
.end method

.method public getPickerBackgroundColor()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->pickerBackgroundColor:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getPickerUiProvider()Lcom/ypx/imagepicker/views/PickerUiProvider;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->pickerUiProvider:Lcom/ypx/imagepicker/views/PickerUiProvider;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/ypx/imagepicker/views/PickerUiProvider;

    invoke-direct {v0}, Lcom/ypx/imagepicker/views/PickerUiProvider;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getPreviewBackgroundColor()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->previewBackgroundColor:I

    return v0
.end method

.method public getSingleCropBackgroundColor()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->singleCropBackgroundColor:I

    return v0
.end method

.method public getStatusBarColor()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->statusBarColor:I

    return v0
.end method

.method public getThemeColor()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->themeColor:I

    return v0
.end method

.method public getVideoPauseIconID()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->videoPauseIconID:I

    if-nez v0, :cond_0

    .line 181
    sget v0, Lcom/ypx/imagepicker/R$mipmap;->picker_icon_video:I

    iput v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->videoPauseIconID:I

    .line 183
    :cond_0
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->videoPauseIconID:I

    return v0
.end method

.method public isShowFromBottom()Z
    .locals 2

    .line 97
    iget v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->folderListOpenDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowStatusBar()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->isShowStatusBar:Z

    return v0
.end method

.method public setCropViewBackgroundColor(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->cropViewBackgroundColor:I

    return-void
.end method

.method public setFillIconID(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->FillIconID:I

    return-void
.end method

.method public setFitIconID(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->fitIconID:I

    return-void
.end method

.method public setFolderListOpenDirection(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->folderListOpenDirection:I

    return-void
.end method

.method public setFolderListOpenMaxMargin(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->folderListOpenMaxMargin:I

    return-void
.end method

.method public setFullIconID(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->fullIconID:I

    return-void
.end method

.method public setGapIconID(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->gapIconID:I

    return-void
.end method

.method public setPickerBackgroundColor(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->pickerBackgroundColor:I

    return-void
.end method

.method public setPickerUiProvider(Lcom/ypx/imagepicker/views/PickerUiProvider;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->pickerUiProvider:Lcom/ypx/imagepicker/views/PickerUiProvider;

    return-void
.end method

.method public setPreviewBackgroundColor(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->previewBackgroundColor:I

    return-void
.end method

.method public setShowStatusBar(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->isShowStatusBar:Z

    return-void
.end method

.method public setSingleCropBackgroundColor(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->singleCropBackgroundColor:I

    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->statusBarColor:I

    return-void
.end method

.method public setThemeColor(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->themeColor:I

    .line 196
    invoke-static {p1}, Lcom/ypx/imagepicker/ImagePicker;->setThemeColor(I)V

    return-void
.end method

.method public setVideoPauseIconID(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/ypx/imagepicker/views/PickerUiConfig;->videoPauseIconID:I

    return-void
.end method
