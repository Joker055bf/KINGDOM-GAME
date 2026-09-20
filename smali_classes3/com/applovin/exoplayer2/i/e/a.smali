.class public final Lcom/applovin/exoplayer2/i/e/a;
.super Lcom/applovin/exoplayer2/i/d;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Z

.field private final c:Lcom/applovin/exoplayer2/i/e/b;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/exoplayer2/i/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:F

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/i/e/a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/i/e/a;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "SsaDecoder"

    .line 91
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/i/d;-><init>(Ljava/lang/String;)V

    const v0, -0x800001

    .line 92
    iput v0, p0, Lcom/applovin/exoplayer2/i/e/a;->e:F

    .line 93
    iput v0, p0, Lcom/applovin/exoplayer2/i/e/a;->f:F

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 95
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/i/e/a;->b:Z

    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Format:"

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->a(Z)V

    .line 100
    invoke-static {v0}, Lcom/applovin/exoplayer2/i/e/b;->a(Ljava/lang/String;)Lcom/applovin/exoplayer2/i/e/b;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/i/e/b;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/e/a;->c:Lcom/applovin/exoplayer2/i/e/b;

    .line 101
    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/i/e/a;->a(Lcom/applovin/exoplayer2/l/y;)V

    goto :goto_0

    .line 103
    :cond_0
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/e/a;->b:Z

    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/applovin/exoplayer2/i/e/a;->c:Lcom/applovin/exoplayer2/i/e/b;

    :goto_0
    return-void
.end method

.method private static a(JLjava/util/List;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;>;)I"
        }
    .end annotation

    .line 478
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 479
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    return v0

    .line 483
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-gez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 488
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 492
    new-instance p0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_3
    add-int/lit8 p1, v0, -0x1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 490
    :goto_2
    invoke-interface {p3, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 8

    .line 292
    sget-object v0, Lcom/applovin/exoplayer2/i/e/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 293
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    const/4 v6, 0x2

    .line 298
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long/2addr v6, v2

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    const/4 v2, 0x3

    .line 299
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    .line 300
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(Ljava/lang/String;Lcom/applovin/exoplayer2/i/e/c;Lcom/applovin/exoplayer2/i/e/c$b;FF)Lcom/applovin/exoplayer2/i/a;
    .locals 6

    .line 310
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 311
    new-instance p0, Lcom/applovin/exoplayer2/i/a$a;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/i/a$a;->a(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object p0

    const v1, -0x800001

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 314
    iget-object v3, p1, Lcom/applovin/exoplayer2/i/e/c;->c:Ljava/lang/Integer;

    const/16 v4, 0x21

    if-eqz v3, :cond_0

    .line 315
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p1, Lcom/applovin/exoplayer2/i/e/c;->c:Ljava/lang/Integer;

    .line 316
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 318
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 315
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 321
    :cond_0
    iget v3, p1, Lcom/applovin/exoplayer2/i/e/c;->d:F

    cmpl-float v3, v3, v1

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    cmpl-float v3, p4, v1

    if-eqz v3, :cond_1

    .line 322
    iget v3, p1, Lcom/applovin/exoplayer2/i/e/c;->d:F

    div-float/2addr v3, p4

    invoke-virtual {p0, v3, v5}, Lcom/applovin/exoplayer2/i/a$a;->b(FI)Lcom/applovin/exoplayer2/i/a$a;

    .line 325
    :cond_1
    iget-boolean v3, p1, Lcom/applovin/exoplayer2/i/e/c;->e:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/i/e/c;->f:Z

    if-eqz v3, :cond_2

    .line 326
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v5, 0x3

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 329
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 326
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 331
    :cond_2
    iget-boolean v3, p1, Lcom/applovin/exoplayer2/i/e/c;->e:Z

    if-eqz v3, :cond_3

    .line 332
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 335
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 332
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 337
    :cond_3
    iget-boolean v3, p1, Lcom/applovin/exoplayer2/i/e/c;->f:Z

    if-eqz v3, :cond_4

    .line 338
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 341
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 338
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 344
    :cond_4
    :goto_0
    iget-boolean v3, p1, Lcom/applovin/exoplayer2/i/e/c;->g:Z

    if-eqz v3, :cond_5

    .line 345
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 348
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 345
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 351
    :cond_5
    iget-boolean v3, p1, Lcom/applovin/exoplayer2/i/e/c;->h:Z

    if-eqz v3, :cond_6

    .line 352
    new-instance v3, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v3}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 355
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 352
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 361
    :cond_6
    iget v0, p2, Lcom/applovin/exoplayer2/i/e/c$b;->a:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 362
    iget v3, p2, Lcom/applovin/exoplayer2/i/e/c$b;->a:I

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_8

    .line 364
    iget v3, p1, Lcom/applovin/exoplayer2/i/e/c;->b:I

    .line 368
    :cond_8
    :goto_1
    invoke-static {v3}, Lcom/applovin/exoplayer2/i/e/a;->b(I)Landroid/text/Layout$Alignment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/i/a$a;->a(Landroid/text/Layout$Alignment;)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object p1

    .line 369
    invoke-static {v3}, Lcom/applovin/exoplayer2/i/e/a;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a$a;->b(I)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object p1

    .line 370
    invoke-static {v3}, Lcom/applovin/exoplayer2/i/e/a;->c(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/i/a$a;->a(I)Lcom/applovin/exoplayer2/i/a$a;

    .line 372
    iget-object p1, p2, Lcom/applovin/exoplayer2/i/e/c$b;->b:Landroid/graphics/PointF;

    if-eqz p1, :cond_9

    cmpl-float p1, p4, v1

    if-eqz p1, :cond_9

    cmpl-float p1, p3, v1

    if-eqz p1, :cond_9

    .line 375
    iget-object p1, p2, Lcom/applovin/exoplayer2/i/e/c$b;->b:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/i/a$a;->a(F)Lcom/applovin/exoplayer2/i/a$a;

    .line 376
    iget-object p1, p2, Lcom/applovin/exoplayer2/i/e/c$b;->b:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, p4

    invoke-virtual {p0, p1, v2}, Lcom/applovin/exoplayer2/i/a$a;->a(FI)Lcom/applovin/exoplayer2/i/a$a;

    goto :goto_2

    .line 379
    :cond_9
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a$a;->c()I

    move-result p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/i/e/a;->e(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/i/a$a;->a(F)Lcom/applovin/exoplayer2/i/a$a;

    .line 380
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a$a;->b()I

    move-result p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/i/e/a;->e(I)F

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/applovin/exoplayer2/i/a$a;->a(FI)Lcom/applovin/exoplayer2/i/a$a;

    .line 383
    :goto_2
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a$a;->e()Lcom/applovin/exoplayer2/i/a;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/applovin/exoplayer2/l/y;)V
    .locals 2

    .line 128
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "[Script Info]"

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/e/a;->b(Lcom/applovin/exoplayer2/l/y;)V

    goto :goto_0

    :cond_1
    const-string v1, "[V4+ Styles]"

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/e/a;->c(Lcom/applovin/exoplayer2/l/y;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/e/a;->d:Ljava/util/Map;

    goto :goto_0

    :cond_2
    const-string v1, "[V4 Styles]"

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "SsaDecoder"

    const-string v1, "[V4 Styles] are not supported"

    .line 134
    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "[Events]"

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/l/y;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/l/y;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 218
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/e/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/e/a;->c:Lcom/applovin/exoplayer2/i/e/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 220
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->C()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "Format:"

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    invoke-static {v1}, Lcom/applovin/exoplayer2/i/e/b;->a(Ljava/lang/String;)Lcom/applovin/exoplayer2/i/e/b;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "Dialogue:"

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_3

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping dialogue line before complete format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SsaDecoder"

    invoke-static {v2, v1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_3
    invoke-direct {p0, v1, v0, p2, p3}, Lcom/applovin/exoplayer2/i/e/a;->a(Ljava/lang/String;Lcom/applovin/exoplayer2/i/e/b;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/applovin/exoplayer2/i/e/b;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/applovin/exoplayer2/i/e/b;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Dialogue:"

    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->a(Z)V

    const/16 v0, 0x9

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    iget v2, p2, Lcom/applovin/exoplayer2/i/e/b;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 246
    array-length v1, v0

    iget v2, p2, Lcom/applovin/exoplayer2/i/e/b;->e:I

    const-string v3, "SsaDecoder"

    if-eq v1, v2, :cond_0

    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Skipping dialogue line with fewer columns than format: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 251
    :cond_0
    iget v1, p2, Lcom/applovin/exoplayer2/i/e/b;->a:I

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/i/e/a;->a(Ljava/lang/String;)J

    move-result-wide v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    const-string v7, "Skipping invalid timing: "

    if-nez v6, :cond_1

    .line 253
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_1
    iget v6, p2, Lcom/applovin/exoplayer2/i/e/b;->b:I

    aget-object v6, v0, v6

    invoke-static {v6}, Lcom/applovin/exoplayer2/i/e/a;->a(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_2

    .line 259
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_2
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/e/a;->d:Ljava/util/Map;

    if-eqz p1, :cond_3

    iget p1, p2, Lcom/applovin/exoplayer2/i/e/b;->c:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    .line 266
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/e/a;->d:Ljava/util/Map;

    iget v3, p2, Lcom/applovin/exoplayer2/i/e/b;->c:I

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/i/e/c;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 268
    :goto_0
    iget p2, p2, Lcom/applovin/exoplayer2/i/e/b;->d:I

    aget-object p2, v0, p2

    .line 269
    invoke-static {p2}, Lcom/applovin/exoplayer2/i/e/c$b;->a(Ljava/lang/String;)Lcom/applovin/exoplayer2/i/e/c$b;

    move-result-object v0

    .line 271
    invoke-static {p2}, Lcom/applovin/exoplayer2/i/e/c$b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "\\N"

    const-string v4, "\n"

    .line 272
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "\\n"

    .line 273
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "\\h"

    const-string/jumbo v4, "\u00a0"

    .line 274
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 275
    iget v3, p0, Lcom/applovin/exoplayer2/i/e/a;->e:F

    iget v4, p0, Lcom/applovin/exoplayer2/i/e/a;->f:F

    invoke-static {p2, p1, v0, v3, v4}, Lcom/applovin/exoplayer2/i/e/a;->a(Ljava/lang/String;Lcom/applovin/exoplayer2/i/e/c;Lcom/applovin/exoplayer2/i/e/c$b;FF)Lcom/applovin/exoplayer2/i/a;

    move-result-object p1

    .line 277
    invoke-static {v1, v2, p4, p3}, Lcom/applovin/exoplayer2/i/e/a;->a(JLjava/util/List;Ljava/util/List;)I

    move-result p2

    .line 278
    invoke-static {v8, v9, p4, p3}, Lcom/applovin/exoplayer2/i/e/a;->a(JLjava/util/List;Ljava/util/List;)I

    move-result p4

    :goto_1
    if-ge p2, p4, :cond_4

    .line 281
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static b(I)Landroid/text/Layout$Alignment;
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 404
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown alignment: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaDecoder"

    invoke-static {v1, p0}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 400
    :pswitch_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    .line 396
    :pswitch_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    .line 392
    :pswitch_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :pswitch_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lcom/applovin/exoplayer2/l/y;)V
    .locals 4

    .line 153
    :catch_0
    :goto_0
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->a()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->f()I

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_4

    :cond_0
    const-string v1, ":"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 156
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 159
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "playresx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    const-string v2, "playresy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 169
    :cond_2
    :try_start_0
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/i/e/a;->f:F

    goto :goto_0

    .line 162
    :cond_3
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/i/e/a;->e:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static c(I)I
    .locals 3

    const/high16 v0, -0x80000000

    packed-switch p0, :pswitch_data_0

    .line 427
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown alignment: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaDecoder"

    invoke-static {v1, p0}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static c(Lcom/applovin/exoplayer2/l/y;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/l/y;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/exoplayer2/i/e/c;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 191
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->C()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 192
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->a()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->f()I

    move-result v3

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_4

    :cond_1
    const-string v3, "Format:"

    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    invoke-static {v2}, Lcom/applovin/exoplayer2/i/e/c$a;->a(Ljava/lang/String;)Lcom/applovin/exoplayer2/i/e/c$a;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v3, "Style:"

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_3

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skipping \'Style:\' line before \'Format:\' line: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SsaDecoder"

    invoke-static {v3, v2}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_3
    invoke-static {v2, v1}, Lcom/applovin/exoplayer2/i/e/c;->a(Ljava/lang/String;Lcom/applovin/exoplayer2/i/e/c$a;)Lcom/applovin/exoplayer2/i/e/c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 202
    iget-object v3, v2, Lcom/applovin/exoplayer2/i/e/c;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static d(I)I
    .locals 3

    const/high16 v0, -0x80000000

    packed-switch p0, :pswitch_data_0

    .line 450
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown alignment: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaDecoder"

    invoke-static {v1, p0}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static e(I)F
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, -0x800001

    return p0

    :cond_0
    const p0, 0x3f733333

    return p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const p0, 0x3d4ccccd

    return p0
.end method


# virtual methods
.method protected a([BIZ)Lcom/applovin/exoplayer2/i/f;
    .locals 2

    .line 110
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v1, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {v1, p1, p2}, Lcom/applovin/exoplayer2/l/y;-><init>([BI)V

    .line 114
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/i/e/a;->b:Z

    if-nez p1, :cond_0

    .line 115
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/i/e/a;->a(Lcom/applovin/exoplayer2/l/y;)V

    .line 117
    :cond_0
    invoke-direct {p0, v1, p3, v0}, Lcom/applovin/exoplayer2/i/e/a;->a(Lcom/applovin/exoplayer2/l/y;Ljava/util/List;Ljava/util/List;)V

    .line 118
    new-instance p1, Lcom/applovin/exoplayer2/i/e/d;

    invoke-direct {p1, p3, v0}, Lcom/applovin/exoplayer2/i/e/d;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method
