.class public Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScalingSettings"
.end annotation


# static fields
.field public static final OFF:Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;


# instance fields
.field public final high:Ljava/lang/Integer;

.field public final low:Ljava/lang/Integer;

.field public final on:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;

    invoke-direct {v0}, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;-><init>()V

    sput-object v0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->OFF:Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->on:Z

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->low:Ljava/lang/Integer;

    .line 148
    iput-object v0, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->high:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->on:Z

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->low:Ljava/lang/Integer;

    .line 142
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->high:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-boolean p1, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->on:Z

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->low:Ljava/lang/Integer;

    .line 163
    iput-object p1, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->high:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-boolean p1, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->on:Z

    .line 176
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->low:Ljava/lang/Integer;

    .line 177
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->high:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 182
    iget-boolean v0, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->on:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->low:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->high:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "OFF"

    :goto_0
    return-object v0
.end method
