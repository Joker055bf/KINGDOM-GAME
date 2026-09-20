.class Lcom/tgs/aics/diagnose/impl/ping/Ping;
.super Ljava/lang/Object;
.source "Ping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;
    }
.end annotation


# static fields
.field public static final PING_HYBRID:I = 0x2

.field public static final PING_JAVA:I = 0x0

.field public static final PING_NATIVE:I = 0x1


# instance fields
.field private address:Ljava/net/InetAddress;

.field private addressString:Ljava/lang/String;

.field private cancelled:Z

.field private delayBetweenScansMillis:I

.field private final pingOptions:Lcom/tgs/aics/diagnose/impl/ping/PingOptions;

.field private times:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->addressString:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->pingOptions:Lcom/tgs/aics/diagnose/impl/ping/PingOptions;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->delayBetweenScansMillis:I

    const/4 v1, 0x1

    .line 32
    iput v1, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->times:I

    .line 33
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->cancelled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/diagnose/impl/ping/Ping;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->resolveAddressString()V

    return-void
.end method

.method static synthetic access$100(Lcom/tgs/aics/diagnose/impl/ping/Ping;)Ljava/net/InetAddress;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->address:Ljava/net/InetAddress;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/diagnose/impl/ping/Ping;)Z
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->cancelled:Z

    return p0
.end method

.method static synthetic access$202(Lcom/tgs/aics/diagnose/impl/ping/Ping;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->cancelled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tgs/aics/diagnose/impl/ping/Ping;)I
    .locals 0

    .line 6
    iget p0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->times:I

    return p0
.end method

.method static synthetic access$400(Lcom/tgs/aics/diagnose/impl/ping/Ping;)Lcom/tgs/aics/diagnose/impl/ping/PingOptions;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->pingOptions:Lcom/tgs/aics/diagnose/impl/ping/PingOptions;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tgs/aics/diagnose/impl/ping/Ping;)I
    .locals 0

    .line 6
    iget p0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->delayBetweenScansMillis:I

    return p0
.end method

.method public static onAddress(Ljava/lang/String;)Lcom/tgs/aics/diagnose/impl/ping/Ping;
    .locals 1

    .line 45
    new-instance v0, Lcom/tgs/aics/diagnose/impl/ping/Ping;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/impl/ping/Ping;-><init>()V

    .line 46
    invoke-direct {v0, p0}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->setAddressString(Ljava/lang/String;)V

    return-object v0
.end method

.method public static onAddress(Ljava/net/InetAddress;)Lcom/tgs/aics/diagnose/impl/ping/Ping;
    .locals 1

    .line 57
    new-instance v0, Lcom/tgs/aics/diagnose/impl/ping/Ping;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/impl/ping/Ping;-><init>()V

    .line 58
    invoke-direct {v0, p0}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->setAddress(Ljava/net/InetAddress;)V

    return-object v0
.end method

.method private resolveAddressString()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->address:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->addressString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 131
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->address:Ljava/net/InetAddress;

    :cond_0
    return-void
.end method

.method private setAddress(Ljava/net/InetAddress;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->address:Ljava/net/InetAddress;

    return-void
.end method

.method private setAddressString(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->addressString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->cancelled:Z

    return-void
.end method

.method public doPing(Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;)Lcom/tgs/aics/diagnose/impl/ping/Ping;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/diagnose/impl/ping/Ping$1;-><init>(Lcom/tgs/aics/diagnose/impl/ping/Ping;Lcom/tgs/aics/diagnose/impl/ping/Ping$PingListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 224
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method public doPing()Lcom/tgs/aics/diagnose/impl/ping/PingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->cancelled:Z

    .line 153
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/ping/Ping;->resolveAddressString()V

    .line 154
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->address:Ljava/net/InetAddress;

    iget-object v1, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->pingOptions:Lcom/tgs/aics/diagnose/impl/ping/PingOptions;

    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/impl/ping/PingTools;->doPing(Ljava/net/InetAddress;Lcom/tgs/aics/diagnose/impl/ping/PingOptions;)Lcom/tgs/aics/diagnose/impl/ping/PingResult;

    move-result-object v0

    return-object v0
.end method

.method public setDelayMillis(I)Lcom/tgs/aics/diagnose/impl/ping/Ping;
    .locals 1

    if-ltz p1, :cond_0

    .line 83
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->delayBetweenScansMillis:I

    return-object p0

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Delay cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimeOutMillis(I)Lcom/tgs/aics/diagnose/impl/ping/Ping;
    .locals 1

    if-ltz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->pingOptions:Lcom/tgs/aics/diagnose/impl/ping/PingOptions;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;->setTimeoutMillis(I)V

    return-object p0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Times cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimeToLive(I)Lcom/tgs/aics/diagnose/impl/ping/Ping;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->pingOptions:Lcom/tgs/aics/diagnose/impl/ping/PingOptions;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/impl/ping/PingOptions;->setTimeToLive(I)V

    return-object p0

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TTL cannot be less than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimes(I)Lcom/tgs/aics/diagnose/impl/ping/Ping;
    .locals 1

    if-ltz p1, :cond_0

    .line 107
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/ping/Ping;->times:I

    return-object p0

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Times cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
