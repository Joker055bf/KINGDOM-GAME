.class public Lcom/tgs/aics/selecttext/SelectUtils;
.super Ljava/lang/Object;
.source "SelectUtils.java"


# static fields
.field private static STATUS_HEIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(F)I
    .locals 1

    .line 178
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getDisplayHeight()I
    .locals 1

    .line 174
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getDisplayWidth()I
    .locals 1

    .line 170
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 223
    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    .line 225
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 227
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 231
    :catch_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getHysteresisOffset(Landroid/widget/TextView;III)I
    .locals 6

    .line 102
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 105
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 107
    invoke-static {v0, p3}, Lcom/tgs/aics/selecttext/SelectUtils;->isEndOfLineOffset(Landroid/text/Layout;I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, p3, -0x1

    .line 108
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v2, v2

    .line 109
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    float-to-int v3, v3

    sub-int v2, v3, v2

    .line 110
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    if-le p1, v3, :cond_1

    add-int/lit8 p3, p3, -0x1

    .line 115
    :cond_1
    invoke-virtual {v0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p3

    .line 116
    invoke-virtual {v0, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 117
    invoke-virtual {v0, p3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    sub-int v4, v3, v2

    .line 118
    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, p3, 0x1

    if-ne v1, v5, :cond_2

    sub-int v3, p2, v3

    if-lt v3, v4, :cond_3

    :cond_2
    add-int/lit8 v3, p3, -0x1

    if-ne v1, v3, :cond_4

    sub-int/2addr v2, p2

    if-ge v2, v4, :cond_4

    :cond_3
    move v1, p3

    :cond_4
    int-to-float p2, p1

    .line 125
    invoke-virtual {v0, v1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p2

    .line 134
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 p3, 0x1

    sub-int/2addr p0, p3

    if-ge p2, p0, :cond_6

    .line 135
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result p0

    float-to-int p0, p0

    if-lt p1, p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_6

    .line 139
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p0

    float-to-int p0, p0

    .line 140
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result p3

    float-to-int p3, p3

    sub-int p0, p3, p0

    .line 141
    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p3, p0

    if-le p1, p3, :cond_6

    .line 143
    invoke-static {v0, p2}, Lcom/tgs/aics/selecttext/SelectUtils;->getLastTextLength(Landroid/text/Layout;I)I

    move-result p0

    add-int/2addr p2, p0

    :cond_6
    return p2
.end method

.method private static getLastTextLength(Landroid/text/Layout;I)I
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x14

    if-gt v1, v2, :cond_1

    add-int v2, p1, v1

    .line 157
    invoke-static {p0, v2}, Lcom/tgs/aics/selecttext/SelectUtils;->isEndOfLineOffset(Landroid/text/Layout;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static getPreciseOffset(Landroid/widget/TextView;II)I
    .locals 2

    .line 86
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    .line 88
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, p2, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p2

    .line 89
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    float-to-int v0, v0

    if-le v0, p1, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result p0

    return p0

    :cond_0
    return p2

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getStatusHeight()I
    .locals 4

    .line 204
    sget v0, Lcom/tgs/aics/selecttext/SelectUtils;->STATUS_HEIGHT:I

    if-eqz v0, :cond_0

    return v0

    .line 207
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 209
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/tgs/aics/selecttext/SelectUtils;->STATUS_HEIGHT:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static isEmojiText(C)Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    aput-char p0, v1, v2

    .line 243
    invoke-static {v1, v2}, Ljava/lang/Character;->codePointAt([CI)I

    move-result p0

    if-eqz p0, :cond_2

    const/16 v1, 0x9

    if-eq p0, v1, :cond_2

    const/16 v1, 0xa

    if-eq p0, v1, :cond_2

    const/16 v1, 0xd

    if-eq p0, v1, :cond_2

    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const v1, 0xd7ff

    if-le p0, v1, :cond_2

    :cond_0
    const v1, 0xe000

    if-lt p0, v1, :cond_1

    const v1, 0xfffd

    if-le p0, v1, :cond_2

    :cond_1
    const/high16 v1, 0x100000

    if-lt p0, v1, :cond_3

    const v1, 0x10ffff

    if-le p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method

.method private static isEndOfLineOffset(Landroid/text/Layout;I)Z
    .locals 2

    if-lez p1, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p0

    add-int/2addr p0, v1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isImageSpanText(Landroid/text/Spannable;)Z
    .locals 4

    .line 254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "mSpans"

    .line 258
    invoke-static {p0, v0}, Lcom/tgs/aics/selecttext/SelectUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 259
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 260
    check-cast p0, [Ljava/lang/Object;

    .line 261
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 262
    instance-of v3, v3, Lcom/tgs/aics/selecttext/SelectImageSpan;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return v1
.end method

.method public static matchImageSpan(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 279
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 282
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static replaceContent(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-void
.end method

.method public static replaceText2Emoji(Landroid/content/Context;Ljava/util/Map;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 58
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 59
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 61
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 62
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 64
    instance-of v5, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_2

    .line 65
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 67
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_3

    .line 68
    instance-of v5, v4, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v5, :cond_3

    .line 69
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    .line 73
    :cond_3
    instance-of v5, v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v5, :cond_4

    .line 74
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_4
    const/4 v5, 0x0

    const/16 v6, 0x3c

    .line 77
    invoke-virtual {v4, v5, v5, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    new-instance v6, Lcom/tgs/aics/selecttext/SelectImageSpan;

    invoke-direct {v6, v4, v5, v5}, Lcom/tgs/aics/selecttext/SelectImageSpan;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/16 v4, 0x11

    .line 79
    invoke-virtual {p2, v6, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static setWidthHeight(Landroid/view/View;II)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 190
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 191
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 192
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
