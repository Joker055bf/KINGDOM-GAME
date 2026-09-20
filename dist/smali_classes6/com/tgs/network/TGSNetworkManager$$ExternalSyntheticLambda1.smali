.class public final synthetic Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/network/TGSNetworkManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/json/JSONObject;

.field public final synthetic f$4:Lcom/tgs/network/http/Params;

.field public final synthetic f$5:Lcom/tgs/network/OnHttpProgressChange;

.field public final synthetic f$6:Lcom/tgs/network/OnHttpProgressChange;

.field public final synthetic f$7:Lcom/tgs/network/OnHttpTextResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/network/TGSNetworkManager;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/tgs/network/http/Params;Lcom/tgs/network/OnHttpProgressChange;Lcom/tgs/network/OnHttpProgressChange;Lcom/tgs/network/OnHttpTextResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/network/TGSNetworkManager;

    iput-object p2, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$3:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$4:Lcom/tgs/network/http/Params;

    iput-object p6, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$5:Lcom/tgs/network/OnHttpProgressChange;

    iput-object p7, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$6:Lcom/tgs/network/OnHttpProgressChange;

    iput-object p8, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$7:Lcom/tgs/network/OnHttpTextResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/network/TGSNetworkManager;

    iget-object v1, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$3:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$4:Lcom/tgs/network/http/Params;

    iget-object v5, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$5:Lcom/tgs/network/OnHttpProgressChange;

    iget-object v6, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$6:Lcom/tgs/network/OnHttpProgressChange;

    iget-object v7, p0, Lcom/tgs/network/TGSNetworkManager$$ExternalSyntheticLambda1;->f$7:Lcom/tgs/network/OnHttpTextResponse;

    invoke-virtual/range {v0 .. v7}, Lcom/tgs/network/TGSNetworkManager;->lambda$tgsRequestTextHttp$1$com-tgs-network-TGSNetworkManager(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/tgs/network/http/Params;Lcom/tgs/network/OnHttpProgressChange;Lcom/tgs/network/OnHttpProgressChange;Lcom/tgs/network/OnHttpTextResponse;)V

    return-void
.end method
