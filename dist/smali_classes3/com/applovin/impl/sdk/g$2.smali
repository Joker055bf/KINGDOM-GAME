.class Lcom/applovin/impl/sdk/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/g;->onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/g$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/applovin/impl/sdk/g;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/g;Lcom/applovin/impl/sdk/g$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/applovin/impl/sdk/g$2;->d:Lcom/applovin/impl/sdk/g;

    iput-object p2, p0, Lcom/applovin/impl/sdk/g$2;->a:Lcom/applovin/impl/sdk/g$a;

    iput-object p3, p0, Lcom/applovin/impl/sdk/g$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/impl/sdk/g$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/applovin/impl/sdk/g$2;->a:Lcom/applovin/impl/sdk/g$a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/g$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/g$2;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/applovin/impl/sdk/g$a;->onCreativeIdGenerated(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
