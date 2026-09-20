.class public Lcom/ypx/imagepicker/bean/PickerItemDisableCode;
.super Ljava/lang/Object;
.source "PickerItemDisableCode.java"


# static fields
.field public static final DISABLE_IN_SHIELD:I = 0x1

.field public static final DISABLE_ONLY_SELECT_IMAGE:I = 0x3

.field public static final DISABLE_ONLY_SELECT_VIDEO:I = 0x4

.field public static final DISABLE_OVER_MAX_COUNT:I = 0x2

.field public static final DISABLE_VIDEO_LESS_MIN_DURATION:I = 0x6

.field public static final DISABLE_VIDEO_ONLY_SINGLE_PICK:I = 0x7

.field public static final DISABLE_VIDEO_OVER_MAX_DURATION:I = 0x5

.field public static final NORMAL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getItemDisableCode(Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;Ljava/util/ArrayList;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            "Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;Z)I"
        }
    .end annotation

    .line 65
    invoke-virtual {p1, p0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isShieldItem(Lcom/ypx/imagepicker/bean/ImageItem;)Z

    move-result v0

    const/4 v1, 0x0

    xor-int/lit8 v2, v0, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isSinglePickImageOrVideoType()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    invoke-static {p2}, Lcom/ypx/imagepicker/bean/PickerItemDisableCode;->selectedFirstItemIsImage(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 80
    iget-wide v3, p0, Lcom/ypx/imagepicker/bean/ImageItem;->duration:J

    .line 81
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMaxVideoDuration()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 84
    iget-wide v3, p0, Lcom/ypx/imagepicker/bean/ImageItem;->duration:J

    .line 85
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMinVideoDuration()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-gez p0, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    .line 91
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isVideoSinglePick()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 92
    invoke-static {p2}, Lcom/ypx/imagepicker/bean/PickerItemDisableCode;->isSelectedListContainsVideo(Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-nez p3, :cond_4

    const/4 v0, 0x7

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->isSinglePickImageOrVideoType()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 102
    invoke-static {p2}, Lcom/ypx/imagepicker/bean/PickerItemDisableCode;->selectedFirstItemIsVideo(Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    if-eqz v1, :cond_5

    .line 109
    invoke-static {p2}, Lcom/ypx/imagepicker/bean/PickerItemDisableCode;->hasSelectedList(Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMaxCount()I

    move-result p1

    if-lt p0, p1, :cond_5

    if-nez p3, :cond_5

    const/4 v0, 0x2

    :cond_5
    return v0
.end method

.method public static getMessageFormCode(Landroid/content/Context;ILcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    goto/16 :goto_0

    .line 51
    :pswitch_0
    sget p1, Lcom/ypx/imagepicker/R$string;->picker_str_tip_only_select_one_video:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 47
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/ypx/imagepicker/R$string;->picker_str_tip_video_less_min_duration:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 48
    invoke-virtual {p3, p0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMinVideoDurationFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 43
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/ypx/imagepicker/R$string;->picker_str_str_video_over_max_duration:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 44
    invoke-virtual {p3, p0}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMaxVideoDurationFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 40
    :pswitch_3
    sget p1, Lcom/ypx/imagepicker/R$string;->picker_str_tip_only_select_video:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 37
    :pswitch_4
    sget p1, Lcom/ypx/imagepicker/R$string;->picker_str_tip_only_select_image:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 33
    :pswitch_5
    invoke-virtual {p3}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMaxCount()I

    move-result p1

    invoke-interface {p2, p0, p1}, Lcom/ypx/imagepicker/presenter/IPickerPresenter;->overMaxCountTip(Landroid/content/Context;I)V

    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Select a maximum of "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/ypx/imagepicker/bean/selectconfig/BaseSelectConfig;->getMaxCount()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " photos"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 30
    :pswitch_6
    sget p1, Lcom/ypx/imagepicker/R$string;->picker_str_tip_shield:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static hasSelectedList(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSelectedListContainsVideo(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)Z"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 132
    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static selectedFirstItemIsImage(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)Z"
        }
    .end annotation

    .line 122
    invoke-static {p0}, Lcom/ypx/imagepicker/bean/PickerItemDisableCode;->hasSelectedList(Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static selectedFirstItemIsVideo(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)Z"
        }
    .end annotation

    .line 118
    invoke-static {p0}, Lcom/ypx/imagepicker/bean/PickerItemDisableCode;->hasSelectedList(Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {p0}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
