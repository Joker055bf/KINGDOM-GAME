.class Lcom/ypx/imagepicker/data/MediaStoreConstants;
.super Ljava/lang/Object;
.source "MediaStoreConstants.java"


# static fields
.field static final BUCKET_ORDER_BY:Ljava/lang/String; = "date_modified DESC"

.field static final COLUMN_BUCKET_DISPLAY_NAME:Ljava/lang/String; = "bucket_display_name"

.field static final COLUMN_BUCKET_ID:Ljava/lang/String; = "bucket_id"

.field static final COLUMN_COUNT:Ljava/lang/String; = "count"

.field static final COLUMN_URI:Ljava/lang/String; = "uri"

.field static final DATA:Ljava/lang/String; = "_data"

.field static final DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field static final DISPLAY_NAME:Ljava/lang/String; = "_display_name"

.field static final DURATION:Ljava/lang/String; = "duration"

.field static final HEIGHT:Ljava/lang/String; = "height"

.field static final MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field static final MEDIA_TYPE_IMAGE:I = 0x1

.field static final MEDIA_TYPE_VIDEO:I = 0x3

.field static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field static final QUERY_URI:Landroid/net/Uri;

.field static final SIZE:Ljava/lang/String; = "_size"

.field static final WIDTH:Ljava/lang/String; = "width"

.field static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "external"

    .line 32
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ypx/imagepicker/data/MediaStoreConstants;->QUERY_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isBeforeAndroidQ()Z
    .locals 2

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
