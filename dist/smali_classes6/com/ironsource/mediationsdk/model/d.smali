.class public final Lcom/ironsource/mediationsdk/model/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/d;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/model/d;->a:Z

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/model/d;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/model/d;->g:Z

    return-void
.end method
