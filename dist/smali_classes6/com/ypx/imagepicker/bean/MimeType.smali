.class public final enum Lcom/ypx/imagepicker/bean/MimeType;
.super Ljava/lang/Enum;
.source "MimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ypx/imagepicker/bean/MimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum AVI:Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum BMP:Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum GIF:Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum JPEG:Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum MKV:Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum MP4:Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum MPEG:Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum PNG:Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum QUICKTIME:Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum THREEGPP:Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum THREEGPP2:Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum TS:Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum WEBM:Lcom/ypx/imagepicker/bean/MimeType;

.field public static final enum WEBP:Lcom/ypx/imagepicker/bean/MimeType;


# instance fields
.field private final mExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMimeTypeName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/ypx/imagepicker/bean/MimeType;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/ypx/imagepicker/bean/MimeType;

    const/4 v1, 0x0

    .line 19
    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->JPEG:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->PNG:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->GIF:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->BMP:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->WEBP:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->MPEG:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->MP4:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->QUICKTIME:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->THREEGPP:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->THREEGPP2:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->MKV:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->WEBM:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->TS:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->AVI:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "jpg"

    const-string v2, "jpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "JPEG"

    const/4 v3, 0x0

    const-string v4, "image/jpeg"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->JPEG:Lcom/ypx/imagepicker/bean/MimeType;

    .line 26
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "png"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "PNG"

    const/4 v3, 0x1

    const-string v4, "image/png"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->PNG:Lcom/ypx/imagepicker/bean/MimeType;

    .line 29
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "gif"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "GIF"

    const/4 v3, 0x2

    const-string v4, "image/gif"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->GIF:Lcom/ypx/imagepicker/bean/MimeType;

    .line 32
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "bmp"

    const-string v2, "x-ms-bmp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "BMP"

    const/4 v3, 0x3

    const-string v4, "image/x-ms-bmp"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->BMP:Lcom/ypx/imagepicker/bean/MimeType;

    .line 35
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "webp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "WEBP"

    const/4 v3, 0x4

    const-string v4, "image/webp"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->WEBP:Lcom/ypx/imagepicker/bean/MimeType;

    .line 40
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "mpeg"

    const-string v2, "mpg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "MPEG"

    const/4 v3, 0x5

    const-string v4, "video/mpeg"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->MPEG:Lcom/ypx/imagepicker/bean/MimeType;

    .line 44
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "mp4"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "MP4"

    const/4 v3, 0x6

    const-string v4, "video/mp4"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->MP4:Lcom/ypx/imagepicker/bean/MimeType;

    .line 47
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "mov"

    const-string v2, "quicktime"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "QUICKTIME"

    const/4 v3, 0x7

    const-string v4, "video/quicktime"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->QUICKTIME:Lcom/ypx/imagepicker/bean/MimeType;

    .line 50
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "3gp"

    const-string v2, "3gpp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "THREEGPP"

    const/16 v3, 0x8

    const-string v4, "video/3gpp"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->THREEGPP:Lcom/ypx/imagepicker/bean/MimeType;

    .line 54
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "3g2"

    const-string v2, "3gpp2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "THREEGPP2"

    const/16 v3, 0x9

    const-string v4, "video/3gpp2"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->THREEGPP2:Lcom/ypx/imagepicker/bean/MimeType;

    .line 58
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "mkv"

    const-string v2, "x-matroska"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "MKV"

    const/16 v3, 0xa

    const-string v4, "video/x-matroska"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->MKV:Lcom/ypx/imagepicker/bean/MimeType;

    .line 61
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "webm"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "WEBM"

    const/16 v3, 0xb

    const-string v4, "video/webm"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->WEBM:Lcom/ypx/imagepicker/bean/MimeType;

    .line 64
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "ts"

    const-string v2, "mp2ts"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "TS"

    const/16 v3, 0xc

    const-string v4, "video/mp2ts"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->TS:Lcom/ypx/imagepicker/bean/MimeType;

    .line 67
    new-instance v0, Lcom/ypx/imagepicker/bean/MimeType;

    const-string v1, "avi"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ypx/imagepicker/bean/MimeType;->arraySetOf([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "AVI"

    const/16 v3, 0xd

    const-string v4, "video/avi"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ypx/imagepicker/bean/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->AVI:Lcom/ypx/imagepicker/bean/MimeType;

    .line 19
    invoke-static {}, Lcom/ypx/imagepicker/bean/MimeType;->$values()[Lcom/ypx/imagepicker/bean/MimeType;

    move-result-object v0

    sput-object v0, Lcom/ypx/imagepicker/bean/MimeType;->$VALUES:[Lcom/ypx/imagepicker/bean/MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/ypx/imagepicker/bean/MimeType;->mMimeTypeName:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/ypx/imagepicker/bean/MimeType;->mExtensions:Ljava/util/Set;

    return-void
.end method

.method private static varargs arraySetOf([Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getMimeTypeList(Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 129
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 131
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ypx/imagepicker/bean/MimeType;

    .line 133
    iget-object v2, v1, Lcom/ypx/imagepicker/bean/MimeType;->mExtensions:Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 134
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 135
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ypx/imagepicker/bean/MimeType;->isImage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "image/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ypx/imagepicker/bean/MimeType;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "video/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static isGif(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 115
    :cond_0
    sget-object v0, Lcom/ypx/imagepicker/bean/MimeType;->GIF:Lcom/ypx/imagepicker/bean/MimeType;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isImage(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "image"

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "video"

    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs of(Lcom/ypx/imagepicker/bean/MimeType;[Lcom/ypx/imagepicker/bean/MimeType;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            "[",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {p0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static ofAll()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;"
        }
    .end annotation

    .line 88
    const-class v0, Lcom/ypx/imagepicker/bean/MimeType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static ofImage()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/ypx/imagepicker/bean/MimeType;->JPEG:Lcom/ypx/imagepicker/bean/MimeType;

    sget-object v1, Lcom/ypx/imagepicker/bean/MimeType;->PNG:Lcom/ypx/imagepicker/bean/MimeType;

    sget-object v2, Lcom/ypx/imagepicker/bean/MimeType;->GIF:Lcom/ypx/imagepicker/bean/MimeType;

    sget-object v3, Lcom/ypx/imagepicker/bean/MimeType;->BMP:Lcom/ypx/imagepicker/bean/MimeType;

    sget-object v4, Lcom/ypx/imagepicker/bean/MimeType;->WEBP:Lcom/ypx/imagepicker/bean/MimeType;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static ofVideo()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/ypx/imagepicker/bean/MimeType;->MPEG:Lcom/ypx/imagepicker/bean/MimeType;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/ypx/imagepicker/bean/MimeType;

    const/4 v2, 0x0

    sget-object v3, Lcom/ypx/imagepicker/bean/MimeType;->MP4:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/ypx/imagepicker/bean/MimeType;->QUICKTIME:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/ypx/imagepicker/bean/MimeType;->THREEGPP:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/ypx/imagepicker/bean/MimeType;->THREEGPP2:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/ypx/imagepicker/bean/MimeType;->MKV:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/ypx/imagepicker/bean/MimeType;->WEBM:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/ypx/imagepicker/bean/MimeType;->TS:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/ypx/imagepicker/bean/MimeType;->AVI:Lcom/ypx/imagepicker/bean/MimeType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ypx/imagepicker/bean/MimeType;
    .locals 1

    .line 19
    const-class v0, Lcom/ypx/imagepicker/bean/MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ypx/imagepicker/bean/MimeType;

    return-object p0
.end method

.method public static values()[Lcom/ypx/imagepicker/bean/MimeType;
    .locals 1

    .line 19
    sget-object v0, Lcom/ypx/imagepicker/bean/MimeType;->$VALUES:[Lcom/ypx/imagepicker/bean/MimeType;

    invoke-virtual {v0}, [Lcom/ypx/imagepicker/bean/MimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ypx/imagepicker/bean/MimeType;

    return-object v0
.end method


# virtual methods
.method public getExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/MimeType;->mExtensions:Ljava/util/Set;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ypx/imagepicker/bean/MimeType;->mExtensions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/MimeType;->mMimeTypeName:Ljava/lang/String;

    return-object v0
.end method
