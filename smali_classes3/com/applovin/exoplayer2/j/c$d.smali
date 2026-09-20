.class public final Lcom/applovin/exoplayer2/j/c$d;
.super Lcom/applovin/exoplayer2/j/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private final l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    invoke-direct {p0}, Lcom/applovin/exoplayer2/j/i$a;-><init>()V

    .line 205
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/c$d;->l:Landroid/util/SparseArray;

    .line 206
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/c$d;->m:Landroid/util/SparseBooleanArray;

    .line 207
    invoke-direct {p0}, Lcom/applovin/exoplayer2/j/c$d;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/i$a;-><init>(Landroid/content/Context;)V

    .line 217
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/c$d;->l:Landroid/util/SparseArray;

    .line 218
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/c$d;->m:Landroid/util/SparseBooleanArray;

    .line 219
    invoke-direct {p0}, Lcom/applovin/exoplayer2/j/c$d;->c()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 251
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/i$a;-><init>(Landroid/os/Bundle;)V

    .line 252
    sget-object v0, Lcom/applovin/exoplayer2/j/c$c;->a:Lcom/applovin/exoplayer2/j/c$c;

    const/16 v1, 0x3e8

    .line 256
    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->d:Z

    .line 255
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 254
    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->a(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3e9

    .line 260
    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->e:Z

    .line 259
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 258
    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->b(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3ea

    .line 264
    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->f:Z

    .line 263
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 262
    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->c(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3eb

    .line 269
    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->g:Z

    .line 268
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 267
    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->d(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3ec

    .line 273
    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->h:Z

    .line 272
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 271
    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->e(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3ed

    .line 277
    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->i:Z

    .line 276
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 275
    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->f(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3ee

    .line 281
    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->j:Z

    .line 280
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 279
    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->g(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3ef

    .line 286
    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/applovin/exoplayer2/j/c$c;->c:I

    .line 285
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 284
    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->a(I)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3f0

    .line 291
    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->k:Z

    .line 290
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 289
    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->h(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3f1

    .line 295
    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/j/c$c;->l:Z

    .line 294
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 293
    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/j/c$d;->i(Z)Lcom/applovin/exoplayer2/j/c$d;

    const/16 v1, 0x3f2

    .line 299
    invoke-static {v1}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/j/c$c;->m:Z

    .line 298
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 297
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/j/c$d;->j(Z)Lcom/applovin/exoplayer2/j/c$d;

    .line 302
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/c$d;->l:Landroid/util/SparseArray;

    .line 303
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/c$d;->a(Landroid/os/Bundle;)V

    const/16 v0, 0x3f6

    .line 308
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 306
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/c$d;->a([I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/c$d;->m:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/applovin/exoplayer2/j/c$1;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/c$d;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private a([I)Landroid/util/SparseBooleanArray;
    .locals 5

    if-nez p1, :cond_0

    .line 840
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    return-object p1

    .line 842
    :cond_0
    new-instance v0, Landroid/util/SparseBooleanArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 843
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    const/4 v4, 0x1

    .line 844
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6

    const/16 v0, 0x3f3

    .line 813
    invoke-static {v0}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 814
    sget-object v1, Lcom/applovin/exoplayer2/h/ad;->c:Lcom/applovin/exoplayer2/g$a;

    const/16 v2, 0x3f4

    .line 818
    invoke-static {v2}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 817
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 819
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->g()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v3

    .line 815
    invoke-static {v1, v2, v3}, Lcom/applovin/exoplayer2/l/c;->a(Lcom/applovin/exoplayer2/g$a;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 820
    sget-object v2, Lcom/applovin/exoplayer2/j/c$e;->e:Lcom/applovin/exoplayer2/g$a;

    const/16 v3, 0x3f5

    .line 824
    invoke-static {v3}, Lcom/applovin/exoplayer2/j/c$c;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 823
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 821
    invoke-static {v2, p1, v3}, Lcom/applovin/exoplayer2/l/c;->a(Lcom/applovin/exoplayer2/g$a;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 827
    array-length v2, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 830
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 831
    aget v3, v0, v2

    .line 832
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/exoplayer2/h/ad;

    .line 833
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/applovin/exoplayer2/j/c$e;

    .line 834
    invoke-virtual {p0, v3, v4, v5}, Lcom/applovin/exoplayer2/j/c$d;->a(ILcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/c$e;)Lcom/applovin/exoplayer2/j/c$d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/j/c$d;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/j/c$d;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->b:Z

    return p0
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x1

    .line 782
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$d;->a:Z

    const/4 v1, 0x0

    .line 783
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$d;->b:Z

    .line 784
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$d;->c:Z

    .line 786
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$d;->d:Z

    .line 787
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$d;->e:Z

    .line 788
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$d;->f:Z

    .line 789
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$d;->g:Z

    .line 791
    iput v1, p0, Lcom/applovin/exoplayer2/j/c$d;->h:I

    .line 793
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$d;->i:Z

    .line 794
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$d;->j:Z

    .line 795
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$d;->k:Z

    return-void
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/j/c$d;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/j/c$d;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/j/c$d;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/j/c$d;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->f:Z

    return p0
.end method

.method static synthetic g(Lcom/applovin/exoplayer2/j/c$d;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->g:Z

    return p0
.end method

.method static synthetic h(Lcom/applovin/exoplayer2/j/c$d;)I
    .locals 0

    .line 175
    iget p0, p0, Lcom/applovin/exoplayer2/j/c$d;->h:I

    return p0
.end method

.method static synthetic i(Lcom/applovin/exoplayer2/j/c$d;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->i:Z

    return p0
.end method

.method static synthetic j(Lcom/applovin/exoplayer2/j/c$d;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->j:Z

    return p0
.end method

.method static synthetic k(Lcom/applovin/exoplayer2/j/c$d;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/j/c$d;->k:Z

    return p0
.end method

.method static synthetic l(Lcom/applovin/exoplayer2/j/c$d;)Landroid/util/SparseArray;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/applovin/exoplayer2/j/c$d;->l:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic m(Lcom/applovin/exoplayer2/j/c$d;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/applovin/exoplayer2/j/c$d;->m:Landroid/util/SparseBooleanArray;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/applovin/exoplayer2/j/c$c;
    .locals 2

    .line 777
    new-instance v0, Lcom/applovin/exoplayer2/j/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/j/c$c;-><init>(Lcom/applovin/exoplayer2/j/c$d;Lcom/applovin/exoplayer2/j/c$1;)V

    return-object v0
.end method

.method public a(I)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 592
    iput p1, p0, Lcom/applovin/exoplayer2/j/c$d;->h:I

    return-object p0
.end method

.method public a(IIZ)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 430
    invoke-super {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/j/i$a;->b(IIZ)Lcom/applovin/exoplayer2/j/i$a;

    return-object p0
.end method

.method public final a(ILcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/c$e;)Lcom/applovin/exoplayer2/j/c$d;
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/applovin/exoplayer2/j/c$d;->l:Landroid/util/SparseArray;

    .line 708
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 711
    iget-object v1, p0, Lcom/applovin/exoplayer2/j/c$d;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 713
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 717
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 554
    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/j/i$a;->b(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/i$a;

    return-object p0
.end method

.method public a(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 417
    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/j/i$a;->b(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/j/i$a;

    return-object p0
.end method

.method public a(Z)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 379
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->a:Z

    return-object p0
.end method

.method public b(Z)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 396
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->b:Z

    return-object p0
.end method

.method public synthetic b(IIZ)Lcom/applovin/exoplayer2/j/i$a;
    .locals 0

    .line 175
    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/j/c$d;->a(IIZ)Lcom/applovin/exoplayer2/j/c$d;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/i$a;
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/j/c$d;->a(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/c$d;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/j/i$a;
    .locals 0

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/j/c$d;->a(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/j/c$d;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Lcom/applovin/exoplayer2/j/i;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/j/c$d;->a()Lcom/applovin/exoplayer2/j/c$c;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 410
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->c:Z

    return-object p0
.end method

.method public d(Z)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 488
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->d:Z

    return-object p0
.end method

.method public e(Z)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 503
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->e:Z

    return-object p0
.end method

.method public f(Z)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 518
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->f:Z

    return-object p0
.end method

.method public g(Z)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 533
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->g:Z

    return-object p0
.end method

.method public h(Z)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 630
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->i:Z

    return-object p0
.end method

.method public i(Z)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 642
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->j:Z

    return-object p0
.end method

.method public j(Z)Lcom/applovin/exoplayer2/j/c$d;
    .locals 0

    .line 654
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/j/c$d;->k:Z

    return-object p0
.end method
