.class public Lcom/applovin/exoplayer2/e/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/e/d$b;,
        Lcom/applovin/exoplayer2/e/e/d$c;,
        Lcom/applovin/exoplayer2/e/e/d$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/applovin/exoplayer2/e/l;

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:Ljava/util/UUID;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/applovin/exoplayer2/e/e/d$b;

.field private B:Z

.field private C:I

.field private D:J

.field private E:Z

.field private F:J

.field private G:J

.field private H:J

.field private I:Lcom/applovin/exoplayer2/l/r;

.field private J:Lcom/applovin/exoplayer2/l/r;

.field private K:Z

.field private L:Z

.field private M:I

.field private N:J

.field private O:J

.field private P:I

.field private Q:I

.field private R:[I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:Z

.field private X:I

.field private Y:I

.field private Z:I

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:I

.field private ae:B

.field private af:Z

.field private ag:Lcom/applovin/exoplayer2/e/j;

.field private final g:Lcom/applovin/exoplayer2/e/e/c;

.field private final h:Lcom/applovin/exoplayer2/e/e/f;

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/e/e/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Z

.field private final k:Lcom/applovin/exoplayer2/l/y;

.field private final l:Lcom/applovin/exoplayer2/l/y;

.field private final m:Lcom/applovin/exoplayer2/l/y;

.field private final n:Lcom/applovin/exoplayer2/l/y;

.field private final o:Lcom/applovin/exoplayer2/l/y;

.field private final p:Lcom/applovin/exoplayer2/l/y;

.field private final q:Lcom/applovin/exoplayer2/l/y;

.field private final r:Lcom/applovin/exoplayer2/l/y;

.field private final s:Lcom/applovin/exoplayer2/l/y;

.field private final t:Lcom/applovin/exoplayer2/l/y;

.field private u:Ljava/nio/ByteBuffer;

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public static synthetic $r8$lambda$eCj1xjeQVG3Gvjnmi3iHibXPmH0()[Lcom/applovin/exoplayer2/e/h;
    .locals 1

    invoke-static {}, Lcom/applovin/exoplayer2/e/e/d;->h()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 76
    new-instance v0, Lcom/applovin/exoplayer2/e/e/d$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/e/d$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/e/e/d;->a:Lcom/applovin/exoplayer2/e/l;

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 276
    fill-array-data v1, :array_0

    sput-object v1, Lcom/applovin/exoplayer2/e/e/d;->b:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 293
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/applovin/exoplayer2/e/e/d;->c:[B

    new-array v0, v0, [B

    .line 307
    fill-array-data v0, :array_1

    sput-object v0, Lcom/applovin/exoplayer2/e/e/d;->d:[B

    .line 329
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/applovin/exoplayer2/e/e/d;->e:Ljava/util/UUID;

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    .line 338
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/e/e/d;->f:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 417
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/e/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 421
    new-instance v0, Lcom/applovin/exoplayer2/e/e/a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/e/a;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/e/e/d;-><init>(Lcom/applovin/exoplayer2/e/e/c;I)V

    return-void
.end method

.method constructor <init>(Lcom/applovin/exoplayer2/e/e/c;I)V
    .locals 4

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 362
    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->w:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 363
    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->x:J

    .line 364
    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->y:J

    .line 365
    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->z:J

    .line 379
    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->F:J

    .line 380
    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->G:J

    .line 381
    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->H:J

    .line 425
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->g:Lcom/applovin/exoplayer2/e/e/c;

    .line 426
    new-instance v0, Lcom/applovin/exoplayer2/e/e/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/e/e/d$a;-><init>(Lcom/applovin/exoplayer2/e/e/d;Lcom/applovin/exoplayer2/e/e/d$1;)V

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/e/c;->a(Lcom/applovin/exoplayer2/e/e/b;)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 427
    :goto_0
    iput-boolean p2, p0, Lcom/applovin/exoplayer2/e/e/d;->j:Z

    .line 428
    new-instance p2, Lcom/applovin/exoplayer2/e/e/f;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/e/e/f;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->h:Lcom/applovin/exoplayer2/e/e/f;

    .line 429
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->i:Landroid/util/SparseArray;

    .line 430
    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    .line 431
    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->n:Lcom/applovin/exoplayer2/l/y;

    .line 432
    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p2, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->o:Lcom/applovin/exoplayer2/l/y;

    .line 433
    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    sget-object v1, Lcom/applovin/exoplayer2/l/v;->a:[B

    invoke-direct {p2, v1}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->k:Lcom/applovin/exoplayer2/l/y;

    .line 434
    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p2, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->l:Lcom/applovin/exoplayer2/l/y;

    .line 435
    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->p:Lcom/applovin/exoplayer2/l/y;

    .line 436
    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    .line 437
    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    const/16 v0, 0x8

    invoke-direct {p2, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->r:Lcom/applovin/exoplayer2/l/y;

    .line 438
    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->s:Lcom/applovin/exoplayer2/l/y;

    .line 439
    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->t:Lcom/applovin/exoplayer2/l/y;

    new-array p1, p1, [I

    .line 440
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/e/d$b;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "S_TEXT/UTF8"

    .line 1398
    iget-object v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    sget-object p2, Lcom/applovin/exoplayer2/e/e/d;->b:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;[BI)V

    .line 1400
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->e()I

    move-result p1

    return p1

    :cond_0
    const-string v0, "S_TEXT/ASS"

    .line 1401
    iget-object v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1402
    sget-object p2, Lcom/applovin/exoplayer2/e/e/d;->d:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;[BI)V

    .line 1403
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->e()I

    move-result p1

    return p1

    .line 1406
    :cond_1
    iget-object v0, p2, Lcom/applovin/exoplayer2/e/e/d$b;->V:Lcom/applovin/exoplayer2/e/x;

    .line 1407
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->aa:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_11

    .line 1408
    iget-boolean v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->g:Z

    if-eqz v1, :cond_e

    .line 1411
    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->U:I

    const v6, -0x40000001

    and-int/2addr v1, v6

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->U:I

    .line 1412
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->ab:Z

    const/16 v6, 0x80

    if-nez v1, :cond_3

    .line 1413
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, v4}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    .line 1414
    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    .line 1415
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v1

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_2

    .line 1419
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v1

    aget-byte v1, v1, v5

    iput-byte v1, p0, Lcom/applovin/exoplayer2/e/e/d;->ae:B

    .line 1420
    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/e/d;->ab:Z

    goto :goto_0

    :cond_2
    const-string p1, "Extension bit is set in signal byte"

    const/4 p2, 0x0

    .line 1416
    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    .line 1422
    :cond_3
    :goto_0
    iget-byte v1, p0, Lcom/applovin/exoplayer2/e/e/d;->ae:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_4

    move v7, v4

    goto :goto_1

    :cond_4
    move v7, v5

    :goto_1
    if-eqz v7, :cond_f

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    move v1, v5

    .line 1425
    :goto_2
    iget v7, p0, Lcom/applovin/exoplayer2/e/e/d;->U:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lcom/applovin/exoplayer2/e/e/d;->U:I

    .line 1426
    iget-boolean v7, p0, Lcom/applovin/exoplayer2/e/e/d;->af:Z

    if-nez v7, :cond_7

    .line 1427
    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->r:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v7

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    .line 1428
    iget v7, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    .line 1429
    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/e/d;->af:Z

    .line 1431
    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v7

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v6, v5

    :goto_3
    or-int/2addr v6, v8

    int-to-byte v6, v6

    .line 1432
    aput-byte v6, v7, v5

    .line 1433
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 1434
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, v6, v4, v4}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    .line 1435
    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    .line 1437
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->r:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 1438
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->r:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, v6, v8, v4}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    .line 1442
    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    add-int/2addr v6, v8

    iput v6, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    :cond_7
    if-eqz v1, :cond_f

    .line 1445
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->ac:Z

    if-nez v1, :cond_8

    .line 1446
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, v4}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    .line 1447
    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    .line 1448
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1, v5}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 1449
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->h()I

    move-result v1

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->ad:I

    .line 1450
    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/e/d;->ac:Z

    .line 1452
    :cond_8
    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->ad:I

    mul-int/2addr v1, v2

    .line 1453
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v1}, Lcom/applovin/exoplayer2/l/y;->a(I)V

    .line 1454
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v6

    invoke-interface {p1, v6, v5, v1}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    .line 1455
    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    .line 1456
    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->ad:I

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    .line 1458
    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->u:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_9

    .line 1459
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_a

    .line 1460
    :cond_9
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->u:Ljava/nio/ByteBuffer;

    .line 1462
    :cond_a
    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1463
    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v1, v5

    move v7, v1

    .line 1471
    :goto_4
    iget v8, p0, Lcom/applovin/exoplayer2/e/e/d;->ad:I

    if-ge v1, v8, :cond_c

    .line 1473
    iget-object v8, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v8}, Lcom/applovin/exoplayer2/l/y;->w()I

    move-result v8

    .line 1474
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_b

    .line 1475
    iget-object v9, p0, Lcom/applovin/exoplayer2/e/e/d;->u:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 1478
    :cond_b
    iget-object v9, p0, Lcom/applovin/exoplayer2/e/e/d;->u:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_4

    .line 1481
    :cond_c
    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    .line 1482
    rem-int/2addr v8, v3

    if-ne v8, v4, :cond_d

    .line 1483
    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 1485
    :cond_d
    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->u:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1486
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1488
    :goto_6
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->s:Lcom/applovin/exoplayer2/l/y;

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lcom/applovin/exoplayer2/l/y;->a([BI)V

    .line 1489
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->s:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, v1, v6, v4}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    .line 1493
    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    goto :goto_7

    .line 1496
    :cond_e
    iget-object v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->h:[B

    if-eqz v1, :cond_f

    .line 1498
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->p:Lcom/applovin/exoplayer2/l/y;

    iget-object v6, p2, Lcom/applovin/exoplayer2/e/e/d$b;->h:[B

    iget-object v7, p2, Lcom/applovin/exoplayer2/e/e/d$b;->h:[B

    array-length v7, v7

    invoke-virtual {v1, v6, v7}, Lcom/applovin/exoplayer2/l/y;->a([BI)V

    .line 1501
    :cond_f
    :goto_7
    iget v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->f:I

    if-lez v1, :cond_10

    .line 1502
    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->U:I

    const/high16 v6, 0x10000000

    or-int/2addr v1, v6

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->U:I

    .line 1503
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->t:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1, v5}, Lcom/applovin/exoplayer2/l/y;->a(I)V

    .line 1506
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/y;->a(I)V

    .line 1507
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 1508
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    .line 1509
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 1510
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v1

    and-int/lit16 v6, p3, 0xff

    int-to-byte v6, v6

    const/4 v7, 0x3

    aput-byte v6, v1, v7

    .line 1511
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    .line 1512
    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    .line 1515
    :cond_10
    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/e/d;->aa:Z

    .line 1517
    :cond_11
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->p:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v1

    add-int/2addr p3, v1

    const-string v1, "V_MPEG4/ISO/AVC"

    .line 1519
    iget-object v6, p2, Lcom/applovin/exoplayer2/e/e/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "V_MPEGH/ISO/HEVC"

    iget-object v6, p2, Lcom/applovin/exoplayer2/e/e/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_a

    .line 1554
    :cond_12
    iget-object v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->S:Lcom/applovin/exoplayer2/e/e/d$c;

    if-eqz v1, :cond_14

    .line 1555
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->p:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_8

    :cond_13
    move v4, v5

    :goto_8
    invoke-static {v4}, Lcom/applovin/exoplayer2/l/a;->b(Z)V

    .line 1556
    iget-object v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->S:Lcom/applovin/exoplayer2/e/e/d$c;

    invoke-virtual {v1, p1}, Lcom/applovin/exoplayer2/e/e/d$c;->a(Lcom/applovin/exoplayer2/e/i;)V

    .line 1558
    :cond_14
    :goto_9
    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    if-ge v1, p3, :cond_17

    sub-int v1, p3, v1

    .line 1559
    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/x;I)I

    move-result v1

    .line 1560
    iget v3, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    .line 1561
    iget v3, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    goto :goto_9

    .line 1524
    :cond_15
    :goto_a
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->l:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v1

    .line 1525
    aput-byte v5, v1, v5

    .line 1526
    aput-byte v5, v1, v4

    .line 1527
    aput-byte v5, v1, v3

    .line 1528
    iget v3, p2, Lcom/applovin/exoplayer2/e/e/d$b;->W:I

    .line 1529
    iget v4, p2, Lcom/applovin/exoplayer2/e/e/d$b;->W:I

    rsub-int/lit8 v4, v4, 0x4

    .line 1533
    :goto_b
    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    if-ge v6, p3, :cond_17

    .line 1534
    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->Z:I

    if-nez v6, :cond_16

    .line 1536
    invoke-direct {p0, p1, v1, v4, v3}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;[BII)V

    .line 1538
    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    .line 1539
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->l:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 1540
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->l:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->w()I

    move-result v6

    iput v6, p0, Lcom/applovin/exoplayer2/e/e/d;->Z:I

    .line 1542
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 1543
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, v6, v2}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;I)V

    .line 1544
    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    goto :goto_b

    .line 1547
    :cond_16
    invoke-direct {p0, p1, v0, v6}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/x;I)I

    move-result v6

    .line 1548
    iget v7, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    .line 1549
    iget v7, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    .line 1550
    iget v7, p0, Lcom/applovin/exoplayer2/e/e/d;->Z:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/applovin/exoplayer2/e/e/d;->Z:I

    goto :goto_b

    :cond_17
    const-string p1, "A_VORBIS"

    .line 1565
    iget-object p2, p2, Lcom/applovin/exoplayer2/e/e/d$b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1574
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->n:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, v5}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 1575
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->n:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, p1, v2}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;I)V

    .line 1576
    iget p1, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    .line 1579
    :cond_18
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->e()I

    move-result p1

    return p1
.end method

.method private a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/x;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1698
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->p:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 1700
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1701
    iget-object p3, p0, Lcom/applovin/exoplayer2/e/e/d;->p:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {p2, p3, p1}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1703
    invoke-interface {p2, p1, p3, v0}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/k/g;IZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method private a(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    .line 1781
    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->x:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 1785
    invoke-static/range {v0 .. v5}, Lcom/applovin/exoplayer2/l/ai;->d(JJJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p2, 0x0

    .line 1782
    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1
.end method

.method private a(Lcom/applovin/exoplayer2/l/r;Lcom/applovin/exoplayer2/l/r;)Lcom/applovin/exoplayer2/e/v;
    .locals 11

    .line 1716
    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->w:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->z:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1719
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/r;->a()I

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 1721
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/r;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/r;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 1725
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/r;->a()I

    move-result v0

    .line 1726
    new-array v1, v0, [I

    .line 1727
    new-array v2, v0, [J

    .line 1728
    new-array v3, v0, [J

    .line 1729
    new-array v4, v0, [J

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_1

    .line 1731
    invoke-virtual {p1, v6}, Lcom/applovin/exoplayer2/l/r;->a(I)J

    move-result-wide v7

    aput-wide v7, v4, v6

    .line 1732
    iget-wide v7, p0, Lcom/applovin/exoplayer2/e/e/d;->w:J

    invoke-virtual {p2, v6}, Lcom/applovin/exoplayer2/l/r;->a(I)J

    move-result-wide v9

    add-long/2addr v7, v9

    aput-wide v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v5, p1, :cond_2

    add-int/lit8 p1, v5, 0x1

    .line 1735
    aget-wide v6, v2, p1

    aget-wide v8, v2, v5

    sub-long/2addr v6, v8

    long-to-int p2, v6

    aput p2, v1, v5

    .line 1736
    aget-wide v6, v4, p1

    aget-wide v8, v4, v5

    sub-long/2addr v6, v8

    aput-wide v6, v3, v5

    move v5, p1

    goto :goto_1

    .line 1738
    :cond_2
    iget-wide v5, p0, Lcom/applovin/exoplayer2/e/e/d;->w:J

    iget-wide v7, p0, Lcom/applovin/exoplayer2/e/e/d;->v:J

    add-long/2addr v5, v7

    aget-wide v7, v2, p1

    sub-long/2addr v5, v7

    long-to-int p2, v5

    aput p2, v1, p1

    .line 1740
    iget-wide v5, p0, Lcom/applovin/exoplayer2/e/e/d;->z:J

    aget-wide v7, v4, p1

    sub-long/2addr v5, v7

    aput-wide v5, v3, p1

    const-wide/16 v7, 0x0

    cmp-long p2, v5, v7

    if-gtz p2, :cond_3

    .line 1744
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Discarding last cue point with unexpected duration: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MatroskaExtractor"

    invoke-static {v0, p2}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 1746
    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 1747
    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 1748
    invoke-static {v4, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 1751
    :cond_3
    new-instance p1, Lcom/applovin/exoplayer2/e/c;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/applovin/exoplayer2/e/c;-><init>([I[J[J[J)V

    return-object p1

    .line 1723
    :cond_4
    :goto_2
    new-instance p1, Lcom/applovin/exoplayer2/e/v$b;

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->z:J

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/e/v$b;-><init>(J)V

    return-object p1
.end method

.method private a(Lcom/applovin/exoplayer2/e/e/d$b;JIII)V
    .locals 9

    .line 1329
    iget-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->S:Lcom/applovin/exoplayer2/e/e/d$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1330
    iget-object v2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->S:Lcom/applovin/exoplayer2/e/e/d$c;

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/applovin/exoplayer2/e/e/d$c;->a(Lcom/applovin/exoplayer2/e/e/d$b;JIII)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "S_TEXT/UTF8"

    .line 1332
    iget-object v2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/ASS"

    iget-object v2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1333
    :cond_1
    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d;->Q:I

    const-string v2, "MatroskaExtractor"

    if-le v0, v1, :cond_2

    const-string v0, "Skipping subtitle sample in laced block."

    .line 1334
    invoke-static {v2, v0}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1335
    :cond_2
    iget-wide v3, p0, Lcom/applovin/exoplayer2/e/e/d;->O:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    const-string v0, "Skipping subtitle sample with no duration."

    .line 1336
    invoke-static {v2, v0}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1338
    :cond_3
    iget-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->O:J

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/applovin/exoplayer2/e/e/d;->a(Ljava/lang/String;J[B)V

    .line 1342
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->c()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 1343
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v2

    aget-byte v2, v2, v0

    if-nez v2, :cond_4

    .line 1344
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2, v0}, Lcom/applovin/exoplayer2/l/y;->c(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1350
    :cond_5
    :goto_1
    iget-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->V:Lcom/applovin/exoplayer2/e/x;

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;I)V

    .line 1351
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v0

    add-int/2addr p5, v0

    :cond_6
    :goto_2
    const/high16 v0, 0x10000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_8

    .line 1356
    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d;->Q:I

    if-le v0, v1, :cond_7

    const v0, -0x10000001

    and-int/2addr p4, v0

    goto :goto_3

    .line 1362
    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->t:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v0

    .line 1363
    iget-object v2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->V:Lcom/applovin/exoplayer2/e/x;

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/e/d;->t:Lcom/applovin/exoplayer2/l/y;

    const/4 v4, 0x2

    invoke-interface {v2, v3, v0, v4}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    add-int/2addr p5, v0

    :cond_8
    :goto_3
    move v5, p4

    move v6, p5

    .line 1368
    iget-object v2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->V:Lcom/applovin/exoplayer2/e/x;

    iget-object v8, p1, Lcom/applovin/exoplayer2/e/e/d$b;->i:Lcom/applovin/exoplayer2/e/x$a;

    move-wide v3, p2

    move v7, p6

    invoke-interface/range {v2 .. v8}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    .line 1370
    :goto_4
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->L:Z

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/e/i;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1378
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->e()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 1382
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->e()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->b(I)V

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    .line 1385
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/l/y;->c(I)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/e/i;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1608
    array-length v0, p2

    add-int/2addr v0, p3

    .line 1609
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->e()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    .line 1612
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    add-int v3, v0, p3

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/l/y;->a([B)V

    goto :goto_0

    .line 1614
    :cond_0
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v1

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1616
    :goto_0
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v1

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    .line 1617
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 1618
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->q:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/y;->c(I)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/e/i;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1684
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->p:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->a()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int/2addr p4, v0

    .line 1685
    invoke-interface {p1, p2, v1, p4}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    if-lez v0, :cond_0

    .line 1687
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->p:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p2, p3, v0}, Lcom/applovin/exoplayer2/l/y;->a([BII)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;J[B)V
    .locals 2

    .line 1638
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "S_TEXT/ASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "%02d:%02d:%02d,%03d"

    const-wide/16 v0, 0x3e8

    .line 1641
    invoke-static {p1, p2, p0, v0, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x13

    goto :goto_0

    .line 1652
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "%01d:%02d:%02d:%02d"

    const-wide/16 v0, 0x2710

    .line 1647
    invoke-static {p1, p2, p0, v0, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x15

    :goto_0
    const/4 p2, 0x0

    .line 1654
    array-length v0, p0

    invoke-static {p0, p2, p3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/e/u;J)Z
    .locals 5

    .line 1764
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->E:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1765
    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/e/d;->G:J

    .line 1766
    iget-wide p2, p0, Lcom/applovin/exoplayer2/e/e/d;->F:J

    iput-wide p2, p1, Lcom/applovin/exoplayer2/e/u;->a:J

    .line 1767
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/e/e/d;->E:Z

    return v1

    .line 1772
    :cond_0
    iget-boolean p2, p0, Lcom/applovin/exoplayer2/e/e/d;->B:Z

    if-eqz p2, :cond_1

    iget-wide p2, p0, Lcom/applovin/exoplayer2/e/e/d;->G:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    .line 1773
    iput-wide p2, p1, Lcom/applovin/exoplayer2/e/u;->a:J

    .line 1774
    iput-wide v3, p0, Lcom/applovin/exoplayer2/e/e/d;->G:J

    return v1

    :cond_1
    return v2
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4

    .line 1789
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "A_OPUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "A_FLAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "A_EAC3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "V_MPEG2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "S_TEXT/ASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "A_PCM/INT/LIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "A_PCM/INT/BIG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "A_PCM/FLOAT/IEEE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "A_DTS/EXPRESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "V_THEORA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "S_HDMV/PGS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "V_VP9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "V_VP8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "V_AV1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "A_DTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "A_AC3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "A_AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "A_DTS/LOSSLESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "S_VOBSUB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "S_DVBSUB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "V_MS/VFW/FOURCC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_19
    const-string v0, "A_MPEG/L3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1a
    const-string v0, "A_MPEG/L2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1b
    const-string v0, "A_VORBIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1c
    const-string v0, "A_TRUEHD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1d
    const-string v0, "A_MS/ACM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1e
    const-string v0, "V_MPEG4/ISO/SP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_0

    :cond_1e
    move v3, v1

    goto :goto_0

    :sswitch_1f
    const-string v0, "V_MPEG4/ISO/AP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_0

    :cond_1f
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1f
        -0x7ce7f3b0 -> :sswitch_1e
        -0x76567dc0 -> :sswitch_1d
        -0x6a615338 -> :sswitch_1c
        -0x672350af -> :sswitch_1b
        -0x585f4fce -> :sswitch_1a
        -0x585f4fcd -> :sswitch_19
        -0x51dc40b2 -> :sswitch_18
        -0x37a9c464 -> :sswitch_17
        -0x2016c535 -> :sswitch_16
        -0x2016c4e5 -> :sswitch_15
        -0x19552dbd -> :sswitch_14
        -0x1538b2ba -> :sswitch_13
        0x3c02325 -> :sswitch_12
        0x3c02353 -> :sswitch_11
        0x3c030c5 -> :sswitch_10
        0x4e81333 -> :sswitch_f
        0x4e86155 -> :sswitch_e
        0x4e86156 -> :sswitch_d
        0x5e8da3e -> :sswitch_c
        0x1a8350d6 -> :sswitch_b
        0x2056f406 -> :sswitch_a
        0x25e26ee2 -> :sswitch_9
        0x2b45174d -> :sswitch_8
        0x2b453ce4 -> :sswitch_7
        0x2c0618eb -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a()[B
    .locals 1

    .line 73
    sget-object v0, Lcom/applovin/exoplayer2/e/e/d;->c:[B

    return-object v0
.end method

.method private static a(JLjava/lang/String;J)[B
    .locals 9

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1663
    :goto_0
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->a(Z)V

    const-wide v3, 0xd693a400L

    .line 1665
    div-long v3, p0, v3

    long-to-int v0, v3

    mul-int/lit16 v3, v0, 0xe10

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    sub-long/2addr p0, v3

    const-wide/32 v3, 0x3938700

    .line 1667
    div-long v3, p0, v3

    long-to-int v3, v3

    mul-int/lit8 v4, v3, 0x3c

    int-to-long v7, v4

    mul-long/2addr v7, v5

    sub-long/2addr p0, v7

    .line 1669
    div-long v7, p0, v5

    long-to-int v4, v7

    int-to-long v7, v4

    mul-long/2addr v7, v5

    sub-long/2addr p0, v7

    .line 1671
    div-long/2addr p0, p3

    long-to-int p0, p0

    .line 1672
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    .line 1674
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    const/4 p4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, p4

    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1673
    invoke-static {p0}, Lcom/applovin/exoplayer2/l/ai;->c(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 1834
    new-array p0, p1, [I

    return-object p0

    .line 1835
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 1839
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .line 73
    sget-object v0, Lcom/applovin/exoplayer2/e/e/d;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d()Ljava/util/UUID;
    .locals 1

    .line 73
    sget-object v0, Lcom/applovin/exoplayer2/e/e/d;->e:Ljava/util/UUID;

    return-object v0
.end method

.method private d(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    .line 1309
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    if-eqz v0, :cond_0

    return-void

    .line 1310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Element "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be in a TrackEntry"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1
.end method

.method private e()I
    .locals 1

    .line 1587
    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    .line 1588
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->f()V

    return v0
.end method

.method private e(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    .line 1316
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->I:Lcom/applovin/exoplayer2/l/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->J:Lcom/applovin/exoplayer2/l/r;

    if-eqz v0, :cond_0

    return-void

    .line 1317
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Element "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be in a Cues"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1
.end method

.method private f(I)Lcom/applovin/exoplayer2/e/e/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    .line 1323
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->d(I)V

    .line 1324
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    return-object p1
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    .line 1594
    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d;->X:I

    .line 1595
    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d;->Y:I

    .line 1596
    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d;->Z:I

    .line 1597
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->aa:Z

    .line 1598
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->ab:Z

    .line 1599
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->ac:Z

    .line 1600
    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d;->ad:I

    .line 1601
    iput-byte v0, p0, Lcom/applovin/exoplayer2/e/e/d;->ae:B

    .line 1602
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->af:Z

    .line 1603
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->p:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/l/y;->a(I)V

    return-void
.end method

.method private g()V
    .locals 1

    .line 1844
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->ag:Lcom/applovin/exoplayer2/e/j;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic h()[Lcom/applovin/exoplayer2/e/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/exoplayer2/e/h;

    .line 76
    new-instance v1, Lcom/applovin/exoplayer2/e/e/d;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/e/e/d;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method protected a(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    const/4 p1, 0x5

    return p1

    :sswitch_1
    const/4 p1, 0x4

    return p1

    :sswitch_2
    const/4 p1, 0x1

    return p1

    :sswitch_3
    const/4 p1, 0x3

    return p1

    :sswitch_4
    const/4 p1, 0x2

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->L:Z

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    if-eqz v2, :cond_1

    .line 475
    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/e/d;->L:Z

    if-nez v3, :cond_1

    .line 476
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->g:Lcom/applovin/exoplayer2/e/e/c;

    invoke-interface {v2, p1}, Lcom/applovin/exoplayer2/e/e/c;->a(Lcom/applovin/exoplayer2/e/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->c()J

    move-result-wide v3

    invoke-direct {p0, p2, v3, v4}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/u;J)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    if-nez v2, :cond_3

    .line 482
    :goto_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->i:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 483
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->i:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/e/d$b;

    .line 484
    invoke-static {p1}, Lcom/applovin/exoplayer2/e/e/d$b;->a(Lcom/applovin/exoplayer2/e/e/d$b;)V

    .line 485
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/e/d$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    return v0
.end method

.method protected a(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 1052
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->t:F

    goto/16 :goto_0

    .line 1049
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->s:F

    goto :goto_0

    .line 1046
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->r:F

    goto :goto_0

    .line 1043
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->L:F

    goto :goto_0

    .line 1040
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->K:F

    goto :goto_0

    .line 1037
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->J:F

    goto :goto_0

    .line 1034
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->I:F

    goto :goto_0

    .line 1031
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->H:F

    goto :goto_0

    .line 1028
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->G:F

    goto :goto_0

    .line 1025
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->F:F

    goto :goto_0

    .line 1022
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->E:F

    goto :goto_0

    .line 1019
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->D:F

    goto :goto_0

    .line 1016
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->C:F

    goto :goto_0

    :cond_0
    double-to-long p1, p2

    .line 1010
    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/e/d;->y:J

    goto :goto_0

    .line 1013
    :cond_1
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->P:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(IILcom/applovin/exoplayer2/e/i;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v8, p3

    const/16 v2, 0xa1

    const/16 v3, 0xa3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_8

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_6

    const/16 v2, 0x41ed

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4255

    if-eq v0, v2, :cond_4

    const/16 v2, 0x47e2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x53ab

    if-eq v0, v2, :cond_2

    const/16 v2, 0x63a2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7672

    if-ne v0, v2, :cond_0

    .line 1111
    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/e/e/d;->d(I)V

    .line 1112
    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->u:[B

    .line 1113
    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/e/d$b;->u:[B

    invoke-interface {v8, v0, v9, v1}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    goto/16 :goto_d

    .line 1278
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    .line 1106
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/e/e/d;->d(I)V

    .line 1107
    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->j:[B

    .line 1108
    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/e/d$b;->j:[B

    invoke-interface {v8, v0, v9, v1}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    goto/16 :goto_d

    .line 1097
    :cond_2
    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->o:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v0

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 1098
    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->o:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v0

    rsub-int/lit8 v2, v1, 0x4

    invoke-interface {v8, v0, v2, v1}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    .line 1099
    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->o:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0, v9}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 1100
    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->o:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->o()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v7, Lcom/applovin/exoplayer2/e/e/d;->C:I

    goto/16 :goto_d

    .line 1122
    :cond_3
    new-array v2, v1, [B

    .line 1123
    invoke-interface {v8, v2, v9, v1}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    .line 1124
    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object v0

    new-instance v1, Lcom/applovin/exoplayer2/e/x$a;

    invoke-direct {v1, v10, v2, v9, v9}, Lcom/applovin/exoplayer2/e/x$a;-><init>(I[BII)V

    iput-object v1, v0, Lcom/applovin/exoplayer2/e/e/d$b;->i:Lcom/applovin/exoplayer2/e/x$a;

    goto/16 :goto_d

    .line 1116
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/e/e/d;->d(I)V

    .line 1118
    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->h:[B

    .line 1119
    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/e/d$b;->h:[B

    invoke-interface {v8, v0, v9, v1}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    goto/16 :goto_d

    .line 1103
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object v0

    invoke-virtual {v7, v0, v8, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/e/d$b;Lcom/applovin/exoplayer2/e/i;I)V

    goto/16 :goto_d

    .line 1271
    :cond_6
    iget v0, v7, Lcom/applovin/exoplayer2/e/e/d;->M:I

    if-eq v0, v5, :cond_7

    return-void

    .line 1274
    :cond_7
    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->i:Landroid/util/SparseArray;

    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->S:I

    .line 1275
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/e/d$b;

    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->V:I

    .line 1274
    invoke-virtual {v7, v0, v2, v8, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/e/d$b;ILcom/applovin/exoplayer2/e/i;I)V

    goto/16 :goto_d

    .line 1135
    :cond_8
    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->M:I

    const/16 v6, 0x8

    if-nez v2, :cond_9

    .line 1136
    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->h:Lcom/applovin/exoplayer2/e/e/f;

    invoke-virtual {v2, v8, v9, v10, v6}, Lcom/applovin/exoplayer2/e/e/f;->a(Lcom/applovin/exoplayer2/e/i;ZZI)J

    move-result-wide v11

    long-to-int v2, v11

    iput v2, v7, Lcom/applovin/exoplayer2/e/e/d;->S:I

    .line 1137
    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->h:Lcom/applovin/exoplayer2/e/e/f;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/e/e/f;->b()I

    move-result v2

    iput v2, v7, Lcom/applovin/exoplayer2/e/e/d;->T:I

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 1138
    iput-wide v11, v7, Lcom/applovin/exoplayer2/e/e/d;->O:J

    .line 1139
    iput v10, v7, Lcom/applovin/exoplayer2/e/e/d;->M:I

    .line 1140
    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2, v9}, Lcom/applovin/exoplayer2/l/y;->a(I)V

    .line 1143
    :cond_9
    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->i:Landroid/util/SparseArray;

    iget v11, v7, Lcom/applovin/exoplayer2/e/e/d;->S:I

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/applovin/exoplayer2/e/e/d$b;

    if-nez v11, :cond_a

    .line 1147
    iget v0, v7, Lcom/applovin/exoplayer2/e/e/d;->T:I

    sub-int v0, v1, v0

    invoke-interface {v8, v0}, Lcom/applovin/exoplayer2/e/i;->b(I)V

    .line 1148
    iput v9, v7, Lcom/applovin/exoplayer2/e/e/d;->M:I

    return-void

    .line 1152
    :cond_a
    invoke-static {v11}, Lcom/applovin/exoplayer2/e/e/d$b;->a(Lcom/applovin/exoplayer2/e/e/d$b;)V

    .line 1154
    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->M:I

    if-ne v2, v10, :cond_1b

    const/4 v2, 0x3

    .line 1156
    invoke-direct {v7, v8, v2}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;I)V

    .line 1157
    iget-object v12, v7, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v12}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v12

    aget-byte v12, v12, v5

    and-int/lit8 v12, v12, 0x6

    shr-int/2addr v12, v10

    const/16 v13, 0xff

    if-nez v12, :cond_b

    .line 1159
    iput v10, v7, Lcom/applovin/exoplayer2/e/e/d;->Q:I

    .line 1160
    iget-object v4, v7, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    invoke-static {v4, v10}, Lcom/applovin/exoplayer2/e/e/d;->a([II)[I

    move-result-object v4

    iput-object v4, v7, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    .line 1161
    iget v12, v7, Lcom/applovin/exoplayer2/e/e/d;->T:I

    sub-int/2addr v1, v12

    sub-int/2addr v1, v2

    aput v1, v4, v9

    :goto_0
    move-object/from16 v18, v11

    goto/16 :goto_7

    :cond_b
    const/4 v14, 0x4

    .line 1164
    invoke-direct {v7, v8, v14}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;I)V

    .line 1165
    iget-object v15, v7, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v15}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v15

    aget-byte v15, v15, v2

    and-int/2addr v15, v13

    add-int/2addr v15, v10

    iput v15, v7, Lcom/applovin/exoplayer2/e/e/d;->Q:I

    .line 1166
    iget-object v3, v7, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    invoke-static {v3, v15}, Lcom/applovin/exoplayer2/e/e/d;->a([II)[I

    move-result-object v3

    iput-object v3, v7, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    if-ne v12, v5, :cond_c

    .line 1168
    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->T:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v14

    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->Q:I

    div-int/2addr v1, v2

    .line 1170
    invoke-static {v3, v9, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0

    :cond_c
    if-ne v12, v10, :cond_f

    move v2, v9

    move v3, v2

    .line 1174
    :goto_1
    iget v4, v7, Lcom/applovin/exoplayer2/e/e/d;->Q:I

    add-int/lit8 v12, v4, -0x1

    if-ge v2, v12, :cond_e

    .line 1175
    iget-object v4, v7, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    aput v9, v4, v2

    :cond_d
    add-int/2addr v14, v10

    .line 1178
    invoke-direct {v7, v8, v14}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;I)V

    .line 1179
    iget-object v4, v7, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v4

    add-int/lit8 v12, v14, -0x1

    aget-byte v4, v4, v12

    and-int/2addr v4, v13

    .line 1180
    iget-object v12, v7, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    aget v15, v12, v2

    add-int/2addr v15, v4

    aput v15, v12, v2

    if-eq v4, v13, :cond_d

    add-int/2addr v3, v15

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1184
    :cond_e
    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    sub-int/2addr v4, v10

    iget v12, v7, Lcom/applovin/exoplayer2/e/e/d;->T:I

    sub-int/2addr v1, v12

    sub-int/2addr v1, v14

    sub-int/2addr v1, v3

    aput v1, v2, v4

    goto :goto_0

    :cond_f
    if-ne v12, v2, :cond_1a

    move v2, v9

    move v3, v2

    .line 1189
    :goto_2
    iget v12, v7, Lcom/applovin/exoplayer2/e/e/d;->Q:I

    add-int/lit8 v15, v12, -0x1

    if-ge v2, v15, :cond_17

    .line 1190
    iget-object v12, v7, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    aput v9, v12, v2

    add-int/lit8 v14, v14, 0x1

    .line 1191
    invoke-direct {v7, v8, v14}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;I)V

    .line 1192
    iget-object v12, v7, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v12}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v12

    add-int/lit8 v15, v14, -0x1

    aget-byte v12, v12, v15

    if-eqz v12, :cond_16

    move v12, v9

    :goto_3
    if-ge v12, v6, :cond_13

    rsub-int/lit8 v16, v12, 0x7

    shl-int v5, v10, v16

    .line 1199
    iget-object v9, v7, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v9}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v9

    aget-byte v9, v9, v15

    and-int/2addr v9, v5

    if-eqz v9, :cond_12

    add-int/2addr v14, v12

    .line 1202
    invoke-direct {v7, v8, v14}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;I)V

    .line 1203
    iget-object v9, v7, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v9}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v9

    add-int/lit8 v17, v15, 0x1

    aget-byte v9, v9, v15

    and-int/2addr v9, v13

    not-int v5, v5

    and-int/2addr v5, v9

    move-object/from16 v18, v11

    int-to-long v10, v5

    move/from16 v5, v17

    :goto_4
    if-ge v5, v14, :cond_10

    shl-long/2addr v10, v6

    .line 1206
    iget-object v15, v7, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v15}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v15

    add-int/lit8 v17, v5, 0x1

    aget-byte v5, v15, v5

    and-int/2addr v5, v13

    move/from16 v19, v14

    int-to-long v13, v5

    or-long/2addr v10, v13

    move/from16 v5, v17

    move/from16 v14, v19

    const/16 v13, 0xff

    goto :goto_4

    :cond_10
    move/from16 v19, v14

    if-lez v2, :cond_11

    mul-int/lit8 v12, v12, 0x7

    add-int/lit8 v12, v12, 0x6

    const-wide/16 v13, 0x1

    shl-long v20, v13, v12

    sub-long v20, v20, v13

    sub-long v10, v10, v20

    :cond_11
    move/from16 v14, v19

    goto :goto_5

    :cond_12
    move-object/from16 v18, v11

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v13, 0xff

    goto :goto_3

    :cond_13
    move-object/from16 v18, v11

    const-wide/16 v10, 0x0

    :goto_5
    const-wide/32 v12, -0x80000000

    cmp-long v5, v10, v12

    if-ltz v5, :cond_15

    const-wide/32 v12, 0x7fffffff

    cmp-long v5, v10, v12

    if-gtz v5, :cond_15

    long-to-int v5, v10

    .line 1220
    iget-object v10, v7, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    if-nez v2, :cond_14

    goto :goto_6

    :cond_14
    add-int/lit8 v11, v2, -0x1

    .line 1223
    aget v11, v10, v11

    add-int/2addr v5, v11

    :goto_6
    aput v5, v10, v2

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v18

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v13, 0xff

    goto/16 :goto_2

    :cond_15
    const-string v0, "EBML lacing sample size out of range."

    .line 1216
    invoke-static {v0, v4}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    :cond_16
    const-string v0, "No valid varint length mask found"

    .line 1193
    invoke-static {v0, v4}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    :cond_17
    move-object/from16 v18, v11

    .line 1226
    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    const/4 v4, 0x1

    sub-int/2addr v12, v4

    iget v4, v7, Lcom/applovin/exoplayer2/e/e/d;->T:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v14

    sub-int/2addr v1, v3

    aput v1, v2, v12

    .line 1235
    :goto_7
    iget-object v1, v7, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    shl-int/2addr v1, v6

    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 1236
    iget-wide v2, v7, Lcom/applovin/exoplayer2/e/e/d;->H:J

    int-to-long v4, v1

    invoke-direct {v7, v4, v5}, Lcom/applovin/exoplayer2/e/e/d;->a(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v7, Lcom/applovin/exoplayer2/e/e/d;->N:J

    move-object/from16 v10, v18

    .line 1237
    iget v1, v10, Lcom/applovin/exoplayer2/e/e/d$b;->d:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_19

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_18

    iget-object v1, v7, Lcom/applovin/exoplayer2/e/e/d;->m:Lcom/applovin/exoplayer2/l/y;

    .line 1239
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v1

    aget-byte v1, v1, v2

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_18

    goto :goto_8

    :cond_18
    const/4 v1, 0x0

    goto :goto_9

    :cond_19
    :goto_8
    const/4 v1, 0x1

    .line 1240
    :goto_9
    iput v1, v7, Lcom/applovin/exoplayer2/e/e/d;->U:I

    const/4 v1, 0x2

    .line 1241
    iput v1, v7, Lcom/applovin/exoplayer2/e/e/d;->M:I

    const/4 v1, 0x0

    .line 1242
    iput v1, v7, Lcom/applovin/exoplayer2/e/e/d;->P:I

    const/16 v1, 0xa3

    goto :goto_a

    .line 1230
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected lacing value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    :cond_1b
    move-object v10, v11

    move v1, v3

    :goto_a
    if-ne v0, v1, :cond_1d

    .line 1248
    :goto_b
    iget v0, v7, Lcom/applovin/exoplayer2/e/e/d;->P:I

    iget v1, v7, Lcom/applovin/exoplayer2/e/e/d;->Q:I

    if-ge v0, v1, :cond_1c

    .line 1249
    iget-object v1, v7, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    aget v0, v1, v0

    invoke-direct {v7, v8, v10, v0}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/e/d$b;I)I

    move-result v5

    .line 1250
    iget-wide v0, v7, Lcom/applovin/exoplayer2/e/e/d;->N:J

    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->P:I

    iget v3, v10, Lcom/applovin/exoplayer2/e/e/d$b;->e:I

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 1252
    iget v4, v7, Lcom/applovin/exoplayer2/e/e/d;->U:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/e/d$b;JIII)V

    .line 1253
    iget v0, v7, Lcom/applovin/exoplayer2/e/e/d;->P:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcom/applovin/exoplayer2/e/e/d;->P:I

    goto :goto_b

    :cond_1c
    const/4 v0, 0x0

    .line 1255
    iput v0, v7, Lcom/applovin/exoplayer2/e/e/d;->M:I

    goto :goto_d

    .line 1262
    :cond_1d
    :goto_c
    iget v0, v7, Lcom/applovin/exoplayer2/e/e/d;->P:I

    iget v1, v7, Lcom/applovin/exoplayer2/e/e/d;->Q:I

    if-ge v0, v1, :cond_1e

    .line 1263
    iget-object v1, v7, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    aget v2, v1, v0

    .line 1264
    invoke-direct {v7, v8, v10, v2}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/e/d$b;I)I

    move-result v2

    aput v2, v1, v0

    .line 1265
    iget v0, v7, Lcom/applovin/exoplayer2/e/e/d;->P:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcom/applovin/exoplayer2/e/e/d;->P:I

    goto :goto_c

    :cond_1e
    :goto_d
    return-void
.end method

.method protected a(IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/16 v0, 0x5031

    const/4 v1, 0x0

    const-string v2, " not supported"

    if-eq p1, v0, :cond_13

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 972
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->B:I

    goto/16 :goto_0

    .line 969
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->A:I

    goto/16 :goto_0

    .line 941
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->d(I)V

    .line 942
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iput-boolean v7, p1, Lcom/applovin/exoplayer2/e/e/d$b;->w:Z

    long-to-int p1, p2

    .line 943
    invoke-static {p1}, Lcom/applovin/exoplayer2/m/b;->a(I)I

    move-result p1

    if-eq p1, v0, :cond_14

    .line 945
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iput p1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->x:I

    goto/16 :goto_0

    .line 949
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->d(I)V

    long-to-int p1, p2

    .line 950
    invoke-static {p1}, Lcom/applovin/exoplayer2/m/b;->b(I)I

    move-result p1

    if-eq p1, v0, :cond_14

    .line 952
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iput p1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->y:I

    goto/16 :goto_0

    .line 956
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->d(I)V

    long-to-int p1, p2

    if-eq p1, v7, :cond_1

    if-eq p1, v6, :cond_0

    goto/16 :goto_0

    .line 962
    :cond_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v7, p1, Lcom/applovin/exoplayer2/e/e/d$b;->z:I

    goto/16 :goto_0

    .line 959
    :cond_1
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v6, p1, Lcom/applovin/exoplayer2/e/e/d$b;->z:I

    goto/16 :goto_0

    .line 812
    :sswitch_0
    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/e/d;->x:J

    goto/16 :goto_0

    .line 842
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->e:I

    goto/16 :goto_0

    .line 975
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->d(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_5

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_2

    goto/16 :goto_0

    .line 987
    :cond_2
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v5, p1, Lcom/applovin/exoplayer2/e/e/d$b;->q:I

    goto/16 :goto_0

    .line 984
    :cond_3
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v6, p1, Lcom/applovin/exoplayer2/e/e/d$b;->q:I

    goto/16 :goto_0

    .line 981
    :cond_4
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v7, p1, Lcom/applovin/exoplayer2/e/e/d$b;->q:I

    goto/16 :goto_0

    .line 978
    :cond_5
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->q:I

    goto/16 :goto_0

    .line 860
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->O:I

    goto/16 :goto_0

    .line 854
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    iput-wide p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->R:J

    goto/16 :goto_0

    .line 851
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    iput-wide p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->Q:J

    goto/16 :goto_0

    .line 845
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->f:I

    goto/16 :goto_0

    .line 836
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    cmp-long p2, p2, v3

    if-nez p2, :cond_6

    move v0, v7

    :cond_6
    iput-boolean v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->T:Z

    goto/16 :goto_0

    .line 824
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->o:I

    goto/16 :goto_0

    .line 827
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->p:I

    goto/16 :goto_0

    .line 821
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->n:I

    goto/16 :goto_0

    :sswitch_b
    long-to-int p2, p2

    .line 922
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->d(I)V

    if-eqz p2, :cond_a

    if-eq p2, v7, :cond_9

    if-eq p2, v5, :cond_8

    const/16 p1, 0xf

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    .line 934
    :cond_7
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v5, p1, Lcom/applovin/exoplayer2/e/e/d$b;->v:I

    goto/16 :goto_0

    .line 931
    :cond_8
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v7, p1, Lcom/applovin/exoplayer2/e/e/d$b;->v:I

    goto/16 :goto_0

    .line 928
    :cond_9
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v6, p1, Lcom/applovin/exoplayer2/e/e/d$b;->v:I

    goto/16 :goto_0

    .line 925
    :cond_a
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->v:I

    goto/16 :goto_0

    .line 809
    :sswitch_c
    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->w:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/e/d;->D:J

    goto/16 :goto_0

    :sswitch_d
    cmp-long p1, p2, v3

    if-nez p1, :cond_b

    goto/16 :goto_0

    .line 896
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AESSettingsCipherMode "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :sswitch_e
    const-wide/16 v3, 0x5

    cmp-long p1, p2, v3

    if-nez p1, :cond_c

    goto/16 :goto_0

    .line 889
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentEncAlgo "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :sswitch_f
    cmp-long p1, p2, v3

    if-nez p1, :cond_d

    goto/16 :goto_0

    .line 795
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "EBMLReadVersion "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :sswitch_10
    cmp-long p1, p2, v3

    if-ltz p1, :cond_e

    const-wide/16 v3, 0x2

    cmp-long p1, p2, v3

    if-gtz p1, :cond_e

    goto/16 :goto_0

    .line 802
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DocTypeReadVersion "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :sswitch_11
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_f

    goto/16 :goto_0

    .line 882
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentCompAlgo "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    .line 848
    :sswitch_12
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/e/e/d$b;->a(Lcom/applovin/exoplayer2/e/e/d$b;I)I

    goto/16 :goto_0

    .line 863
    :sswitch_13
    iput-boolean v7, p0, Lcom/applovin/exoplayer2/e/e/d;->W:Z

    goto/16 :goto_0

    .line 905
    :sswitch_14
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->K:Z

    if-nez v0, :cond_14

    .line 906
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->e(I)V

    .line 910
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->J:Lcom/applovin/exoplayer2/l/r;

    invoke-virtual {p1, p2, p3}, Lcom/applovin/exoplayer2/l/r;->a(J)V

    .line 911
    iput-boolean v7, p0, Lcom/applovin/exoplayer2/e/e/d;->K:Z

    goto/16 :goto_0

    :sswitch_15
    long-to-int p1, p2

    .line 994
    iput p1, p0, Lcom/applovin/exoplayer2/e/e/d;->V:I

    goto/16 :goto_0

    .line 915
    :sswitch_16
    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/e/e/d;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/e/d;->H:J

    goto/16 :goto_0

    .line 830
    :sswitch_17
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->c:I

    goto :goto_0

    .line 818
    :sswitch_18
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->m:I

    goto :goto_0

    .line 901
    :sswitch_19
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->e(I)V

    .line 902
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->I:Lcom/applovin/exoplayer2/l/r;

    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/e/e/d;->a(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/applovin/exoplayer2/l/r;->a(J)V

    goto :goto_0

    .line 815
    :sswitch_1a
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->l:I

    goto :goto_0

    .line 857
    :sswitch_1b
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->N:I

    goto :goto_0

    .line 918
    :sswitch_1c
    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/e/e/d;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/e/d;->O:J

    goto :goto_0

    .line 833
    :sswitch_1d
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    cmp-long p2, p2, v3

    if-nez p2, :cond_10

    move v0, v7

    :cond_10
    iput-boolean v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->U:Z

    goto :goto_0

    .line 839
    :sswitch_1e
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->d:I

    goto :goto_0

    :cond_11
    cmp-long p1, p2, v3

    if-nez p1, :cond_12

    goto :goto_0

    .line 875
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentEncodingScope "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_13
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_15

    :cond_14
    :goto_0
    return-void

    .line 868
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentEncodingOrder "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1e
        0x88 -> :sswitch_1d
        0x9b -> :sswitch_1c
        0x9f -> :sswitch_1b
        0xb0 -> :sswitch_1a
        0xb3 -> :sswitch_19
        0xba -> :sswitch_18
        0xd7 -> :sswitch_17
        0xe7 -> :sswitch_16
        0xee -> :sswitch_15
        0xf1 -> :sswitch_14
        0xfb -> :sswitch_13
        0x41e7 -> :sswitch_12
        0x4254 -> :sswitch_11
        0x4285 -> :sswitch_10
        0x42f7 -> :sswitch_f
        0x47e1 -> :sswitch_e
        0x47e8 -> :sswitch_d
        0x53ac -> :sswitch_c
        0x53b8 -> :sswitch_b
        0x54b0 -> :sswitch_a
        0x54b2 -> :sswitch_9
        0x54ba -> :sswitch_8
        0x55aa -> :sswitch_7
        0x55ee -> :sswitch_6
        0x56aa -> :sswitch_5
        0x56bb -> :sswitch_4
        0x6264 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(IJJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    .line 620
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->g()V

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    const/16 v0, 0xae

    const/4 v2, 0x0

    if-eq p1, v0, :cond_a

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4dbb

    const-wide/16 v3, -0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5035

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_6

    const v0, 0x18538067

    if-eq p1, v0, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 643
    :cond_0
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/e/d;->B:Z

    if-nez p1, :cond_c

    .line 645
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/e/d;->j:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/applovin/exoplayer2/e/e/d;->F:J

    cmp-long p1, p1, v3

    if-eqz p1, :cond_1

    .line 647
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->E:Z

    goto :goto_1

    .line 651
    :cond_1
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->ag:Lcom/applovin/exoplayer2/e/j;

    new-instance p2, Lcom/applovin/exoplayer2/e/v$b;

    iget-wide p3, p0, Lcom/applovin/exoplayer2/e/e/d;->z:J

    invoke-direct {p2, p3, p4}, Lcom/applovin/exoplayer2/e/v$b;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    .line 652
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->B:Z

    goto :goto_1

    .line 636
    :cond_2
    new-instance p1, Lcom/applovin/exoplayer2/l/r;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/r;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->I:Lcom/applovin/exoplayer2/l/r;

    .line 637
    new-instance p1, Lcom/applovin/exoplayer2/l/r;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/r;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->J:Lcom/applovin/exoplayer2/l/r;

    goto :goto_1

    .line 623
    :cond_3
    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->w:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_5

    cmp-long p1, v0, p2

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Multiple Segment elements not supported"

    .line 625
    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    .line 628
    :cond_5
    :goto_0
    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/e/d;->w:J

    .line 629
    iput-wide p4, p0, Lcom/applovin/exoplayer2/e/e/d;->v:J

    goto :goto_1

    .line 669
    :cond_6
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    iput-boolean v1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->w:Z

    goto :goto_1

    .line 663
    :cond_7
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    iput-boolean v1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->g:Z

    goto :goto_1

    :cond_8
    const/4 p1, -0x1

    .line 632
    iput p1, p0, Lcom/applovin/exoplayer2/e/e/d;->C:I

    .line 633
    iput-wide v3, p0, Lcom/applovin/exoplayer2/e/e/d;->D:J

    goto :goto_1

    .line 640
    :cond_9
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->K:Z

    goto :goto_1

    .line 666
    :cond_a
    new-instance p1, Lcom/applovin/exoplayer2/e/e/d$b;

    invoke-direct {p1, v2}, Lcom/applovin/exoplayer2/e/e/d$b;-><init>(Lcom/applovin/exoplayer2/e/e/d$1;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    goto :goto_1

    .line 657
    :cond_b
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->W:Z

    :cond_c
    :goto_1
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1081
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/e/e/d$b;->a(Lcom/applovin/exoplayer2/e/e/d$b;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1075
    :cond_1
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    iput-object p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "webm"

    .line 1069
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 1070
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DocType "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    .line 1078
    :cond_4
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->f(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    iput-object p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->b:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method public a(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 456
    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/e/d;->H:J

    const/4 p1, 0x0

    .line 457
    iput p1, p0, Lcom/applovin/exoplayer2/e/e/d;->M:I

    .line 458
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->g:Lcom/applovin/exoplayer2/e/e/c;

    invoke-interface {p2}, Lcom/applovin/exoplayer2/e/e/c;->a()V

    .line 459
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->h:Lcom/applovin/exoplayer2/e/e/f;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/e/f;->a()V

    .line 460
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->f()V

    .line 461
    :goto_0
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->i:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 462
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->i:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/e/e/d$b;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/e/d$b;->b()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/e/e/d$b;ILcom/applovin/exoplayer2/e/i;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const-string p2, "V_VP9"

    .line 1298
    iget-object p1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->b:Ljava/lang/String;

    .line 1299
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1300
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->t:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/l/y;->a(I)V

    .line 1301
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->t:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2, p4}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    goto :goto_0

    .line 1304
    :cond_0
    invoke-interface {p3, p4}, Lcom/applovin/exoplayer2/e/i;->b(I)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/e/e/d$b;Lcom/applovin/exoplayer2/e/i;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1285
    invoke-static {p1}, Lcom/applovin/exoplayer2/e/e/d$b;->b(Lcom/applovin/exoplayer2/e/e/d$b;)I

    move-result v0

    const v1, 0x64767643

    if-eq v0, v1, :cond_1

    .line 1286
    invoke-static {p1}, Lcom/applovin/exoplayer2/e/e/d$b;->b(Lcom/applovin/exoplayer2/e/e/d$b;)I

    move-result v0

    const v1, 0x64766343

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1291
    :cond_0
    invoke-interface {p2, p3}, Lcom/applovin/exoplayer2/e/i;->b(I)V

    goto :goto_1

    .line 1287
    :cond_1
    :goto_0
    new-array v0, p3, [B

    iput-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->M:[B

    .line 1288
    iget-object p1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->M:[B

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lcom/applovin/exoplayer2/e/i;->b([BII)V

    :goto_1
    return-void
.end method

.method public final a(Lcom/applovin/exoplayer2/e/j;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->ag:Lcom/applovin/exoplayer2/e/j;

    return-void
.end method

.method public final a(Lcom/applovin/exoplayer2/e/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    new-instance v0, Lcom/applovin/exoplayer2/e/e/e;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/e/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/e/e/e;->a(Lcom/applovin/exoplayer2/e/i;)Z

    move-result p1

    return p1
.end method

.method protected b(I)Z
    .locals 1

    const v0, 0x1549a966

    if-eq p1, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method protected c(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    .line 683
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->g()V

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_f

    const/16 v0, 0xae

    const/4 v2, 0x0

    if-eq p1, v0, :cond_c

    const/16 v0, 0x4dbb

    const v3, 0x1c53bb6b

    if-eq p1, v0, :cond_a

    const/16 v0, 0x6240

    const/4 v4, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_6

    const v0, 0x1549a966

    if-eq p1, v0, :cond_4

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_0

    goto/16 :goto_2

    .line 704
    :cond_0
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/e/d;->B:Z

    if-nez p1, :cond_1

    .line 705
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->ag:Lcom/applovin/exoplayer2/e/j;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->I:Lcom/applovin/exoplayer2/l/r;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->J:Lcom/applovin/exoplayer2/l/r;

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/l/r;Lcom/applovin/exoplayer2/l/r;)Lcom/applovin/exoplayer2/e/v;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    .line 706
    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/e/d;->B:Z

    .line 710
    :cond_1
    iput-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->I:Lcom/applovin/exoplayer2/l/r;

    .line 711
    iput-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->J:Lcom/applovin/exoplayer2/l/r;

    goto/16 :goto_2

    .line 773
    :cond_2
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->i:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 777
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->ag:Lcom/applovin/exoplayer2/e/j;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/j;->a()V

    goto/16 :goto_2

    :cond_3
    const-string p1, "No valid tracks were found"

    .line 774
    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    .line 686
    :cond_4
    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->x:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_5

    const-wide/32 v0, 0xf4240

    .line 688
    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->x:J

    .line 690
    :cond_5
    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->y:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_14

    .line 691
    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->z:J

    goto/16 :goto_2

    .line 753
    :cond_6
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->d(I)V

    .line 754
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->g:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->h:[B

    if-nez p1, :cond_7

    goto/16 :goto_2

    :cond_7
    const-string p1, "Combining encryption and compression is not supported"

    .line 755
    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    .line 740
    :cond_8
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->d(I)V

    .line 741
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->g:Z

    if-eqz p1, :cond_14

    .line 742
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->i:Lcom/applovin/exoplayer2/e/x$a;

    if-eqz p1, :cond_9

    .line 746
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    new-instance v0, Lcom/applovin/exoplayer2/d/e;

    new-array v2, v4, [Lcom/applovin/exoplayer2/d/e$a;

    new-instance v3, Lcom/applovin/exoplayer2/d/e$a;

    sget-object v4, Lcom/applovin/exoplayer2/h;->a:Ljava/util/UUID;

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    iget-object v5, v5, Lcom/applovin/exoplayer2/e/e/d$b;->i:Lcom/applovin/exoplayer2/e/x$a;

    iget-object v5, v5, Lcom/applovin/exoplayer2/e/x$a;->b:[B

    const-string v6, "video/webm"

    invoke-direct {v3, v4, v6, v5}, Lcom/applovin/exoplayer2/d/e$a;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/applovin/exoplayer2/d/e;-><init>([Lcom/applovin/exoplayer2/d/e$a;)V

    iput-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->k:Lcom/applovin/exoplayer2/d/e;

    goto/16 :goto_2

    :cond_9
    const-string p1, "Encrypted Track found but ContentEncKeyID was not found"

    .line 743
    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    .line 695
    :cond_a
    iget p1, p0, Lcom/applovin/exoplayer2/e/e/d;->C:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->D:J

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_b

    if-ne p1, v3, :cond_14

    .line 700
    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->F:J

    goto/16 :goto_2

    :cond_b
    const-string p1, "Mandatory element SeekID or SeekPosition not found"

    .line 696
    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    .line 760
    :cond_c
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/e/d$b;

    .line 761
    iget-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 765
    iget-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/e/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 766
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->ag:Lcom/applovin/exoplayer2/e/j;

    iget v1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/applovin/exoplayer2/e/e/d$b;->a(Lcom/applovin/exoplayer2/e/j;I)V

    .line 767
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->i:Landroid/util/SparseArray;

    iget v1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 770
    :cond_d
    iput-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->A:Lcom/applovin/exoplayer2/e/e/d$b;

    goto :goto_2

    :cond_e
    const-string p1, "CodecId is missing in TrackEntry element"

    .line 762
    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    .line 714
    :cond_f
    iget p1, p0, Lcom/applovin/exoplayer2/e/e/d;->M:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    return-void

    :cond_10
    move p1, v1

    move v0, p1

    .line 720
    :goto_0
    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d;->Q:I

    if-ge p1, v2, :cond_11

    .line 721
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    aget v2, v2, p1

    add-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 723
    :cond_11
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->i:Landroid/util/SparseArray;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d;->S:I

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/e/d$b;

    .line 724
    invoke-static {p1}, Lcom/applovin/exoplayer2/e/e/d$b;->a(Lcom/applovin/exoplayer2/e/e/d$b;)V

    move v9, v1

    .line 725
    :goto_1
    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d;->Q:I

    if-ge v9, v2, :cond_13

    .line 726
    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->N:J

    iget v4, p1, Lcom/applovin/exoplayer2/e/e/d$b;->e:I

    mul-int/2addr v4, v9

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 727
    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d;->U:I

    if-nez v9, :cond_12

    .line 728
    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/e/d;->W:Z

    if-nez v3, :cond_12

    or-int/lit8 v2, v2, 0x1

    :cond_12
    move v6, v2

    .line 733
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->R:[I

    aget v7, v2, v9

    sub-int/2addr v0, v7

    move-object v2, p0

    move-object v3, p1

    move v8, v0

    .line 735
    invoke-direct/range {v2 .. v8}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/e/d$b;JIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 737
    :cond_13
    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->M:I

    :cond_14
    :goto_2
    return-void
.end method
