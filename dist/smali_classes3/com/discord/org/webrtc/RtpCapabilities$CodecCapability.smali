.class public Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;
.super Ljava/lang/Object;
.source "RtpCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/RtpCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecCapability"
.end annotation


# instance fields
.field public clockRate:Ljava/lang/Integer;

.field public kind:Lcom/discord/org/webrtc/MediaStreamTrack$MediaType;

.field public mimeType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public numChannels:Ljava/lang/Integer;

.field public parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public preferredPayloadType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/discord/org/webrtc/MediaStreamTrack$MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/discord/org/webrtc/MediaStreamTrack$MediaType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;->preferredPayloadType:I

    .line 40
    iput-object p2, p0, Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;->name:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;->kind:Lcom/discord/org/webrtc/MediaStreamTrack$MediaType;

    .line 42
    iput-object p4, p0, Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;->clockRate:Ljava/lang/Integer;

    .line 43
    iput-object p5, p0, Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;->numChannels:Ljava/lang/Integer;

    .line 44
    iput-object p7, p0, Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;->parameters:Ljava/util/Map;

    .line 45
    iput-object p6, p0, Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getClockRate()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;->clockRate:Ljava/lang/Integer;

    return-object v0
.end method

.method getKind()Lcom/discord/org/webrtc/MediaStreamTrack$MediaType;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;->kind:Lcom/discord/org/webrtc/MediaStreamTrack$MediaType;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;->name:Ljava/lang/String;

    return-object v0
.end method

.method getNumChannels()Ljava/lang/Integer;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;->numChannels:Ljava/lang/Integer;

    return-object v0
.end method

.method getParameters()Ljava/util/Map;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method getPreferredPayloadType()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/discord/org/webrtc/RtpCapabilities$CodecCapability;->preferredPayloadType:I

    return v0
.end method
