.class public Lcom/ypx/imagepicker/data/MediaSetsLoader;
.super Landroidx/loader/content/CursorLoader;
.source "MediaSetsLoader.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private isLoadImage:Z

.field private isLoadVideo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "uri"

    const-string v1, "count"

    const-string v2, "_id"

    const-string v3, "bucket_id"

    const-string v4, "bucket_display_name"

    .line 39
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ypx/imagepicker/data/MediaSetsLoader;->COLUMNS:[Ljava/lang/String;

    const-string v0, "mime_type"

    .line 45
    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ypx/imagepicker/data/MediaSetsLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 7

    .line 52
    sget-object v2, Lcom/ypx/imagepicker/data/MediaStoreConstants;->QUERY_URI:Landroid/net/Uri;

    sget-object v3, Lcom/ypx/imagepicker/data/MediaSetsLoader;->PROJECTION:[Ljava/lang/String;

    const-string v6, "date_modified DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-boolean p4, p0, Lcom/ypx/imagepicker/data/MediaSetsLoader;->isLoadVideo:Z

    .line 54
    iput-boolean p5, p0, Lcom/ypx/imagepicker/data/MediaSetsLoader;->isLoadImage:Z

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/util/Set;ZZ)Landroidx/loader/content/CursorLoader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/ypx/imagepicker/bean/MimeType;",
            ">;ZZ)",
            "Landroidx/loader/content/CursorLoader;"
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lcom/ypx/imagepicker/bean/MimeType;->getMimeTypeList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 63
    aput-object v3, v4, v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "mime_type"

    aput-object v5, v3, v0

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-string v1, "%s =? OR %s"

    .line 64
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v5

    goto :goto_0

    :cond_0
    const-string p1, " OR "

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x4

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(media_type=3 OR media_type=1) AND _size>0 AND ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    new-instance p1, Lcom/ypx/imagepicker/data/MediaSetsLoader;

    move-object v1, p1

    move-object v2, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ypx/imagepicker/data/MediaSetsLoader;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    return-object p1
.end method

.method private static getUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3

    const-string v0, "_id"

    .line 137
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "mime_type"

    .line 138
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-static {p0}, Lcom/ypx/imagepicker/bean/MimeType;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    sget-object p0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p0}, Lcom/ypx/imagepicker/bean/MimeType;->isVideo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 143
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 145
    :cond_1
    sget-object p0, Lcom/ypx/imagepicker/data/MediaStoreConstants;->QUERY_URI:Landroid/net/Uri;

    .line 147
    :goto_0
    invoke-static {p0, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 23

    move-object/from16 v0, p0

    .line 81
    invoke-super/range {p0 .. p0}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    .line 82
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/ypx/imagepicker/data/MediaSetsLoader;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 85
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    const-string v4, "bucket_id"

    if-eqz v1, :cond_1

    .line 87
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 89
    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    const-wide/16 v8, 0x1

    if-nez v7, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v8, v10

    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 91
    invoke-virtual {v3, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_1
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/ypx/imagepicker/data/MediaSetsLoader;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v8, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 97
    invoke-static {v1}, Lcom/ypx/imagepicker/data/MediaSetsLoader;->getUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v13

    .line 98
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    move v15, v11

    .line 100
    :cond_2
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 101
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    const-string v12, "_id"

    .line 104
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-string v12, "bucket_display_name"

    .line 105
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 106
    invoke-static {v1}, Lcom/ypx/imagepicker/data/MediaSetsLoader;->getUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v20

    .line 107
    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    new-array v9, v8, [Ljava/lang/String;

    .line 109
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v11

    .line 110
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v10

    const/16 v18, 0x2

    aput-object v12, v9, v18

    .line 112
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x3

    aput-object v12, v9, v17

    .line 113
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x4

    aput-object v12, v9, v16

    .line 108
    invoke-virtual {v5, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 114
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    int-to-long v6, v15

    add-long v6, v6, v21

    long-to-int v15, v6

    .line 116
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    :cond_4
    move v15, v11

    const/4 v13, 0x0

    .line 121
    :goto_3
    iget-boolean v1, v0, Lcom/ypx/imagepicker/data/MediaSetsLoader;->isLoadImage:Z

    if-eqz v1, :cond_5

    iget-boolean v3, v0, Lcom/ypx/imagepicker/data/MediaSetsLoader;->isLoadVideo:Z

    if-eqz v3, :cond_5

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/ypx/imagepicker/data/MediaSetsLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/ypx/imagepicker/R$string;->picker_str_folder_item_all:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/ypx/imagepicker/data/MediaSetsLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/ypx/imagepicker/R$string;->picker_str_folder_item_image:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 125
    :cond_6
    iget-boolean v1, v0, Lcom/ypx/imagepicker/data/MediaSetsLoader;->isLoadVideo:Z

    if-eqz v1, :cond_7

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/ypx/imagepicker/data/MediaSetsLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/ypx/imagepicker/R$string;->picker_str_folder_item_video:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    const-string v1, ""

    :goto_4
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "-1"

    aput-object v4, v3, v11

    aput-object v4, v3, v10

    const/4 v4, 0x2

    aput-object v1, v3, v4

    if-nez v13, :cond_8

    const/4 v1, 0x3

    const/4 v12, 0x0

    goto :goto_5

    .line 130
    :cond_8
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x3

    :goto_5
    aput-object v12, v3, v1

    .line 131
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v3, v6

    .line 129
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 133
    new-instance v1, Landroid/database/MergeCursor;

    new-array v3, v4, [Landroid/database/Cursor;

    aput-object v2, v3, v11

    aput-object v5, v3, v10

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/ypx/imagepicker/data/MediaSetsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method
