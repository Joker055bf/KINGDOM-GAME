.class public final Lcom/applovin/exoplayer2/e/i/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/i/n$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/exoplayer2/e/i/z;

.field private b:Ljava/lang/String;

.field private c:Lcom/applovin/exoplayer2/e/x;

.field private d:Lcom/applovin/exoplayer2/e/i/n$a;

.field private e:Z

.field private final f:[Z

.field private final g:Lcom/applovin/exoplayer2/e/i/r;

.field private final h:Lcom/applovin/exoplayer2/e/i/r;

.field private final i:Lcom/applovin/exoplayer2/e/i/r;

.field private final j:Lcom/applovin/exoplayer2/e/i/r;

.field private final k:Lcom/applovin/exoplayer2/e/i/r;

.field private l:J

.field private m:J

.field private final n:Lcom/applovin/exoplayer2/l/y;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/i/z;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->a:Lcom/applovin/exoplayer2/e/i/z;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 79
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->f:[Z

    .line 80
    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->g:Lcom/applovin/exoplayer2/e/i/r;

    .line 81
    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->h:Lcom/applovin/exoplayer2/e/i/r;

    .line 82
    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->i:Lcom/applovin/exoplayer2/e/i/r;

    .line 83
    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->j:Lcom/applovin/exoplayer2/e/i/r;

    .line 84
    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->k:Lcom/applovin/exoplayer2/e/i/r;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 85
    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/n;->m:J

    .line 86
    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->n:Lcom/applovin/exoplayer2/l/y;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/applovin/exoplayer2/e/i/r;Lcom/applovin/exoplayer2/e/i/r;Lcom/applovin/exoplayer2/e/i/r;)Lcom/applovin/exoplayer2/v;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 234
    iget v3, v0, Lcom/applovin/exoplayer2/e/i/r;->b:I

    iget v4, v1, Lcom/applovin/exoplayer2/e/i/r;->b:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/applovin/exoplayer2/e/i/r;->b:I

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 235
    iget-object v4, v0, Lcom/applovin/exoplayer2/e/i/r;->a:[B

    iget v5, v0, Lcom/applovin/exoplayer2/e/i/r;->b:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iget-object v4, v1, Lcom/applovin/exoplayer2/e/i/r;->a:[B

    iget v5, v0, Lcom/applovin/exoplayer2/e/i/r;->b:I

    iget v7, v1, Lcom/applovin/exoplayer2/e/i/r;->b:I

    invoke-static {v4, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget-object v4, v2, Lcom/applovin/exoplayer2/e/i/r;->a:[B

    iget v0, v0, Lcom/applovin/exoplayer2/e/i/r;->b:I

    iget v5, v1, Lcom/applovin/exoplayer2/e/i/r;->b:I

    add-int/2addr v0, v5

    iget v2, v2, Lcom/applovin/exoplayer2/e/i/r;->b:I

    invoke-static {v4, v6, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    new-instance v0, Lcom/applovin/exoplayer2/l/z;

    iget-object v2, v1, Lcom/applovin/exoplayer2/e/i/r;->a:[B

    iget v4, v1, Lcom/applovin/exoplayer2/e/i/r;->b:I

    invoke-direct {v0, v2, v6, v4}, Lcom/applovin/exoplayer2/l/z;-><init>([BII)V

    const/16 v2, 0x2c

    .line 241
    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/z;->a(I)V

    const/4 v2, 0x3

    .line 242
    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/z;->c(I)I

    move-result v4

    .line 243
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->a()V

    const/16 v5, 0x58

    .line 246
    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/z;->a(I)V

    const/16 v5, 0x8

    .line 247
    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/z;->a(I)V

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v4, :cond_2

    .line 250
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v8, v8, 0x59

    .line 253
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v8, v8, 0x8

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {v0, v8}, Lcom/applovin/exoplayer2/l/z;->a(I)V

    const/4 v7, 0x2

    if-lez v4, :cond_3

    rsub-int/lit8 v8, v4, 0x8

    mul-int/2addr v8, v7

    .line 259
    invoke-virtual {v0, v8}, Lcom/applovin/exoplayer2/l/z;->a(I)V

    .line 262
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 263
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    move-result v8

    if-ne v8, v2, :cond_4

    .line 265
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->a()V

    .line 267
    :cond_4
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    move-result v2

    .line 268
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    move-result v9

    .line 269
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_8

    .line 270
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    move-result v10

    .line 271
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    move-result v12

    .line 272
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    move-result v13

    .line 273
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    move-result v14

    if-eq v8, v11, :cond_6

    if-ne v8, v7, :cond_5

    goto :goto_1

    :cond_5
    move v15, v11

    goto :goto_2

    :cond_6
    :goto_1
    move v15, v7

    :goto_2
    if-ne v8, v11, :cond_7

    move v8, v7

    goto :goto_3

    :cond_7
    move v8, v11

    :goto_3
    add-int/2addr v10, v12

    mul-int/2addr v15, v10

    sub-int/2addr v2, v15

    add-int/2addr v13, v14

    mul-int/2addr v8, v13

    sub-int/2addr v9, v8

    .line 280
    :cond_8
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 281
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 282
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    move-result v8

    .line 284
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v10

    if-eqz v10, :cond_9

    move v10, v6

    goto :goto_4

    :cond_9
    move v10, v4

    :goto_4
    if-gt v10, v4, :cond_a

    .line 285
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 286
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 287
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 289
    :cond_a
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 290
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 291
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 292
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 293
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 294
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 296
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 297
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 298
    invoke-static {v0}, Lcom/applovin/exoplayer2/e/i/n;->a(Lcom/applovin/exoplayer2/l/z;)V

    .line 300
    :cond_b
    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/z;->a(I)V

    .line 301
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 303
    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/z;->a(I)V

    .line 304
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 305
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 306
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->a()V

    .line 309
    :cond_c
    invoke-static {v0}, Lcom/applovin/exoplayer2/e/i/n;->b(Lcom/applovin/exoplayer2/l/z;)V

    .line 310
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v4

    const/4 v10, 0x4

    if-eqz v4, :cond_d

    move v4, v6

    .line 312
    :goto_5
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    move-result v12

    if-ge v4, v12, :cond_d

    add-int/lit8 v12, v8, 0x4

    add-int/2addr v12, v11

    .line 315
    invoke-virtual {v0, v12}, Lcom/applovin/exoplayer2/l/z;->a(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 318
    :cond_d
    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/z;->a(I)V

    .line 320
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v4

    const/16 v7, 0x18

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v4, :cond_14

    .line 321
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 322
    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/z;->c(I)I

    move-result v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_e

    const/16 v4, 0x10

    .line 324
    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/z;->c(I)I

    move-result v5

    .line 325
    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/l/z;->c(I)I

    move-result v4

    if-eqz v5, :cond_10

    if-eqz v4, :cond_10

    int-to-float v5, v5

    int-to-float v4, v4

    div-float v8, v5, v4

    goto :goto_6

    .line 329
    :cond_e
    sget-object v5, Lcom/applovin/exoplayer2/l/v;->b:[F

    array-length v5, v5

    if-ge v4, v5, :cond_f

    .line 330
    sget-object v5, Lcom/applovin/exoplayer2/l/v;->b:[F

    aget v8, v5, v4

    goto :goto_6

    .line 332
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "Unexpected aspect_ratio_idc value: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H265Reader"

    invoke-static {v5, v4}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_10
    :goto_6
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 336
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->a()V

    .line 338
    :cond_11
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 339
    invoke-virtual {v0, v10}, Lcom/applovin/exoplayer2/l/z;->a(I)V

    .line 340
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 342
    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/z;->a(I)V

    .line 345
    :cond_12
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 346
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 347
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 349
    :cond_13
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->a()V

    .line 350
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v4

    if-eqz v4, :cond_14

    mul-int/lit8 v9, v9, 0x2

    .line 358
    :cond_14
    iget-object v4, v1, Lcom/applovin/exoplayer2/e/i/r;->a:[B

    iget v1, v1, Lcom/applovin/exoplayer2/e/i/r;->b:I

    invoke-virtual {v0, v4, v6, v1}, Lcom/applovin/exoplayer2/l/z;->a([BII)V

    .line 359
    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/z;->a(I)V

    .line 360
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/e;->a(Lcom/applovin/exoplayer2/l/z;)Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    move-object/from16 v4, p0

    .line 363
    invoke-virtual {v1, v4}, Lcom/applovin/exoplayer2/v$a;->a(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v1

    const-string v4, "video/hevc"

    .line 364
    invoke-virtual {v1, v4}, Lcom/applovin/exoplayer2/v$a;->f(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v1

    .line 365
    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/v$a;->d(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    .line 366
    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/v$a;->g(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    .line 367
    invoke-virtual {v0, v9}, Lcom/applovin/exoplayer2/v$a;->h(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    .line 368
    invoke-virtual {v0, v8}, Lcom/applovin/exoplayer2/v$a;->b(F)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    .line 369
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/v$a;->a(Ljava/util/List;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/v$a;->a()Lcom/applovin/exoplayer2/v;

    move-result-object v0

    return-object v0
.end method

.method private a(JIIJ)V
    .locals 8

    .line 178
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->d:Lcom/applovin/exoplayer2/e/i/n$a;

    iget-boolean v7, p0, Lcom/applovin/exoplayer2/e/i/n;->e:Z

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/applovin/exoplayer2/e/i/n$a;->a(JIIJZ)V

    .line 179
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n;->e:Z

    if-nez p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->g:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->a(I)V

    .line 181
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->h:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->a(I)V

    .line 182
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->i:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->a(I)V

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->j:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->a(I)V

    .line 185
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->k:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->a(I)V

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/l/z;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    move v3, v0

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    .line 377
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->d()I

    goto :goto_3

    :cond_0
    shl-int/lit8 v4, v1, 0x1

    add-int/2addr v4, v2

    shl-int v4, v5, v4

    const/16 v6, 0x40

    .line 381
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->e()I

    :cond_1
    move v6, v0

    :goto_2
    if-ge v6, v4, :cond_2

    .line 387
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->e()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    move v5, v4

    :cond_3
    add-int/2addr v3, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private a([BII)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->d:Lcom/applovin/exoplayer2/e/i/n$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/n$a;->a([BII)V

    .line 190
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n;->e:Z

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->g:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;->a([BII)V

    .line 192
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->h:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;->a([BII)V

    .line 193
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->i:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;->a([BII)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->j:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;->a([BII)V

    .line 196
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->k:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;->a([BII)V

    return-void
.end method

.method private b(JIIJ)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->d:Lcom/applovin/exoplayer2/e/i/n$a;

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/e/i/n;->e:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/applovin/exoplayer2/e/i/n$a;->a(JIZ)V

    .line 201
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n;->e:Z

    if-nez p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->g:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->b(I)Z

    .line 203
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->h:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->b(I)Z

    .line 204
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->i:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->b(I)Z

    .line 205
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->g:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/i/r;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->h:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/i/r;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->i:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/i/r;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->c:Lcom/applovin/exoplayer2/e/x;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/n;->b:Ljava/lang/String;

    iget-object p3, p0, Lcom/applovin/exoplayer2/e/i/n;->g:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->h:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/n;->i:Lcom/applovin/exoplayer2/e/i/r;

    invoke-static {p2, p3, v0, v1}, Lcom/applovin/exoplayer2/e/i/n;->a(Ljava/lang/String;Lcom/applovin/exoplayer2/e/i/r;Lcom/applovin/exoplayer2/e/i/r;Lcom/applovin/exoplayer2/e/i/r;)Lcom/applovin/exoplayer2/v;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/v;)V

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n;->e:Z

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->j:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->b(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->j:Lcom/applovin/exoplayer2/e/i/r;

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/i/r;->a:[B

    iget-object p3, p0, Lcom/applovin/exoplayer2/e/i/n;->j:Lcom/applovin/exoplayer2/e/i/r;

    iget p3, p3, Lcom/applovin/exoplayer2/e/i/r;->b:I

    invoke-static {p1, p3}, Lcom/applovin/exoplayer2/l/v;->a([BI)I

    move-result p1

    .line 212
    iget-object p3, p0, Lcom/applovin/exoplayer2/e/i/n;->n:Lcom/applovin/exoplayer2/l/y;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->j:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/i/r;->a:[B

    invoke-virtual {p3, v0, p1}, Lcom/applovin/exoplayer2/l/y;->a([BI)V

    .line 215
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->n:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/l/y;->e(I)V

    .line 216
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->a:Lcom/applovin/exoplayer2/e/i/z;

    iget-object p3, p0, Lcom/applovin/exoplayer2/e/i/n;->n:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p5, p6, p3}, Lcom/applovin/exoplayer2/e/i/z;->a(JLcom/applovin/exoplayer2/l/y;)V

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->k:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->b(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 219
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->k:Lcom/applovin/exoplayer2/e/i/r;

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/i/r;->a:[B

    iget-object p3, p0, Lcom/applovin/exoplayer2/e/i/n;->k:Lcom/applovin/exoplayer2/e/i/r;

    iget p3, p3, Lcom/applovin/exoplayer2/e/i/r;->b:I

    invoke-static {p1, p3}, Lcom/applovin/exoplayer2/l/v;->a([BI)I

    move-result p1

    .line 220
    iget-object p3, p0, Lcom/applovin/exoplayer2/e/i/n;->n:Lcom/applovin/exoplayer2/l/y;

    iget-object p4, p0, Lcom/applovin/exoplayer2/e/i/n;->k:Lcom/applovin/exoplayer2/e/i/r;

    iget-object p4, p4, Lcom/applovin/exoplayer2/e/i/r;->a:[B

    invoke-virtual {p3, p4, p1}, Lcom/applovin/exoplayer2/l/y;->a([BI)V

    .line 223
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->n:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/l/y;->e(I)V

    .line 224
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->a:Lcom/applovin/exoplayer2/e/i/z;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/n;->n:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p5, p6, p2}, Lcom/applovin/exoplayer2/e/i/z;->a(JLcom/applovin/exoplayer2/l/y;)V

    :cond_2
    return-void
.end method

.method private static b(Lcom/applovin/exoplayer2/l/z;)V
    .locals 8

    .line 399
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->d()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_6

    if-eqz v2, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v3

    :cond_0
    if-eqz v3, :cond_2

    .line 412
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->a()V

    .line 413
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->d()I

    move v5, v1

    :goto_1
    if-gt v5, v4, :cond_5

    .line 415
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->a()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 420
    :cond_2
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->d()I

    move-result v4

    .line 421
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->d()I

    move-result v5

    add-int v6, v4, v5

    move v7, v1

    :goto_2
    if-ge v7, v4, :cond_3

    .line 424
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 425
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->a()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_3
    if-ge v4, v5, :cond_4

    .line 428
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->d()I

    .line 429
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->a()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private c()V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->c:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->d:Lcom/applovin/exoplayer2/e/i/n$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/n;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 92
    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/n;->m:J

    .line 93
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->f:[Z

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/v;->a([Z)V

    .line 94
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->g:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->a()V

    .line 95
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->h:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->a()V

    .line 96
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->i:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->a()V

    .line 97
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->j:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->a()V

    .line 98
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->k:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->a()V

    .line 99
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->d:Lcom/applovin/exoplayer2/e/i/n$a;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/n$a;->a()V

    :cond_0
    return-void
.end method

.method public a(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 117
    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/n;->m:J

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .locals 2

    .line 106
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->a()V

    .line 107
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->b:Ljava/lang/String;

    .line 108
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/e/j;->a(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->c:Lcom/applovin/exoplayer2/e/x;

    .line 109
    new-instance v0, Lcom/applovin/exoplayer2/e/i/n$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/n;->c:Lcom/applovin/exoplayer2/e/x;

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/e/i/n$a;-><init>(Lcom/applovin/exoplayer2/e/x;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->d:Lcom/applovin/exoplayer2/e/i/n$a;

    .line 110
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->a:Lcom/applovin/exoplayer2/e/i/z;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/e/i/z;->a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/l/y;)V
    .locals 16

    move-object/from16 v7, p0

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/e/i/n;->c()V

    .line 125
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->a()I

    move-result v0

    if-lez v0, :cond_4

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->c()I

    move-result v0

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v8

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v9

    .line 131
    iget-wide v1, v7, Lcom/applovin/exoplayer2/e/i/n;->l:J

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->a()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/applovin/exoplayer2/e/i/n;->l:J

    .line 132
    iget-object v1, v7, Lcom/applovin/exoplayer2/e/i/n;->c:Lcom/applovin/exoplayer2/e/x;

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->a()I

    move-result v2

    move-object/from16 v10, p1

    invoke-interface {v1, v10, v2}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;I)V

    :goto_0
    if-ge v0, v8, :cond_0

    .line 136
    iget-object v1, v7, Lcom/applovin/exoplayer2/e/i/n;->f:[Z

    invoke-static {v9, v0, v8, v1}, Lcom/applovin/exoplayer2/l/v;->a([BII[Z)I

    move-result v11

    if-ne v11, v8, :cond_1

    .line 140
    invoke-direct {v7, v9, v0, v8}, Lcom/applovin/exoplayer2/e/i/n;->a([BII)V

    return-void

    .line 145
    :cond_1
    invoke-static {v9, v11}, Lcom/applovin/exoplayer2/l/v;->c([BI)I

    move-result v12

    sub-int v1, v11, v0

    if-lez v1, :cond_2

    .line 151
    invoke-direct {v7, v9, v0, v11}, Lcom/applovin/exoplayer2/e/i/n;->a([BII)V

    :cond_2
    sub-int v13, v8, v11

    .line 155
    iget-wide v2, v7, Lcom/applovin/exoplayer2/e/i/n;->l:J

    int-to-long v4, v13

    sub-long v14, v2, v4

    if-gez v1, :cond_3

    neg-int v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v4, v0

    .line 162
    iget-wide v5, v7, Lcom/applovin/exoplayer2/e/i/n;->m:J

    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    .line 159
    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/e/i/n;->b(JIIJ)V

    .line 165
    iget-wide v5, v7, Lcom/applovin/exoplayer2/e/i/n;->m:J

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/e/i/n;->a(JIIJ)V

    add-int/lit8 v0, v11, 0x3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
