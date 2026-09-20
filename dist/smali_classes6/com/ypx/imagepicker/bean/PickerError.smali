.class public final enum Lcom/ypx/imagepicker/bean/PickerError;
.super Ljava/lang/Enum;
.source "PickerError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ypx/imagepicker/bean/PickerError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ypx/imagepicker/bean/PickerError;

.field public static final enum CANCEL:Lcom/ypx/imagepicker/bean/PickerError;

.field public static final enum CROP_EXCEPTION:Lcom/ypx/imagepicker/bean/PickerError;

.field public static final enum CROP_URL_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

.field public static final enum MEDIA_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

.field public static final enum MIMETYPES_EMPTY:Lcom/ypx/imagepicker/bean/PickerError;

.field public static final enum OTHER:Lcom/ypx/imagepicker/bean/PickerError;

.field public static final enum PRESENTER_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

.field public static final enum SELECT_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

.field public static final enum TAKE_PHOTO_FAILED:Lcom/ypx/imagepicker/bean/PickerError;

.field public static final enum UI_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;


# instance fields
.field private mCode:I

.field private mMessage:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/ypx/imagepicker/bean/PickerError;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/ypx/imagepicker/bean/PickerError;

    const/4 v1, 0x0

    .line 8
    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->CANCEL:Lcom/ypx/imagepicker/bean/PickerError;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->MEDIA_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->PRESENTER_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->UI_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->SELECT_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->CROP_URL_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->CROP_EXCEPTION:Lcom/ypx/imagepicker/bean/PickerError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->TAKE_PHOTO_FAILED:Lcom/ypx/imagepicker/bean/PickerError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->MIMETYPES_EMPTY:Lcom/ypx/imagepicker/bean/PickerError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ypx/imagepicker/bean/PickerError;->OTHER:Lcom/ypx/imagepicker/bean/PickerError;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/ypx/imagepicker/bean/PickerError;

    const/16 v1, -0x6903

    const-string v2, "pick cancel"

    const-string v3, "CANCEL"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ypx/imagepicker/bean/PickerError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/PickerError;->CANCEL:Lcom/ypx/imagepicker/bean/PickerError;

    .line 11
    new-instance v0, Lcom/ypx/imagepicker/bean/PickerError;

    const/16 v1, -0x6904

    const-string v2, "not found media files"

    const-string v3, "MEDIA_NOT_FOUND"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ypx/imagepicker/bean/PickerError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/PickerError;->MEDIA_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    .line 12
    new-instance v0, Lcom/ypx/imagepicker/bean/PickerError;

    const/16 v1, -0x6905

    const-string v2, "not found presenter,you must be implements IMultiPickerBindPresenter or ICropPickerBindPresenter"

    const-string v3, "PRESENTER_NOT_FOUND"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ypx/imagepicker/bean/PickerError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/PickerError;->PRESENTER_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    .line 13
    new-instance v0, Lcom/ypx/imagepicker/bean/PickerError;

    const/16 v1, -0x6906

    const-string v2, "presenter not found uiConfig,please check IMultiPickerBindPresenter or ICropPickerBindPresenter\'s getUiConfig() method realize"

    const-string v3, "UI_CONFIG_NOT_FOUND"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ypx/imagepicker/bean/PickerError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/PickerError;->UI_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    .line 14
    new-instance v0, Lcom/ypx/imagepicker/bean/PickerError;

    const/16 v1, -0x6907

    const-string v2, "not found selectConfig or cropConfig"

    const-string v3, "SELECT_CONFIG_NOT_FOUND"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ypx/imagepicker/bean/PickerError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/PickerError;->SELECT_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    .line 15
    new-instance v0, Lcom/ypx/imagepicker/bean/PickerError;

    const/16 v1, -0x6908

    const-string v2, "not found imagePath to crop"

    const-string v3, "CROP_URL_NOT_FOUND"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ypx/imagepicker/bean/PickerError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/PickerError;->CROP_URL_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    .line 16
    new-instance v0, Lcom/ypx/imagepicker/bean/PickerError;

    const/16 v1, -0x6909

    const-string v2, "crop exception"

    const-string v3, "CROP_EXCEPTION"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ypx/imagepicker/bean/PickerError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/PickerError;->CROP_EXCEPTION:Lcom/ypx/imagepicker/bean/PickerError;

    .line 17
    new-instance v0, Lcom/ypx/imagepicker/bean/PickerError;

    const v1, -0x41a5a

    const-string v2, "takePhoto failed"

    const-string v3, "TAKE_PHOTO_FAILED"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ypx/imagepicker/bean/PickerError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/PickerError;->TAKE_PHOTO_FAILED:Lcom/ypx/imagepicker/bean/PickerError;

    .line 18
    new-instance v0, Lcom/ypx/imagepicker/bean/PickerError;

    const v1, -0x41a5c

    const-string v2, "mimeTypes size is 0"

    const-string v3, "MIMETYPES_EMPTY"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ypx/imagepicker/bean/PickerError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/PickerError;->MIMETYPES_EMPTY:Lcom/ypx/imagepicker/bean/PickerError;

    .line 19
    new-instance v0, Lcom/ypx/imagepicker/bean/PickerError;

    const/16 v1, -0x690b

    const-string v2, "other error"

    const-string v3, "OTHER"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ypx/imagepicker/bean/PickerError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/PickerError;->OTHER:Lcom/ypx/imagepicker/bean/PickerError;

    .line 8
    invoke-static {}, Lcom/ypx/imagepicker/bean/PickerError;->$values()[Lcom/ypx/imagepicker/bean/PickerError;

    move-result-object v0

    sput-object v0, Lcom/ypx/imagepicker/bean/PickerError;->$VALUES:[Lcom/ypx/imagepicker/bean/PickerError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/ypx/imagepicker/bean/PickerError;->mCode:I

    .line 27
    iput-object p4, p0, Lcom/ypx/imagepicker/bean/PickerError;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(I)Lcom/ypx/imagepicker/bean/PickerError;
    .locals 2

    .line 35
    sget-object v0, Lcom/ypx/imagepicker/bean/PickerError;->CANCEL:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v1

    if-ne p0, v1, :cond_0

    return-object v0

    .line 37
    :cond_0
    sget-object v0, Lcom/ypx/imagepicker/bean/PickerError;->PRESENTER_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v1

    if-ne p0, v1, :cond_1

    return-object v0

    .line 39
    :cond_1
    sget-object v0, Lcom/ypx/imagepicker/bean/PickerError;->UI_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v1

    if-ne p0, v1, :cond_2

    return-object v0

    .line 41
    :cond_2
    sget-object v0, Lcom/ypx/imagepicker/bean/PickerError;->SELECT_CONFIG_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v1

    if-ne p0, v1, :cond_3

    return-object v0

    .line 43
    :cond_3
    sget-object v0, Lcom/ypx/imagepicker/bean/PickerError;->MEDIA_NOT_FOUND:Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/PickerError;->getCode()I

    move-result v1

    if-ne p0, v1, :cond_4

    return-object v0

    .line 46
    :cond_4
    sget-object p0, Lcom/ypx/imagepicker/bean/PickerError;->OTHER:Lcom/ypx/imagepicker/bean/PickerError;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ypx/imagepicker/bean/PickerError;
    .locals 1

    .line 8
    const-class v0, Lcom/ypx/imagepicker/bean/PickerError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ypx/imagepicker/bean/PickerError;

    return-object p0
.end method

.method public static values()[Lcom/ypx/imagepicker/bean/PickerError;
    .locals 1

    .line 8
    sget-object v0, Lcom/ypx/imagepicker/bean/PickerError;->$VALUES:[Lcom/ypx/imagepicker/bean/PickerError;

    invoke-virtual {v0}, [Lcom/ypx/imagepicker/bean/PickerError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ypx/imagepicker/bean/PickerError;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/ypx/imagepicker/bean/PickerError;->mCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/PickerError;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/PickerError;->mMessage:Ljava/lang/String;

    return-void
.end method
