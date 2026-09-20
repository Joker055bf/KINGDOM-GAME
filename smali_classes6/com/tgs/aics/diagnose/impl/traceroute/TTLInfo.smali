.class Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;
.super Ljava/lang/Object;
.source "TTLInfo.java"


# instance fields
.field private pingInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ttl:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPingInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;->pingInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;->ttl:I

    return v0
.end method

.method public setPingInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/impl/traceroute/PingInfo;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;->pingInfoList:Ljava/util/List;

    return-void
.end method

.method public setTtl(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/traceroute/TTLInfo;->ttl:I

    return-void
.end method
