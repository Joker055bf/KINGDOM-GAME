.class public Lcom/discord/org/webrtc/PlatformSoftwareVideoDecoderFactory;
.super Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;
.source "PlatformSoftwareVideoDecoderFactory.java"


# static fields
.field private static final defaultAllowedPredicate:Lcom/discord/org/webrtc/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/discord/org/webrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/discord/org/webrtc/PlatformSoftwareVideoDecoderFactory$1;

    invoke-direct {v0}, Lcom/discord/org/webrtc/PlatformSoftwareVideoDecoderFactory$1;-><init>()V

    sput-object v0, Lcom/discord/org/webrtc/PlatformSoftwareVideoDecoderFactory;->defaultAllowedPredicate:Lcom/discord/org/webrtc/Predicate;

    return-void
.end method

.method public constructor <init>(Lcom/discord/org/webrtc/EglBase$Context;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/discord/org/webrtc/PlatformSoftwareVideoDecoderFactory;->defaultAllowedPredicate:Lcom/discord/org/webrtc/Predicate;

    invoke-direct {p0, p1, v0}, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;-><init>(Lcom/discord/org/webrtc/EglBase$Context;Lcom/discord/org/webrtc/Predicate;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createDecoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoDecoder;
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;->createDecoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoDecoder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;
    .locals 1

    .line 18
    invoke-super {p0}, Lcom/discord/org/webrtc/MediaCodecVideoDecoderFactory;->getSupportedCodecs()[Lcom/discord/org/webrtc/VideoCodecInfo;

    move-result-object v0

    return-object v0
.end method
