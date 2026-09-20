.class public Lcom/ironsource/sdk/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ironsource/sdk/a/e;->a:I

    iput-object p2, p0, Lcom/ironsource/sdk/a/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/a/e;->c:Ljava/util/Map;

    iput-wide p4, p0, Lcom/ironsource/sdk/a/e;->d:J

    iput-object p6, p0, Lcom/ironsource/sdk/a/e;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/ironsource/sdk/g/c;Lcom/ironsource/sdk/g/d$e;)Lcom/ironsource/sdk/g/d$e;
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/g/c;->d:Ljava/util/Map;

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/g/c;->d:Ljava/util/Map;

    const-string v1, "rewarded"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    iget-object p0, p0, Lcom/ironsource/sdk/g/c;->d:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/ironsource/sdk/g/d$e;->e:Lcom/ironsource/sdk/g/d$e;

    return-object p0

    :cond_3
    sget-object p0, Lcom/ironsource/sdk/g/d$e;->c:Lcom/ironsource/sdk/g/d$e;

    return-object p0
.end method

.method public static a(Lcom/ironsource/sdk/g/c;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/g/c;->d:Ljava/util/Map;

    const-string v2, "inAppBidding"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/ironsource/sdk/g/c;->d:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ironsource/sdk/a/e;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/sdk/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/ironsource/sdk/a/e;->c:Ljava/util/Map;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/ironsource/sdk/a/e;->d:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/sdk/a/e;->e:Ljava/lang/String;

    return-object v0
.end method
