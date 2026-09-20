.class public final Lcom/ironsource/mediationsdk/model/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/ironsource/mediationsdk/model/e;

.field public b:J

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/mediationsdk/model/i;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/ironsource/mediationsdk/model/i;

.field public e:I

.field public f:I

.field public g:Lcom/ironsource/mediationsdk/utils/c;

.field public h:Z

.field public i:Z

.field public j:J

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/mediationsdk/model/e;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/e;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/h;->a:Lcom/ironsource/mediationsdk/model/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/h;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(IJLcom/ironsource/mediationsdk/model/e;ILcom/ironsource/mediationsdk/utils/c;IZZJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/h;->c:Ljava/util/ArrayList;

    iput p1, p0, Lcom/ironsource/mediationsdk/model/h;->k:I

    iput-wide p2, p0, Lcom/ironsource/mediationsdk/model/h;->b:J

    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/h;->a:Lcom/ironsource/mediationsdk/model/e;

    iput p5, p0, Lcom/ironsource/mediationsdk/model/h;->e:I

    iput p7, p0, Lcom/ironsource/mediationsdk/model/h;->f:I

    iput-object p6, p0, Lcom/ironsource/mediationsdk/model/h;->g:Lcom/ironsource/mediationsdk/utils/c;

    iput-boolean p8, p0, Lcom/ironsource/mediationsdk/model/h;->h:Z

    iput-boolean p9, p0, Lcom/ironsource/mediationsdk/model/h;->i:Z

    iput-wide p10, p0, Lcom/ironsource/mediationsdk/model/h;->j:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/mediationsdk/model/i;
    .locals 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/i;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/i;->isDefault()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/h;->d:Lcom/ironsource/mediationsdk/model/i;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/i;
    .locals 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/i;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/i;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
