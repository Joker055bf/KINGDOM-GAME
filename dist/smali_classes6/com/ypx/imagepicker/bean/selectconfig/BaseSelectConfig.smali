.class public Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;
.super Ljava/lang/Object;
.source "BaseSelectConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private columnCount:I

.field private isLandscape:Z

.field private isLoadGif:Z

.field private isReverseLandscape:Z

.field private isShowCamera:Z

.field private isShowCameraInAllMedia:Z

.field private isShowImage:Z

.field private isShowVideo:Z

.field private isSinglePickAutoComplete:Z

.field private isSinglePickImageOrVideoType:Z

.field private isVideoSinglePick:Z

.field private languageInGame:Ljava/lang/String;

.field private maxCount:I

.field private maxVideoDuration:J

.field private mimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;"
        }
    .end annotation
.end field

.field private minCount:I

.field private minVideoDuration:J

.field private shieldImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->minVideoDuration:J

    const-wide/32 v0, 0x47868c00

    .line 23
    iput-wide v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->maxVideoDuration:J

    const/4 v0, 0x4

    .line 24
    iput v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->columnCount:I

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isVideoSinglePick:Z

    .line 28
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowVideo:Z

    .line 29
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowImage:Z

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isLoadGif:Z

    .line 32
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isLandscape:Z

    .line 33
    iput-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isReverseLandscape:Z

    .line 35
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isSinglePickAutoComplete:Z

    .line 40
    iput-boolean v1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isSinglePickImageOrVideoType:Z

    .line 41
    invoke-static {}, Lcom/ypx/imagepicker/bean/MimeType;->ofAll()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->mimeTypes:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->shieldImageList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->columnCount:I

    return v0
.end method

.method public getLanguageInGame()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->languageInGame:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxCount()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->maxCount:I

    return v0
.end method

.method public getMaxVideoDuration()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->maxVideoDuration:J

    return-wide v0
.end method

.method public getMaxVideoDurationFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->maxVideoDuration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ypx/imagepicker/utils/PDateUtil;->formatTime(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMimeTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->mimeTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getMinCount()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->minCount:I

    return v0
.end method

.method public getMinVideoDuration()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->minVideoDuration:J

    return-wide v0
.end method

.method public getMinVideoDurationFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->minVideoDuration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ypx/imagepicker/utils/PDateUtil;->formatTime(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShieldImageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->shieldImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isLandscape()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isLandscape:Z

    return v0
.end method

.method public isLoadGif()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isLoadGif:Z

    return v0
.end method

.method public isOnlyShowImage()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowImage:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowVideo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnlyShowVideo()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowVideo:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowImage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReverseLandscape()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isReverseLandscape:Z

    return v0
.end method

.method public isShieldItem(Lcom/ypx/imagepicker/bean/ImageItem;)Z
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->shieldImageList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->shieldImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 216
    invoke-virtual {v2, p1}, Lcom/ypx/imagepicker/bean/ImageItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public isShowCamera()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowCamera:Z

    return v0
.end method

.method public isShowCameraInAllMedia()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowCameraInAllMedia:Z

    return v0
.end method

.method public isShowImage()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowImage:Z

    return v0
.end method

.method public isShowVideo()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowVideo:Z

    return v0
.end method

.method public isSinglePickAutoComplete()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isSinglePickAutoComplete:Z

    return v0
.end method

.method public isSinglePickImageOrVideoType()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isSinglePickImageOrVideoType:Z

    return v0
.end method

.method public isVideoSinglePick()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isVideoSinglePick:Z

    return v0
.end method

.method public isVideoSinglePickAndAutoComplete()Z
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isVideoSinglePick()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isSinglePickAutoComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setColumnCount(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->columnCount:I

    return-void
.end method

.method public setLandscape(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isLandscape:Z

    return-void
.end method

.method public setLanguageInGame(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->languageInGame:Ljava/lang/String;

    return-void
.end method

.method public setLoadGif(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isLoadGif:Z

    return-void
.end method

.method public setMaxCount(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->maxCount:I

    return-void
.end method

.method public setMaxVideoDuration(J)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->maxVideoDuration:J

    return-void
.end method

.method public setMimeTypes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;)V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->mimeTypes:Ljava/util/Set;

    return-void
.end method

.method public setMinCount(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->minCount:I

    return-void
.end method

.method public setMinVideoDuration(J)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->minVideoDuration:J

    return-void
.end method

.method public setReverseLandscape(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isReverseLandscape:Z

    return-void
.end method

.method public setShieldImageList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->shieldImageList:Ljava/util/ArrayList;

    return-void
.end method

.method public setShowCamera(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowCamera:Z

    return-void
.end method

.method public setShowCameraInAllMedia(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowCameraInAllMedia:Z

    return-void
.end method

.method public setShowImage(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowImage:Z

    return-void
.end method

.method public setShowVideo(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShowVideo:Z

    return-void
.end method

.method public setSinglePickAutoComplete(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isSinglePickAutoComplete:Z

    return-void
.end method

.method public setSinglePickImageOrVideoType(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isSinglePickImageOrVideoType:Z

    return-void
.end method

.method public setVideoSinglePick(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isVideoSinglePick:Z

    return-void
.end method
