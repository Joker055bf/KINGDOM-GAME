.class public Lcom/applovin/impl/mediation/nativeAds/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/utils/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/utils/m<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/applovin/mediation/MaxAd;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/applovin/impl/sdk/utils/m;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/utils/m;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    .line 25
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->b:Ljava/util/TreeSet;

    .line 28
    invoke-static {}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->c:Ljava/util/Map;

    .line 36
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->a(Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;)V

    return-void
.end method

.method private a(IZ)I
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/utils/m;->d(Ljava/lang/Comparable;)I

    move-result v0

    if-nez p2, :cond_0

    add-int/2addr p1, v0

    .line 248
    :goto_0
    iget-object p2, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/utils/m;->size()I

    move-result p2

    if-ge v0, p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/utils/m;->a(I)Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lt p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private a(Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;)V
    .locals 4

    .line 41
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;->hasValidPositioning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MaxAdPlacerData"

    const-string v0, "No positioning info was provided with ad placer settings. You must set at least (1) one or more fixed positions or (2) a repeating interval greater than or equal to 2 for the ad placer to determine where to position ads."

    .line 43
    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;->getFixedPositions()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/utils/m;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;->isRepeatingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;->getRepeatingInterval()I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/m;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/utils/m;->a(Ljava/lang/Comparable;)Z

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/m;->a()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    add-int/2addr v1, v0

    .line 63
    iget-object v2, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/utils/m;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacerSettings;->getMaxAdCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 65
    iget-object v2, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/utils/m;->a(Ljava/lang/Comparable;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(II)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/mediation/MaxAd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->b:Ljava/util/TreeSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object p2, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object p2, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->b:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 90
    iget v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v2, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->e:I

    if-ne v2, v1, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    :goto_0
    iget v2, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->e:I

    if-gt v0, v2, :cond_2

    .line 98
    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/nativeAds/a/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/nativeAds/a/a;->b(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public a(II)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->d:I

    .line 122
    iput p2, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->e:I

    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxAd;I)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object p1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->b:Ljava/util/TreeSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 145
    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->b:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/utils/m;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->b:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public b(II)V
    .locals 0

    .line 220
    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->i(I)V

    .line 221
    invoke-virtual {p0, p2}, Lcom/applovin/impl/mediation/nativeAds/a/a;->h(I)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->b:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(I)Lcom/applovin/mediation/MaxAd;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/mediation/MaxAd;

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    return-void
.end method

.method public d(I)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->b:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public e(I)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 160
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/mediation/nativeAds/a/a;->a(IZ)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public f(I)I
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/mediation/nativeAds/a/a;->a(IZ)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public g(I)I
    .locals 1

    .line 172
    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/mediation/nativeAds/a/a;->a(IZ)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public h(I)V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/utils/m;->c(Ljava/lang/Comparable;)I

    move-result p1

    .line 183
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/m;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/utils/m;->a(I)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 186
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 188
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/applovin/impl/mediation/nativeAds/a/a;->c(II)V

    .line 189
    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/utils/m;->a(ILjava/lang/Comparable;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/utils/m;->c(Ljava/lang/Comparable;)I

    move-result v0

    .line 200
    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->b:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 204
    iget-object p1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/utils/m;->b(I)Ljava/lang/Comparable;

    .line 208
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/m;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/utils/m;->a(I)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 211
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/applovin/impl/mediation/nativeAds/a/a;->c(II)V

    .line 214
    iget-object p1, p0, Lcom/applovin/impl/mediation/nativeAds/a/a;->a:Lcom/applovin/impl/sdk/utils/m;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/m;->a(ILjava/lang/Comparable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
