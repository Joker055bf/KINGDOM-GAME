.class public final Lcom/ironsource/mediationsdk/model/j;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/ironsource/mediationsdk/model/r;

.field public b:Lcom/ironsource/mediationsdk/model/k;

.field public c:Lcom/ironsource/mediationsdk/model/l;

.field public d:Lcom/ironsource/mediationsdk/model/h;

.field public e:Lcom/ironsource/mediationsdk/model/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/r;Lcom/ironsource/mediationsdk/model/k;Lcom/ironsource/mediationsdk/model/l;Lcom/ironsource/mediationsdk/model/h;Lcom/ironsource/mediationsdk/model/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/j;->a:Lcom/ironsource/mediationsdk/model/r;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/j;->b:Lcom/ironsource/mediationsdk/model/k;

    :cond_1
    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/j;->c:Lcom/ironsource/mediationsdk/model/l;

    :cond_2
    if-eqz p4, :cond_3

    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/j;->d:Lcom/ironsource/mediationsdk/model/h;

    :cond_3
    iput-object p5, p0, Lcom/ironsource/mediationsdk/model/j;->e:Lcom/ironsource/mediationsdk/model/c;

    return-void
.end method
