.class public Lcom/applovin/impl/sdk/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/applovin/impl/sdk/s;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/r;->e:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/r;->g:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    .line 56
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->Q()Lcom/applovin/impl/sdk/s;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    .line 59
    invoke-direct {p0}, Lcom/applovin/impl/sdk/r;->i()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/r;->d:Ljava/util/Map;

    .line 60
    invoke-direct {p0}, Lcom/applovin/impl/sdk/r;->k()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/r;->f:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->ei:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/Utils;->isUserAgentCollectionEnabled(Lcom/applovin/impl/sdk/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v0}, Lcom/applovin/impl/sdk/af;->b(Lcom/applovin/impl/sdk/p;)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->ea:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "af"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->k()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->eb:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "font"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 406
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->l()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putFloatIfValid(Ljava/lang/String;Ljava/lang/Float;Ljava/util/Map;)V

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->eh:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "sua"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "http.agent"

    .line 411
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->ed:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "network_restricted"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 417
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method private h()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/sdk/r;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/Utils;->stringifyObjectMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x23

    .line 346
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kb"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 349
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->y()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "gy"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 350
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->x()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "tz_offset"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putDoubleIfValid(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;)V

    .line 351
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->u()Lcom/applovin/impl/sdk/s$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$h;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "tm"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 352
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->A()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "tds"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 355
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->q()Lcom/applovin/impl/sdk/s$j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$j;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country_code"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 356
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->q()Lcom/applovin/impl/sdk/s$j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$j;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 357
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->q()Lcom/applovin/impl/sdk/s$j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$j;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mcc"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 358
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->q()Lcom/applovin/impl/sdk/s$j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$j;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mnc"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 361
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->t()Lcom/applovin/impl/sdk/s$f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$f;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adnsd"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    .line 362
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->t()Lcom/applovin/impl/sdk/s$f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$f;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dx"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    .line 363
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->t()Lcom/applovin/impl/sdk/s$f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$f;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dy"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    .line 364
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->t()Lcom/applovin/impl/sdk/s$f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$f;->f()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "adns"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putFloatIfValid(Ljava/lang/String;Ljava/lang/Float;Ljava/util/Map;)V

    .line 365
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->t()Lcom/applovin/impl/sdk/s$f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$f;->d()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "xdpi"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putFloatIfValid(Ljava/lang/String;Ljava/lang/Float;Ljava/util/Map;)V

    .line 366
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->t()Lcom/applovin/impl/sdk/s$f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$f;->e()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "ydpi"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putFloatIfValid(Ljava/lang/String;Ljava/lang/Float;Ljava/util/Map;)V

    .line 367
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->t()Lcom/applovin/impl/sdk/s$f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$f;->g()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "screen_size_in"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putDoubleIfValid(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;)V

    .line 368
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->w()Ljava/lang/String;

    move-result-object v1

    const-string v2, "orientation_lock"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 370
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "api_level"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    const-string v1, "brand"

    .line 371
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "brand_name"

    .line 372
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "hardware"

    .line 373
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 374
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "model"

    .line 375
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "os"

    .line 376
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "revision"

    .line 377
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 378
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isFireOS(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fireos"

    goto :goto_0

    :cond_0
    const-string v1, "android"

    :goto_0
    const-string v2, "platform"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 379
    invoke-static {}, Lcom/applovin/sdk/AppLovinSdkUtils;->isEmulator()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "sim"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 380
    invoke-static {}, Lcom/applovin/impl/sdk/utils/d;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "aida"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 381
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_tablet"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 382
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isTv(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "tv"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "bt_ms"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 385
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/r;->a(Ljava/util/Map;)V

    return-object v0
.end method

.method private j()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->C()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->isLocationCollectionEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->ex:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x4

    .line 427
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->ah()Lcom/applovin/impl/sdk/x;

    move-result-object v1

    .line 429
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/x;->b()Z

    move-result v2

    const-string v3, "loc_services_enabled"

    .line 431
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    if-nez v2, :cond_2

    return-object v0

    .line 435
    :cond_2
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/x;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "loc_auth"

    invoke-static {v3, v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 437
    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->ah()Lcom/applovin/impl/sdk/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/x;->c()Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    .line 439
    :cond_3
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/x;->d()D

    move-result-wide v2

    iget-object v4, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v5, Lcom/applovin/impl/sdk/c/b;->ez:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/applovin/impl/sdk/utils/Utils;->formatDoubleValue(DI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "loc_lat"

    invoke-static {v3, v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 440
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/x;->e()D

    move-result-wide v1

    iget-object v3, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->ez:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/Utils;->formatDoubleValue(DI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "loc_long"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method private k()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x15

    .line 488
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->B()Lcom/applovin/impl/sdk/s$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_name"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 491
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->B()Lcom/applovin/impl/sdk/s$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 492
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->B()Lcom/applovin/impl/sdk/s$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 493
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->B()Lcom/applovin/impl/sdk/s$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$a;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vz"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 494
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->B()Lcom/applovin/impl/sdk/s$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "installer_name"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 495
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->B()Lcom/applovin/impl/sdk/s$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$a;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_version_code"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    .line 496
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->B()Lcom/applovin/impl/sdk/s$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$a;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "target_sdk"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    .line 497
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->B()Lcom/applovin/impl/sdk/s$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$a;->g()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "first_install_v3_ms"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 498
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->B()Lcom/applovin/impl/sdk/s$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$a;->h()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ia"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 499
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s;->B()Lcom/applovin/impl/sdk/s$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/s$a;->a()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ia_v2"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 501
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/q;->a(Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tg"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "sdk_version"

    .line 502
    sget-object v2, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 503
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->ag()Lcom/applovin/impl/sdk/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/a/f;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "omid_sdk_version"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 504
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->ad:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "api_did"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 505
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/Utils;->isPubInDebugMode(Landroid/content/Context;Lcom/applovin/impl/sdk/p;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "debug"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 506
    invoke-static {}, Lcom/applovin/impl/sdk/p;->A()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "j8"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 507
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->aw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "first_install"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 508
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->u()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "first_install_v2"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 509
    invoke-static {}, Lcom/applovin/impl/sdk/utils/Utils;->getExoPlayerVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "epv"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    .line 510
    invoke-static {}, Lcom/applovin/impl/sdk/p;->z()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "alts_ms"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 4

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/r;->h()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 71
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->fb:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/Utils;->getServerAdjustedUnixTimestampMillis(Lcom/applovin/impl/sdk/p;)J

    move-result-wide v1

    .line 76
    iget-object v3, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/p;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/utils/n;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/util/Map;ZZ)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/r;->a(Z)Ljava/util/Map;

    move-result-object p2

    .line 104
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/r;->d()Ljava/util/Map;

    move-result-object v0

    .line 105
    invoke-direct {p0}, Lcom/applovin/impl/sdk/r;->j()Ljava/util/Map;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->r()Lcom/applovin/impl/sdk/AppLovinTargetingDataImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinTargetingDataImpl;->getAllData()Ljava/util/Map;

    move-result-object v2

    .line 107
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/r;->e()Ljava/util/Map;

    move-result-object v3

    if-eqz p3, :cond_2

    .line 112
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0x13

    .line 113
    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object p3

    const-string v4, "device_info"

    .line 114
    invoke-interface {p3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "app_info"

    .line 115
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p2, "ad_info"

    .line 116
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    const-string p1, "location_info"

    .line 117
    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v2, :cond_7

    const-string/jumbo p1, "targeting_data"

    .line 118
    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 123
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p3

    add-int/lit8 p3, p3, 0xe

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr p3, v4

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    add-int/2addr p3, v5

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    :cond_4
    add-int/2addr p3, v4

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr p3, v4

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr p3, v4

    .line 124
    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object p3

    .line 125
    invoke-interface {p3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 126
    invoke-interface {p3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_5

    .line 127
    invoke-interface {p3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 128
    invoke-interface {p3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 129
    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-interface {p3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 133
    :cond_7
    :goto_1
    invoke-interface {p3, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string p1, "accept"

    const-string p2, "custom_size,launch_app,video"

    .line 135
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "format"

    const-string p2, "json"

    .line 136
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->s()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mediation_provider"

    invoke-static {p2, p1, p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object p2, Lcom/applovin/impl/sdk/c/b;->dT:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "plugin_version"

    invoke-static {p2, p1, p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rid"

    invoke-static {p2, p1, p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object p2, Lcom/applovin/impl/sdk/c/b;->fa:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 147
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->B()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdk_key"

    invoke-static {p2, p1, p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    :cond_8
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object p2, Lcom/applovin/impl/sdk/c/b;->eA:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 152
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->P()Lcom/applovin/impl/sdk/d/g;

    move-result-object p1

    .line 155
    sget-object p2, Lcom/applovin/impl/sdk/d/f;->b:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "li"

    invoke-static {v0, p2, p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 156
    sget-object p2, Lcom/applovin/impl/sdk/d/f;->e:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo v0, "si"

    invoke-static {v0, p2, p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 159
    sget-object p2, Lcom/applovin/impl/sdk/d/f;->c:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "mad"

    invoke-static {v0, p2, p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 160
    sget-object p2, Lcom/applovin/impl/sdk/d/f;->f:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "msad"

    invoke-static {v0, p2, p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 163
    sget-object p2, Lcom/applovin/impl/sdk/d/f;->j:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "pf"

    invoke-static {v0, p2, p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 164
    sget-object p2, Lcom/applovin/impl/sdk/d/f;->q:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "mpf"

    invoke-static {v0, p2, p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 165
    sget-object p2, Lcom/applovin/impl/sdk/d/f;->k:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "gpf"

    invoke-static {v0, p2, p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    .line 167
    sget-object p2, Lcom/applovin/impl/sdk/d/f;->o:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "asoac"

    invoke-static {p2, p1, p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    :cond_9
    return-object p3
.end method

.method public a(Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->d:Ljava/util/Map;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 196
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 203
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->b()Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/s;->e()V

    goto :goto_0

    .line 215
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/utils/Utils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    new-instance v0, Lcom/applovin/impl/sdk/utils/d$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/utils/d$a;-><init>()V

    const-string v2, "inc"

    const/4 v3, 0x1

    .line 220
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->Q()Lcom/applovin/impl/sdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->d()Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->Q()Lcom/applovin/impl/sdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->d()Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v0

    :goto_0
    const-string v2, "huc"

    .line 237
    invoke-static {}, Lcom/applovin/impl/b/a;->b()Lcom/applovin/impl/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/b/a$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    const-string v2, "aru"

    .line 238
    invoke-static {}, Lcom/applovin/impl/b/a;->a()Lcom/applovin/impl/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/b/a$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    const-string v2, "dns"

    .line 239
    invoke-static {}, Lcom/applovin/impl/b/a;->c()Lcom/applovin/impl/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/r;->b:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/b/a$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    const-string v2, "dnt"

    .line 242
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/d$a;->a()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    const-string v2, "dnt_code"

    .line 243
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/d$a;->c()Lcom/applovin/impl/sdk/utils/d$a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/utils/d$a$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "idfa"

    .line 244
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/d$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 247
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->a()Lcom/applovin/impl/sdk/s$b;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "idfv"

    .line 250
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "idfv_scope"

    .line 251
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s$b;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 254
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/s;->c()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/s;->r()Lcom/applovin/impl/sdk/s$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/s$c;->b()Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    const-string/jumbo v0, "volume"

    .line 255
    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    const-string p1, "lpm"

    .line 256
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->p()Lcom/applovin/impl/sdk/s$i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s$i;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    const-string p1, "sb"

    .line 257
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->j()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    const-string p1, "mute_switch"

    .line 258
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->r()Lcom/applovin/impl/sdk/s$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s$c;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    const-string p1, "fs"

    .line 259
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->g()Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    const-string p1, "network"

    .line 260
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 262
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->dX:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "fm"

    .line 264
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->u()Lcom/applovin/impl/sdk/s$h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s$h;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    const-string p1, "lmt"

    .line 265
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->u()Lcom/applovin/impl/sdk/s$h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s$h;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    const-string p1, "lm"

    .line 266
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->u()Lcom/applovin/impl/sdk/s$h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s$h;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 269
    :cond_5
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->dY:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "rat"

    .line 271
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->q()Lcom/applovin/impl/sdk/s$j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s$j;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    .line 274
    :cond_6
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->dV:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string/jumbo p1, "so"

    .line 276
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->r()Lcom/applovin/impl/sdk/s$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s$c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 279
    :cond_7
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->dZ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string/jumbo p1, "vs"

    .line 281
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 284
    :cond_8
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->ej:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "da"

    .line 286
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->h()Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putFloatIfValid(Ljava/lang/String;Ljava/lang/Float;Ljava/util/Map;)V

    .line 289
    :cond_9
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->ek:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "dm"

    .line 291
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->i()Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putFloatIfValid(Ljava/lang/String;Ljava/lang/Float;Ljava/util/Map;)V

    .line 294
    :cond_a
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->dU:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "act"

    .line 296
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->s()Lcom/applovin/impl/sdk/s$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s$d;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    const-string p1, "acm"

    .line 297
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->s()Lcom/applovin/impl/sdk/s$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s$d;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    .line 300
    :cond_b
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->ef:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "adr"

    .line 302
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 305
    :cond_c
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->ec:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "mtl"

    .line 307
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->Y()Lcom/applovin/impl/sdk/SessionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/SessionTracker;->getLastTrimMemoryLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putIntegerIfValid(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    .line 310
    :cond_d
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->ei:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/Utils;->isUserAgentCollectionEnabled(Lcom/applovin/impl/sdk/p;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 313
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-static {p1}, Lcom/applovin/impl/sdk/af;->b(Lcom/applovin/impl/sdk/p;)V

    .line 316
    invoke-static {}, Lcom/applovin/impl/sdk/af;->a()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "ua"

    .line 317
    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 321
    :cond_e
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->ai()Lcom/applovin/impl/sdk/array/ArrayService;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/array/ArrayService;->isAppHubInstalled()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "ah_sdk_version_code"

    .line 324
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/array/ArrayService;->getAppHubVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putLongIfValid(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;)V

    const-string v0, "ah_dd_enabled"

    .line 325
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/array/ArrayService;->isDirectDownloadEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    const-string v0, "ah_random_user_token"

    .line 326
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/array/ArrayService;->getRandomUserToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_f
    return-object v1

    :catchall_0
    move-exception p1

    .line 196
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/r;->a(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->d:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/r;->a(Ljava/util/Map;)V

    .line 340
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->f:Ljava/util/Map;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 459
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "test_ads"

    .line 461
    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/s;->D()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    const-string v0, "muted"

    .line 462
    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->C()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinSdkSettings;->isMuted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putBooleanIfValid(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    const-string/jumbo v0, "user_segment_name"

    .line 463
    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->D()Lcom/applovin/sdk/AppLovinUserSegment;

    move-result-object v2

    invoke-interface {v2}, Lcom/applovin/sdk/AppLovinUserSegment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "IABTCF_TCString"

    .line 464
    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/s;->C()Lcom/applovin/impl/sdk/s$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/s$g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 465
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->C()Lcom/applovin/impl/sdk/s$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s$g;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "IABTCF_gdprApplies"

    .line 466
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->dJ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cuid"

    .line 470
    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->dM:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "compass_random_token"

    .line 475
    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->dO:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "applovin_random_token"

    .line 480
    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v1

    .line 459
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 524
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->ai:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "sc"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 527
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->aj:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "sc2"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 528
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->ak:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "sc3"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 529
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->al:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "server_installed_at"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 530
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/d;->H:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "persisted_data"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->d:Ljava/util/Map;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->f:Ljava/util/Map;

    return-object v0
.end method
