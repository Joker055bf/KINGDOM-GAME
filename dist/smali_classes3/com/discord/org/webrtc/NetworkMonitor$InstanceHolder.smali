.class Lcom/discord/org/webrtc/NetworkMonitor$InstanceHolder;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static final instance:Lcom/discord/org/webrtc/NetworkMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/discord/org/webrtc/NetworkMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/discord/org/webrtc/NetworkMonitor;-><init>(Lcom/discord/org/webrtc/NetworkMonitor-IA;)V

    sput-object v0, Lcom/discord/org/webrtc/NetworkMonitor$InstanceHolder;->instance:Lcom/discord/org/webrtc/NetworkMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
