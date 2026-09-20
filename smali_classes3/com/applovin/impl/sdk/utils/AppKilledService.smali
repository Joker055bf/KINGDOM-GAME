.class public Lcom/applovin/impl/sdk/utils/AppKilledService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final ACTION_APP_KILLED:Ljava/lang/String; = "com.applovin.app_killed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 39
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.applovin.app_killed"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcast(Landroid/content/Intent;Ljava/util/Map;)Z

    .line 41
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/AppKilledService;->stopSelf()V

    return-void
.end method
