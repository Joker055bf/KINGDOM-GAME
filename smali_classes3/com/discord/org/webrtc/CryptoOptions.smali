.class public final Lcom/discord/org/webrtc/CryptoOptions;
.super Ljava/lang/Object;
.source "CryptoOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/CryptoOptions$Srtp;,
        Lcom/discord/org/webrtc/CryptoOptions$SFrame;,
        Lcom/discord/org/webrtc/CryptoOptions$Builder;
    }
.end annotation


# instance fields
.field private final sframe:Lcom/discord/org/webrtc/CryptoOptions$SFrame;

.field private final srtp:Lcom/discord/org/webrtc/CryptoOptions$Srtp;


# direct methods
.method private constructor <init>(ZZZZ)V
    .locals 7

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v6, Lcom/discord/org/webrtc/CryptoOptions$Srtp;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/discord/org/webrtc/CryptoOptions$Srtp;-><init>(Lcom/discord/org/webrtc/CryptoOptions;ZZZLcom/discord/org/webrtc/CryptoOptions$Srtp-IA;)V

    iput-object v6, p0, Lcom/discord/org/webrtc/CryptoOptions;->srtp:Lcom/discord/org/webrtc/CryptoOptions$Srtp;

    .line 94
    new-instance p1, Lcom/discord/org/webrtc/CryptoOptions$SFrame;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p4, p2}, Lcom/discord/org/webrtc/CryptoOptions$SFrame;-><init>(Lcom/discord/org/webrtc/CryptoOptions;ZLcom/discord/org/webrtc/CryptoOptions$SFrame-IA;)V

    iput-object p1, p0, Lcom/discord/org/webrtc/CryptoOptions;->sframe:Lcom/discord/org/webrtc/CryptoOptions$SFrame;

    return-void
.end method

.method synthetic constructor <init>(ZZZZLcom/discord/org/webrtc/CryptoOptions-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/discord/org/webrtc/CryptoOptions;-><init>(ZZZZ)V

    return-void
.end method

.method public static builder()Lcom/discord/org/webrtc/CryptoOptions$Builder;
    .locals 2

    .line 98
    new-instance v0, Lcom/discord/org/webrtc/CryptoOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/discord/org/webrtc/CryptoOptions$Builder;-><init>(Lcom/discord/org/webrtc/CryptoOptions$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public getSFrame()Lcom/discord/org/webrtc/CryptoOptions$SFrame;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/discord/org/webrtc/CryptoOptions;->sframe:Lcom/discord/org/webrtc/CryptoOptions$SFrame;

    return-object v0
.end method

.method public getSrtp()Lcom/discord/org/webrtc/CryptoOptions$Srtp;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/discord/org/webrtc/CryptoOptions;->srtp:Lcom/discord/org/webrtc/CryptoOptions$Srtp;

    return-object v0
.end method
