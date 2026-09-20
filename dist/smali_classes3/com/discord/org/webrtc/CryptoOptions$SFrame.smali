.class public final Lcom/discord/org/webrtc/CryptoOptions$SFrame;
.super Ljava/lang/Object;
.source "CryptoOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/CryptoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SFrame"
.end annotation


# instance fields
.field private final requireFrameEncryption:Z

.field final synthetic this$0:Lcom/discord/org/webrtc/CryptoOptions;


# direct methods
.method private constructor <init>(Lcom/discord/org/webrtc/CryptoOptions;Z)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/discord/org/webrtc/CryptoOptions$SFrame;->this$0:Lcom/discord/org/webrtc/CryptoOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean p2, p0, Lcom/discord/org/webrtc/CryptoOptions$SFrame;->requireFrameEncryption:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/discord/org/webrtc/CryptoOptions;ZLcom/discord/org/webrtc/CryptoOptions$SFrame-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/CryptoOptions$SFrame;-><init>(Lcom/discord/org/webrtc/CryptoOptions;Z)V

    return-void
.end method


# virtual methods
.method public getRequireFrameEncryption()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/discord/org/webrtc/CryptoOptions$SFrame;->requireFrameEncryption:Z

    return v0
.end method
