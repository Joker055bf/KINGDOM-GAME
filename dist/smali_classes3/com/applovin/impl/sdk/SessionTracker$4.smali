.class Lcom/applovin/impl/sdk/SessionTracker$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/SessionTracker;-><init>(Lcom/applovin/impl/sdk/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/applovin/impl/sdk/SessionTracker;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/SessionTracker;Landroid/app/Application;Landroid/content/Intent;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/applovin/impl/sdk/SessionTracker$4;->c:Lcom/applovin/impl/sdk/SessionTracker;

    iput-object p2, p0, Lcom/applovin/impl/sdk/SessionTracker$4;->a:Landroid/app/Application;

    iput-object p3, p0, Lcom/applovin/impl/sdk/SessionTracker$4;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object p1, p0, Lcom/applovin/impl/sdk/SessionTracker$4;->a:Landroid/app/Application;

    iget-object p2, p0, Lcom/applovin/impl/sdk/SessionTracker$4;->b:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    .line 134
    invoke-static {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    return-void
.end method
