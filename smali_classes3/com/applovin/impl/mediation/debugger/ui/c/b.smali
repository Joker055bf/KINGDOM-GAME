.class public Lcom/applovin/impl/mediation/debugger/ui/c/b;
.super Lcom/applovin/impl/mediation/debugger/ui/d/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/ui/c/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/mediation/debugger/b/c/b;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/text/SpannedString;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/b/c/b;Landroid/content/Context;)V
    .locals 4

    .line 61
    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/ui/d/d;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    .line 65
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->a()Lcom/applovin/impl/mediation/debugger/b/c/b$a;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/mediation/debugger/b/c/b$a;->c:Lcom/applovin/impl/mediation/debugger/b/c/b$a;

    if-ne p2, v0, :cond_0

    .line 67
    new-instance p2, Landroid/text/SpannableString;

    const-string v0, "Tap for more information"

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 69
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->h:Landroid/text/SpannedString;

    goto :goto_0

    .line 73
    :cond_0
    new-instance p2, Landroid/text/SpannedString;

    const-string v0, ""

    invoke-direct {p2, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->h:Landroid/text/SpannedString;

    .line 76
    :goto_0
    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->c()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->b:Ljava/util/List;

    .line 77
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->r()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->d:Ljava/util/List;

    .line 78
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->u()Lcom/applovin/impl/mediation/debugger/b/c/c;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a(Lcom/applovin/impl/mediation/debugger/b/c/c;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->e:Ljava/util/List;

    .line 79
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->s()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->f:Ljava/util/List;

    .line 80
    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->h()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->g:Ljava/util/List;

    .line 82
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->notifyDataSetChanged()V

    return-void
.end method

.method private a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 373
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_check_mark_bordered:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_x_mark:I

    :goto_0
    return p1
.end method

.method private a(Lcom/applovin/impl/mediation/debugger/b/c/b$b;)Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 2

    .line 339
    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->p()Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    .line 340
    sget-object v1, Lcom/applovin/impl/mediation/debugger/b/c/b$b;->e:Lcom/applovin/impl/mediation/debugger/b/c/b$b;

    if-ne p1, v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Landroid/content/Context;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    :cond_0
    const-string v1, "Test Mode"

    .line 345
    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    .line 346
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/c/b$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    .line 347
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/c/b$b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->b(I)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, "Restart Required"

    .line 348
    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->c(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    .line 349
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/c/b$b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->d(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 350
    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Z)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 1

    if-eqz p3, :cond_0

    .line 356
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/d/c$b;->e:Lcom/applovin/impl/mediation/debugger/ui/d/c$b;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/d/c$b;->d:Lcom/applovin/impl/mediation/debugger/ui/d/c$b;

    :goto_0
    invoke-static {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->a(Lcom/applovin/impl/mediation/debugger/ui/d/c$b;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    .line 357
    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->h:Landroid/text/SpannedString;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Landroid/text/SpannedString;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    const-string v0, "Instructions"

    .line 359
    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->c(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    .line 360
    invoke-virtual {p1, p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->d(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    if-eqz p3, :cond_2

    .line 361
    sget p2, Lcom/applovin/sdk/R$drawable;->applovin_ic_check_mark_bordered:I

    goto :goto_2

    :cond_2
    invoke-direct {p0, p4}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->b(Z)I

    move-result p2

    :goto_2
    invoke-virtual {p1, p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(I)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 362
    sget p2, Lcom/applovin/sdk/R$color;->applovin_sdk_checkmarkColor:I

    iget-object p4, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->c:Landroid/content/Context;

    invoke-static {p2, p4}, Lcom/applovin/impl/sdk/utils/g;->a(ILandroid/content/Context;)I

    move-result p2

    goto :goto_3

    :cond_3
    invoke-direct {p0, p4}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->d(Z)I

    move-result p2

    :goto_3
    invoke-virtual {p1, p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->c(I)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    xor-int/lit8 p2, p3, 0x1

    .line 363
    invoke-virtual {p1, p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Z)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    .line 364
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/applovin/impl/mediation/debugger/b/c/c;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/mediation/debugger/b/c/c;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/c/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/c/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/c/c;->b()Z

    move-result p1

    const/4 v3, 0x0

    const-string v4, "Cleartext Traffic"

    .line 263
    invoke-direct {p0, v4, v2, p1, v3}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "For optimal performance, please enable Java 8 support. See: https://dash.applovin.com/documentation/mediation/android/getting-started/integration"

    .line 273
    invoke-static {}, Lcom/applovin/impl/sdk/p;->A()Z

    move-result v2

    const-string v3, "Java 8"

    .line 271
    invoke-direct {p0, v3, p1, v2, v1}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/b/c/d;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/mediation/debugger/b/c/d;

    .line 248
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/d;->a()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/d;->b()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/d;->c()Z

    move-result v1

    const/4 v4, 0x1

    .line 248
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 378
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_x_mark:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_warning:I

    :goto_0
    return p1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/b/c/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 285
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/mediation/debugger/b/c/a;

    .line 287
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/a;->c()Z

    move-result v1

    const/4 v4, 0x1

    .line 287
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private c(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 383
    sget p1, Lcom/applovin/sdk/R$color;->applovin_sdk_checkmarkColor:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/applovin/sdk/R$color;->applovin_sdk_xmarkColor:I

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->c:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/g;->a(ILandroid/content/Context;)I

    move-result p1

    return p1
.end method

.method private c(Ljava/util/List;)Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;"
        }
    .end annotation

    .line 331
    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->p()Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, "Region/VPN Required"

    .line 332
    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, ", "

    .line 333
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->implode(Ljava/util/Collection;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    return-object p1
.end method

.method private c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->d()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->f()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->g()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private d(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 388
    sget p1, Lcom/applovin/sdk/R$color;->applovin_sdk_xmarkColor:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/applovin/sdk/R$color;->applovin_sdk_warningColor:I

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->c:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/g;->a(ILandroid/content/Context;)I

    move-result p1

    return p1
.end method

.method private d()Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 3

    .line 204
    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->p()Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, "SDK"

    .line 205
    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    .line 206
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->d()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(I)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    .line 211
    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/b/c/b;->d()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->c(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->c(I)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    return-object v0
.end method

.method private e(I)Ljava/lang/String;
    .locals 1

    .line 393
    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_SUCCESS:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_UNKNOWN:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    .line 394
    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->DOES_NOT_APPLY:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    .line 395
    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_FAILURE:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_1

    const-string p1, "Failure"

    return-object p1

    .line 403
    :cond_1
    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZING:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_2

    const-string p1, "Initializing..."

    return-object p1

    :cond_2
    const-string p1, "Not Initialized"

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "Initialized"

    return-object p1
.end method

.method private f()Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 3

    .line 219
    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->p()Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, "Adapter"

    .line 220
    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    .line 221
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->e()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(I)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    .line 226
    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/b/c/b;->e()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->c(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->c(I)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    .line 229
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 2

    .line 234
    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->p()Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, "Initialization Status"

    .line 235
    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    .line 236
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->b()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Z)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 301
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/d/c$b;->d:Lcom/applovin/impl/mediation/debugger/ui/d/c$b;

    invoke-static {v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->a(Lcom/applovin/impl/mediation/debugger/ui/d/c$b;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    .line 304
    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/b/c/b;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    .line 303
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->c()Lcom/applovin/impl/mediation/debugger/b/c/b$b;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/mediation/debugger/b/c/b$b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b$b;

    if-ne v1, v2, :cond_1

    return-object v0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->n()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->n()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->c(Ljava/util/List;)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->x()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 318
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->c:Landroid/content/Context;

    .line 320
    invoke-static {v1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->isAgeRestrictedUser(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->isAgeRestrictedUserSet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    const-string v3, "Not an Age Restricted User"

    const-string v4, "Test mode requires Age Restricted User (COPPA) to be set to false."

    .line 318
    invoke-direct {p0, v3, v4, v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_4
    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->c()Lcom/applovin/impl/mediation/debugger/b/c/b$b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a(Lcom/applovin/impl/mediation/debugger/b/c/b$b;)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    .line 117
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->a:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 119
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 121
    :cond_0
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->b:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 123
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 125
    :cond_1
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->c:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 127
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 129
    :cond_2
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->d:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 131
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public a()Lcom/applovin/impl/mediation/debugger/b/c/b;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->a:Lcom/applovin/impl/mediation/debugger/b/c/b;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/mediation/debugger/ui/d/a;)Z
    .locals 2

    .line 101
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->a()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->e:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->b()I

    move-result p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected b(I)Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 1

    .line 142
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->a:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 144
    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "INTEGRATIONS"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 146
    :cond_0
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->b:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 148
    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "PERMISSIONS"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 150
    :cond_1
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->c:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 152
    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "CONFIGURATION"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 154
    :cond_2
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->d:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 156
    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "DEPENDENCIES"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 160
    :cond_3
    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "TEST ADS"

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/applovin/impl/mediation/debugger/ui/c/b;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->b:Ljava/util/List;

    return-void
.end method

.method protected c(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->a:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 169
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->b:Ljava/util/List;

    return-object p1

    .line 171
    :cond_0
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->b:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 173
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->d:Ljava/util/List;

    return-object p1

    .line 175
    :cond_1
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->c:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 177
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->e:Ljava/util/List;

    return-object p1

    .line 179
    :cond_2
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->d:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 181
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->f:Ljava/util/List;

    return-object p1

    .line 185
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/c/b;->g:Ljava/util/List;

    return-object p1
.end method

.method protected e()I
    .locals 1

    .line 111
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->f:Lcom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MediatedNetworkListAdapter{}"

    return-object v0
.end method
