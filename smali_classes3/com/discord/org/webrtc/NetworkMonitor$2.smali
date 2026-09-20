.class Lcom/discord/org/webrtc/NetworkMonitor$2;
.super Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/org/webrtc/NetworkMonitor;->createNetworkChangeDetector(Landroid/content/Context;Ljava/lang/String;)Lcom/discord/org/webrtc/NetworkChangeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/NetworkMonitor;

.field final synthetic val$fieldTrialsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/NetworkMonitor;Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/discord/org/webrtc/NetworkMonitor$2;->this$0:Lcom/discord/org/webrtc/NetworkMonitor;

    iput-object p2, p0, Lcom/discord/org/webrtc/NetworkMonitor$2;->val$fieldTrialsString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/discord/org/webrtc/NetworkChangeDetector$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public getFieldTrialsString()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor$2;->val$fieldTrialsString:Ljava/lang/String;

    return-object v0
.end method

.method public onConnectionTypeChanged(Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor$2;->this$0:Lcom/discord/org/webrtc/NetworkMonitor;

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/NetworkMonitor;->-$$Nest$mupdateCurrentConnectionType(Lcom/discord/org/webrtc/NetworkMonitor;Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;)V

    return-void
.end method

.method public onNetworkConnect(Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor$2;->this$0:Lcom/discord/org/webrtc/NetworkMonitor;

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/NetworkMonitor;->-$$Nest$mnotifyObserversOfNetworkConnect(Lcom/discord/org/webrtc/NetworkMonitor;Lcom/discord/org/webrtc/NetworkChangeDetector$NetworkInformation;)V

    return-void
.end method

.method public onNetworkDisconnect(J)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor$2;->this$0:Lcom/discord/org/webrtc/NetworkMonitor;

    invoke-static {v0, p1, p2}, Lcom/discord/org/webrtc/NetworkMonitor;->-$$Nest$mnotifyObserversOfNetworkDisconnect(Lcom/discord/org/webrtc/NetworkMonitor;J)V

    return-void
.end method

.method public onNetworkPreference(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;",
            ">;I)V"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/discord/org/webrtc/NetworkMonitor$2;->this$0:Lcom/discord/org/webrtc/NetworkMonitor;

    invoke-static {v0, p1, p2}, Lcom/discord/org/webrtc/NetworkMonitor;->-$$Nest$mnotifyObserversOfNetworkPreference(Lcom/discord/org/webrtc/NetworkMonitor;Ljava/util/List;I)V

    return-void
.end method
