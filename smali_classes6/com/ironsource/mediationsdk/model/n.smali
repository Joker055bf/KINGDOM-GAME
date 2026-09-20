.class public final Lcom/ironsource/mediationsdk/model/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/model/n$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Lcom/ironsource/mediationsdk/model/o;

.field public e:I

.field public f:I


# direct methods
.method private constructor <init>(ZZZLcom/ironsource/mediationsdk/model/o;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/n;->a:Z

    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/model/n;->b:Z

    iput-boolean p3, p0, Lcom/ironsource/mediationsdk/model/n;->c:Z

    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/n;->d:Lcom/ironsource/mediationsdk/model/o;

    iput p5, p0, Lcom/ironsource/mediationsdk/model/n;->e:I

    iput p6, p0, Lcom/ironsource/mediationsdk/model/n;->f:I

    return-void
.end method

.method synthetic constructor <init>(ZZZLcom/ironsource/mediationsdk/model/o;IIB)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ironsource/mediationsdk/model/n;-><init>(ZZZLcom/ironsource/mediationsdk/model/o;II)V

    return-void
.end method
