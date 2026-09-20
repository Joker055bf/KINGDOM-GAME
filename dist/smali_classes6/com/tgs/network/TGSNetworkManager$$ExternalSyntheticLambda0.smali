.class public final synthetic Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/network/http/Params;


# instance fields
.field public final synthetic f$0:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda0;->f$0:[B

    return-void
.end method


# virtual methods
.method public final toBytes(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda0;->f$0:[B

    invoke-static {v0, p1}, Lcom/tgs/network/TGSNetworkManager;->lambda$tgsRequestTextHttp$0([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
