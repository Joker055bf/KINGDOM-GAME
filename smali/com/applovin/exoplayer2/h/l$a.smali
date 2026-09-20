.class final Lcom/applovin/exoplayer2/h/l$a;
.super Lcom/applovin/exoplayer2/h/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/h/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final d:Ljava/lang/Object;


# instance fields
.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 253
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/h/l$a;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/h;-><init>(Lcom/applovin/exoplayer2/ba;)V

    .line 290
    iput-object p2, p0, Lcom/applovin/exoplayer2/h/l$a;->e:Ljava/lang/Object;

    .line 291
    iput-object p3, p0, Lcom/applovin/exoplayer2/h/l$a;->f:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/applovin/exoplayer2/ab;)Lcom/applovin/exoplayer2/h/l$a;
    .locals 3

    .line 264
    new-instance v0, Lcom/applovin/exoplayer2/h/l$a;

    new-instance v1, Lcom/applovin/exoplayer2/h/l$b;

    invoke-direct {v1, p0}, Lcom/applovin/exoplayer2/h/l$b;-><init>(Lcom/applovin/exoplayer2/ab;)V

    sget-object p0, Lcom/applovin/exoplayer2/ba$c;->a:Ljava/lang/Object;

    sget-object v2, Lcom/applovin/exoplayer2/h/l$a;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lcom/applovin/exoplayer2/h/l$a;-><init>(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;Ljava/lang/Object;)Lcom/applovin/exoplayer2/h/l$a;
    .locals 1

    .line 282
    new-instance v0, Lcom/applovin/exoplayer2/h/l$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/exoplayer2/h/l$a;-><init>(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/h/l$a;)Ljava/lang/Object;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/applovin/exoplayer2/h/l$a;->f:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l$a;->c:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    .line 320
    iget-object p1, p2, Lcom/applovin/exoplayer2/ba$a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l$a;->f:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 321
    sget-object p1, Lcom/applovin/exoplayer2/h/l$a;->d:Ljava/lang/Object;

    iput-object p1, p2, Lcom/applovin/exoplayer2/ba$a;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public a(ILcom/applovin/exoplayer2/ba$c;J)Lcom/applovin/exoplayer2/ba$c;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l$a;->c:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;J)Lcom/applovin/exoplayer2/ba$c;

    .line 311
    iget-object p1, p2, Lcom/applovin/exoplayer2/ba$c;->b:Ljava/lang/Object;

    iget-object p3, p0, Lcom/applovin/exoplayer2/h/l$a;->e:Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 312
    sget-object p1, Lcom/applovin/exoplayer2/ba$c;->a:Ljava/lang/Object;

    iput-object p1, p2, Lcom/applovin/exoplayer2/ba$c;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public a(Lcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/h/l$a;
    .locals 3

    .line 300
    new-instance v0, Lcom/applovin/exoplayer2/h/l$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/l$a;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/l$a;->f:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/exoplayer2/h/l$a;-><init>(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l$a;->c:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ba;->a(I)Ljava/lang/Object;

    move-result-object p1

    .line 337
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l$a;->f:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/applovin/exoplayer2/h/l$a;->d:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public c(Ljava/lang/Object;)I
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/l$a;->c:Lcom/applovin/exoplayer2/ba;

    .line 329
    sget-object v1, Lcom/applovin/exoplayer2/h/l$a;->d:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/l$a;->f:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object p1, v1

    .line 328
    :cond_0
    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
