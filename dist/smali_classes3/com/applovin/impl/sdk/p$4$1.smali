.class Lcom/applovin/impl/sdk/p$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinCFService$OnCFCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/p$4;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/p$4;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/p$4;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/applovin/impl/sdk/p$4$1;->a:Lcom/applovin/impl/sdk/p$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlowCompleted(Lcom/applovin/sdk/AppLovinCFError;)V
    .locals 1

    .line 727
    iget-object p1, p0, Lcom/applovin/impl/sdk/p$4$1;->a:Lcom/applovin/impl/sdk/p$4;

    iget-object p1, p1, Lcom/applovin/impl/sdk/p$4;->a:Lcom/applovin/impl/sdk/p;

    const-string v0, "Initializing SDK in MAX environment..."

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/p;Ljava/lang/String;)V

    return-void
.end method
