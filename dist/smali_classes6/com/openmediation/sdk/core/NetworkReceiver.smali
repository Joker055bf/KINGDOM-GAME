.class public Lcom/openmediation/sdk/core/NetworkReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/OmManager;->onNetworkChanged()V

    return-void
.end method
