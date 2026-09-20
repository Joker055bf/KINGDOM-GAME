.class public final Lcom/applovin/exoplayer2/j/c$c;
.super Lcom/applovin/exoplayer2/j/i;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/applovin/exoplayer2/j/c$c;

.field public static final b:Lcom/applovin/exoplayer2/j/c$c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final n:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/j/c$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final O:Landroid/util/SparseArray;
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

.field private final P:Landroid/util/SparseBooleanArray;

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z


# direct methods
.method public static synthetic $r8$lambda$szfW1-C-Ed18AggPwCRcowvVwdM(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$c;
    .locals 0

    invoke-static {p0}, Lcom/applovin/exoplayer2/j/c$c;->a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$c;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 872
    new-instance v0, Lcom/applovin/exoplayer2/j/c$d;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/c$d;-><init>()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/j/c$d;->a()Lcom/applovin/exoplayer2/j/c$c;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/j/c$c;->a:Lcom/applovin/exoplayer2/j/c$c;

    .line 877
    sput-object v0, Lcom/applovin/exoplayer2/j/c$c;->b:Lcom/applovin/exoplayer2/j/c$c;

    .line 1165
    new-instance v0, Lcom/applovin/exoplayer2/j/c$c$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/j/c$c$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/j/c$c;->n:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method private constructor <init>(Lcom/applovin/exoplayer2/j/c$d;)V
    .locals 1

    .line 958
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/i;-><init>(Lcom/applovin/exoplayer2/j/i$a;)V

    .line 960
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->a(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->d:Z

    .line 961
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->b(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->e:Z

    .line 962
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->c(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->f:Z

    .line 964
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->d(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->g:Z

    .line 965
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->e(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->h:Z

    .line 966
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->f(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->i:Z

    .line 967
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->g(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->j:Z

    .line 969
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->h(Lcom/applovin/exoplayer2/j/c$d;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/j/c$c;->c:I

    .line 971
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->i(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->k:Z

    .line 972
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->j(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->l:Z

    .line 973
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->k(Lcom/applovin/exoplayer2/j/c$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$c;->m:Z

    .line 975
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->l(Lcom/applovin/exoplayer2/j/c$d;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/c$c;->O:Landroid/util/SparseArray;

    .line 976
    invoke-static {p1}, Lcom/applovin/exoplayer2/j/c$d;->m(Lcom/applovin/exoplayer2/j/c$d;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/c$c;->P:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/j/c$d;Lcom/applovin/exoplayer2/j/c$1;)V
    .locals 0

    .line 853
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/j/c$c;-><init>(Lcom/applovin/exoplayer2/j/c$d;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/applovin/exoplayer2/j/c$c;
    .locals 1

    .line 887
    new-instance v0, Lcom/applovin/exoplayer2/j/c$d;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/j/c$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/j/c$d;->a()Lcom/applovin/exoplayer2/j/c$c;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/j/c$c;
    .locals 2

    .line 1166
    new-instance v0, Lcom/applovin/exoplayer2/j/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/j/c$d;-><init>(Landroid/os/Bundle;Lcom/applovin/exoplayer2/j/c$1;)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/j/c$d;->a()Lcom/applovin/exoplayer2/j/c$c;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;>;)Z"
        }
    .end annotation

    .line 1232
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1233
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1237
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 1240
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1239
    invoke-static {v4, v3}, Lcom/applovin/exoplayer2/j/c$c;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z
    .locals 4

    .line 1216
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 1217
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1222
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/applovin/exoplayer2/h/ad;",
            "Lcom/applovin/exoplayer2/j/c$e;",
            ">;)Z"
        }
    .end annotation

    .line 1250
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 1251
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    .line 1255
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/h/ad;

    .line 1257
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic b(I)Ljava/lang/String;
    .locals 0

    .line 853
    invoke-static {p0}, Lcom/applovin/exoplayer2/j/c$c;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 1169
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/applovin/exoplayer2/j/c$c;->P:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final a(ILcom/applovin/exoplayer2/h/ad;)Z
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/applovin/exoplayer2/j/c$c;->O:Landroid/util/SparseArray;

    .line 998
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 999
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(ILcom/applovin/exoplayer2/h/ad;)Lcom/applovin/exoplayer2/j/c$e;
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/applovin/exoplayer2/j/c$c;->O:Landroid/util/SparseArray;

    .line 1012
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 1013
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/j/c$e;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1028
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1031
    :cond_1
    check-cast p1, Lcom/applovin/exoplayer2/j/c$c;

    .line 1032
    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/j/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->d:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->d:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->e:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->e:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->f:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->f:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->g:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->g:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->h:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->h:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->i:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->i:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->j:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->j:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$c;->c:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$c;->c:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->k:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->k:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->l:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->l:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->m:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$c;->m:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/c$c;->P:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/applovin/exoplayer2/j/c$c;->P:Landroid/util/SparseBooleanArray;

    .line 1050
    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/j/c$c;->a(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/exoplayer2/j/c$c;->O:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/applovin/exoplayer2/j/c$c;->O:Landroid/util/SparseArray;

    .line 1051
    invoke-static {v2, p1}, Lcom/applovin/exoplayer2/j/c$c;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1057
    invoke-super {p0}, Lcom/applovin/exoplayer2/j/i;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 1059
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->d:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1060
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->e:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1061
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->f:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1063
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->g:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1064
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->h:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1065
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->i:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1066
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->j:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1068
    iget v2, p0, Lcom/applovin/exoplayer2/j/c$c;->c:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1070
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->k:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1071
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$c;->l:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1072
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$c;->m:Z

    add-int/2addr v0, v1

    return v0
.end method
