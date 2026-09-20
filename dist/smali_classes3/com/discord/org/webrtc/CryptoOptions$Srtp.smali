.class public final Lcom/discord/org/webrtc/CryptoOptions$Srtp;
.super Ljava/lang/Object;
.source "CryptoOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/CryptoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Srtp"
.end annotation


# instance fields
.field private final enableAes128Sha1_32CryptoCipher:Z

.field private final enableEncryptedRtpHeaderExtensions:Z

.field private final enableGcmCryptoSuites:Z

.field final synthetic this$0:Lcom/discord/org/webrtc/CryptoOptions;


# direct methods
.method private constructor <init>(Lcom/discord/org/webrtc/CryptoOptions;ZZZ)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/discord/org/webrtc/CryptoOptions$Srtp;->this$0:Lcom/discord/org/webrtc/CryptoOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p2, p0, Lcom/discord/org/webrtc/CryptoOptions$Srtp;->enableGcmCryptoSuites:Z

    .line 46
    iput-boolean p3, p0, Lcom/discord/org/webrtc/CryptoOptions$Srtp;->enableAes128Sha1_32CryptoCipher:Z

    .line 47
    iput-boolean p4, p0, Lcom/discord/org/webrtc/CryptoOptions$Srtp;->enableEncryptedRtpHeaderExtensions:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/discord/org/webrtc/CryptoOptions;ZZZLcom/discord/org/webrtc/CryptoOptions$Srtp-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/discord/org/webrtc/CryptoOptions$Srtp;-><init>(Lcom/discord/org/webrtc/CryptoOptions;ZZZ)V

    return-void
.end method


# virtual methods
.method public getEnableAes128Sha1_32CryptoCipher()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/discord/org/webrtc/CryptoOptions$Srtp;->enableAes128Sha1_32CryptoCipher:Z

    return v0
.end method

.method public getEnableEncryptedRtpHeaderExtensions()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/discord/org/webrtc/CryptoOptions$Srtp;->enableEncryptedRtpHeaderExtensions:Z

    return v0
.end method

.method public getEnableGcmCryptoSuites()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/discord/org/webrtc/CryptoOptions$Srtp;->enableGcmCryptoSuites:Z

    return v0
.end method
