.class public Lcom/ypx/imagepicker/data/MediaItemsLoader;
.super Landroidx/loader/content/CursorLoader;
.source "MediaItemsLoader.java"


# static fields
.field private static final ORDER_BY:Ljava/lang/String; = "date_modified DESC"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final QUERY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "external"

    .line 30
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ypx/imagepicker/data/MediaItemsLoader;->QUERY_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "_display_name"

    const-string v4, "width"

    const-string v5, "height"

    const-string v6, "mime_type"

    const-string v7, "_size"

    const-string v8, "duration"

    const-string v9, "date_modified"

    .line 31
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ypx/imagepicker/data/MediaItemsLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 45
    sget-object v2, Lcom/ypx/imagepicker/data/MediaItemsLoader;->QUERY_URI:Landroid/net/Uri;

    sget-object v3, Lcom/ypx/imagepicker/data/MediaItemsLoader;->PROJECTION:[Ljava/lang/String;

    const-string v6, "date_modified DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static newInstance(Landroid/content/Context;Lcom/ypx/imagepicker/bean/ImageSet;Ljava/util/Set;)Landroidx/loader/content/CursorLoader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ypx/imagepicker/bean/ImageSet;",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;)",
            "Landroidx/loader/content/CursorLoader;"
        }
    .end annotation

    .line 53
    invoke-static {p2}, Lcom/ypx/imagepicker/bean/MimeType;->getMimeTypeList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p2

    .line 54
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageSet;->isAllMedia()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageSet;->isAllVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 58
    iget-object p1, p1, Lcom/ypx/imagepicker/bean/ImageSet;->id:Ljava/lang/String;

    aput-object p1, v0, v3

    const-string p1, " bucket_id=? AND "

    move v4, v1

    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    move-object p1, v2

    move v4, v3

    .line 63
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 64
    aput-object v5, v0, v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "mime_type"

    aput-object v6, v5, v3

    aput-object v2, v5, v1

    const-string v2, "%s =? OR %s"

    .line 65
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v4, v1

    goto :goto_2

    :cond_2
    const-string p2, " OR "

    .line 69
    invoke-virtual {v2, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 73
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "(media_type=1 OR media_type=3) AND _size>0 AND ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    new-instance p2, Lcom/ypx/imagepicker/data/MediaItemsLoader;

    invoke-direct {p2, p0, p1, v0}, Lcom/ypx/imagepicker/data/MediaItemsLoader;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public onContentChanged()V
    .locals 0

    return-void
.end method
