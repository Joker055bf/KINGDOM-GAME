.class Lcom/discord/org/webrtc/NetworkMonitor$1;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Lcom/discord/org/webrtc/NetworkChangeDetectorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/NetworkMonitor;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitor$1;->this$0:Lcom/discord/org/webrtc/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)Lcom/discord/org/webrtc/NetworkChangeDetector;
    .locals 1

    .line 52
    new-instance v0, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;

    invoke-direct {v0, p1, p2}, Lcom/discord/org/webrtc/NetworkMonitorAutoDetect;-><init>(Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)V

    return-object v0
.end method
