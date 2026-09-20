.class public Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ImageHandler;
.super Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;
.source "ImageHandler.java"


# instance fields
.field private final paddingSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/htmlspanner/TagNodeHandler;-><init>()V

    .line 55
    sget-boolean v0, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tgs/aics/utils/ConstantUtil;->isShowNavigationBar:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ypx/imagepicker/utils/CommonUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tgs/aics/utils/Utils;->px2dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 56
    :goto_0
    sget-boolean v2, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-eqz v2, :cond_1

    sget v1, Lcom/ypx/imagepicker/utils/CommonUtil;->safeAreaPadding:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/tgs/aics/utils/Utils;->px2dp(F)I

    move-result v1

    :cond_1
    sub-int/2addr p1, v0

    add-int/2addr p1, v1

    .line 57
    iput p1, p0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ImageHandler;->paddingSize:I

    return-void
.end method


# virtual methods
.method public handleTagNode(Lorg/htmlcleaner/TagNode;Landroid/text/SpannableStringBuilder;IILcom/tgs/aics/thirdtool/htmlspanner/SpanStack;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    const-string v4, "src"

    .line 63
    invoke-virtual {v1, v4}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {v0, v4}, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ImageHandler;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-string v8, "style"

    .line 71
    invoke-virtual {v1, v8}, Lorg/htmlcleaner/TagNode;->getAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, ";"

    .line 72
    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    array-length v8, v1

    const/4 v11, 0x0

    const/16 v12, -0x3e7

    const/16 v13, -0x3e7

    :goto_0
    if-ge v11, v8, :cond_4

    aget-object v14, v1, v11

    const-string v15, "%"

    .line 76
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    const/4 v9, 0x1

    if-eqz v15, :cond_1

    const-string v15, "width:\\s*(\\d+)%"

    .line 77
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 78
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 79
    invoke-virtual {v14, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 80
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 81
    sget-object v12, Lcom/tgs/aics/utils/ConstantUtil;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/tgs/aics/utils/Utils;->getScreenWidthDp(Landroid/content/Context;)I

    move-result v12

    iget v13, v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ImageHandler;->paddingSize:I

    sub-int/2addr v12, v13

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/2addr v12, v9

    int-to-double v12, v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    double-to-int v12, v12

    int-to-double v13, v12

    div-double/2addr v13, v6

    double-to-int v13, v13

    goto :goto_1

    :cond_1
    const-string v15, "(\\d+)"

    .line 86
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    const-string v10, "width"

    .line 87
    invoke-virtual {v14, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 88
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 89
    invoke-virtual {v15, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 90
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 91
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    :cond_2
    const-string v10, "height"

    .line 93
    invoke-virtual {v14, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 94
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 95
    invoke-virtual {v15, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 96
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 97
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_4
    const/16 v9, -0x3e7

    if-ne v12, v9, :cond_5

    .line 104
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    :cond_5
    if-ne v13, v9, :cond_6

    .line 106
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 109
    :cond_6
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tgs/aics/utils/Utils;->getScreenWidthDp(Landroid/content/Context;)I

    move-result v1

    iget v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ImageHandler;->paddingSize:I

    sub-int/2addr v1, v8

    if-le v12, v1, :cond_7

    .line 110
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tgs/aics/utils/Utils;->getScreenWidthDp(Landroid/content/Context;)I

    move-result v1

    iget v8, v0, Lcom/tgs/aics/thirdtool/htmlspanner/handlers/ImageHandler;->paddingSize:I

    sub-int v12, v1, v8

    int-to-double v8, v12

    div-double/2addr v8, v6

    double-to-int v13, v8

    :cond_7
    const-string v1, "\ufffc"

    move-object/from16 v6, p2

    .line 114
    invoke-virtual {v6, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 116
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v5, v12

    .line 117
    invoke-static {v5}, Lcom/tgs/aics/utils/Utils;->dp2px(F)I

    move-result v5

    int-to-float v7, v13

    invoke-static {v7}, Lcom/tgs/aics/utils/Utils;->dp2px(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v3, v5, v2, v1}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    .line 120
    new-instance v1, Landroid/text/style/URLSpan;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "aics://questionnaire_view_image//"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Lcom/tgs/aics/thirdtool/htmlspanner/SpanStack;->pushSpan(Ljava/lang/Object;II)V

    return-void
.end method

.method protected loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 131
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
